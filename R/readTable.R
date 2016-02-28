########################################################################/**
# @RdocDefault readTable
#
# @title "Reads a file in table format"
#
# @synopsis
#
# \description{
#  @get "title" and creates a data frame from it, with cases corresponding
#  to lines and variables to fields in the file.
#
#  \emph{WARNING: This method is very much in an alpha stage.
#  Expect it to change.}
#
#  This method is an extension to the default @see "utils::read.table"
#  function in \R.  It is possible to specify a column name to column class
#  map such that the column classes are automatically assigned from the
#  column header in the file.
#
#  In addition, it is possible to read any subset of rows.
#  The method is optimized such that only columns and rows that are of
#  interest are parsed and read into \R's memory.  This minimizes memory
#  usage at the same time as it speeds up the reading.
# }
#
# \arguments{
#   \item{file}{A @connection or a filename.  If a filename, the path
#      specified by \code{path} is added to the front of the
#      filename.  Unopened files are opened and closed at the end.}
#   \item{colClasses}{Either a named or an unnamed @character @vector.
#      If unnamed, it specified the column classes just as used by
#      @see "utils::read.table".
#      If it is a named vector, \code{names(colClasses)} are used to match
#      the column names read (this requires that \code{header=TRUE}) and
#      the column classes are set to the corresponding values.
#   }
#   \item{isPatterns}{If @TRUE, the matching of \code{names(colClasses)} to
#      the read column names is done by regular expressions matching.}
#   \item{defColClass}{If the column class map specified by a named
#      \code{colClasses} argument does not match some of the read column
#      names, the column class is by default set to this class. The
#      default is to read the columns in an "as is" way.}
#   \item{header}{If @TRUE, column names are read from the file.}
#   \item{skip}{The number of lines (commented or non-commented) to skip
#      before trying to read the header or alternatively the data table.}
#   \item{nrows}{The number of rows to read of the data table.
#      Ignored if \code{rows} is specified.}
#   \item{rows}{An row index @vector specifying which rows of the table
#      to read, e.g. row one is the row following the header.
#      Non-existing rows are ignored.  Note that rows are returned in
#      the same order they are requested and duplicated rows are also
#      returned.}
#   \item{col.names}{Same as in \code{read.table()}.}
#   \item{check.names}{Same as in \code{read.table()}, but default value
#      is @FALSE here.}
#   \item{path}{If \code{file} is a filename, this path is added to it,
#     otherwise ignored.}
#   \item{...}{Arguments passed to @see "utils::read.table" used internally.}
#   \item{stripQuotes}{If @TRUE, quotes are stripped from values before
#     being parse.
#     This argument is only effective when \code{method=="readLines"}.
#   }
#   \item{method}{If \code{"readLines"}, \code{(readLines())} is used
#     internally to first only read rows of interest, which is then
#     passed to \code{read.table()}.
#     If \code{"intervals"}, contigous intervals are first identified in
#     the rows of interest.  These intervals are the read one by one
#     using \code{read.table()}.
#     The latter methods is faster and especially more memory efficient
#     if the intervals are not too many, where as the former is prefered
#     if many "scattered" rows are to be read.}
#   \item{verbose}{A @logical or a @see "Verbose" object.}
# }
#
# \value{
#   Returns a @data.frame.
# }
#
# @author
#
# \seealso{
#  @see "readTableIndex".
#  @see "utils::read.table".
#  @see "colClasses".
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("readTable", "default", function(file, colClasses=NULL, isPatterns=FALSE, defColClass=NA, header=FALSE, skip=0, nrows=-1, rows=NULL, col.names=NULL, check.names=FALSE, path=NULL, ..., stripQuotes=TRUE, method=c("readLines", "intervals"), verbose=FALSE) {
  # Argument 'file' and 'path':
  if (inherits(file, "connection")) {
  } else if (is.character(file)) {
    pathname <- Arguments$getReadablePathname(file, path=path, mustExist=TRUE);
    file <- file(pathname);
  } else {
    throw("Unknown data type of argument 'file': ", mode(file));
  }

  # Argument 'colClasses':
#  colClasses <- Arguments$getCharacters(colClasses);

  # Argument 'isPatterns':
  isPatterns <- Arguments$getLogical(isPatterns);

  # Argument 'defColClass':
  defColClass <- Arguments$getCharacter(defColClass, asGString=FALSE);

  # Argument 'skip':
  skip <- Arguments$getInteger(skip, range=c(0,Inf));

  # Argument 'nrows':
  nrows <- Arguments$getInteger(nrows);

  # Argument 'rows':
  if (!is.null(rows))
    rows <- Arguments$getIntegers(rows, range=c(1,Inf));

  # Argument 'col.names':
  if (!is.null(col.names))
    col.names <- Arguments$getCharacters(col.names);

  # Argument 'stripQuotes':
  stripQuotes <- Arguments$getLogical(stripQuotes);

  # Argument 'method':
  method <- match.arg(method);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);



  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # If file is not open, open it and close it when done.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!isOpen(file)) {
    open(file, open="r");
    on.exit(close(file), add=TRUE);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Skip lines at the beginning?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (skip > 0) {
    readLines(file, n=skip);
    verbose && cat(verbose, "Skipped the first ", skip, " lines.");
    skip <- 0;
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get the formals of read.table()
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  formals <- formals(read.table);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Read the header
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (header) {
    sep <- list(...)$sep;
    if (is.null(sep))
      sep <- formals$sep;

    quote <- list(...)$quote;
    if (is.null(quote))
      quote <- formals$quote;

    colnames <- scan(file=file, what=character(0), sep=sep, quote=quote, nlines=1, quiet=TRUE);
#    colnames <- readLines(file, n=1);
#    colnames <- unlist(strsplit(colnames, split=split));
    colnames <- trim(colnames);

#    if (!is.null(quote) && nchar(quote) > 0) {
#    }

    names <- paste("'", colnames, "'", sep="");
    verbose && cat(verbose, "Read ", length(colnames), " column names: ",
                                              paste(names, collapse=", "));
  }

  if (!is.null(col.names))
    colnames <- col.names;

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Create colClasses?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  isMap <- !is.null(names(colClasses));
  if (!is.null(colClasses) && isMap) {
    # Should colClasses be found using regular expression
    # patterns or as is?
    if (isPatterns) {
      colClasses2 <- rep(NA, times=length(colnames));
      for (kk in seq_along(colClasses)) {
        pattern <- names(colClasses)[kk];
        colClass <- colClasses[kk];
        # Find matching column names and assign the current column
        # class to those columns.
        incl <- (regexpr(pattern, colnames) != -1);
        colClasses2[incl] <- colClass;
      }
      colClasses <- colClasses2;
    } else {
      colClasses <- colClasses[colnames];
    }

    colClasses[is.na(colClasses)] <- defColClass;

    verbose && cat(verbose, "Column classes: ");
    verbose && print(verbose, colClasses);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Read full data table?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(rows)) {
    verbose && enter(verbose, "Reading the complete data table");
    df <- read.table(file, colClasses=colClasses, header=FALSE,
                     skip=0, nrows=nrows, check.names=check.names,
                     col.names=colnames, ...);
    verbose && str(verbose, df);
    verbose && exit(verbose);

    # Return table
    return(df);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Read only certain rows?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (method == "readLines") {
    # Skip certain lines
    if (skip > 0) {
      readLines(file, n=skip);
      verbose && cat(verbose, "Skipped the first ", skip, " lines.");
    }

    # Read all lines
    verbose && enter(verbose, "Reading lines of interest");
    t <- system.time(
      lines <- readLines(file, n=max(rows))
    );
    verbose && printf(verbose, "Read %d lines in %.2f seconds.\n", length(lines), t[3]);

    # Did we try to read non-existing rows?
    keep <- (rows <= length(lines));
    rows <- rows[keep];
    if (verbose && any(!keep)) {
      verbose && cat(verbose, "Skipped ", sum(!keep), " non-existing rows.");
    }
    keep <- NULL; # Not needed anymore

    # Keep only those of interest
    lines <- lines[rows];

    verbose && cat(verbose, "Kept ", length(lines), " lines.");
    verbose && exit(verbose);

    if (stripQuotes) {
      quote <- list(...)$quote;
      if (is.null(quote))
        quote <- formals$quote;
      if (nchar(quote) > 0) {
        verbose && enter(verbose, "Stripping quotes from all lines: ", quote);
        quotes <- unlist(strsplit(quote, split=""));
        for (kk in seq_along(quotes))
          lines <- gsub(quotes[kk], "", lines, fixed=TRUE);
        verbose && exit(verbose);
      }
    }

    verbose && enter(verbose, "Re-reading the lines as a data table");
    con <- textConnection(lines);
    tryCatch({
      t <- system.time(
        df <- read.table(con, colClasses=colClasses, header=FALSE,
                         skip=skip, nrows=nrows, check.names=check.names,
                         col.names=colnames, ...)
      );
      verbose && printf(verbose, "Read a %dx%d table in %.2f seconds.\n", nrow(df), ncol(df), t[3]);
    }, finally = {
      close(con);
    })
    lines <- NULL; # Not needed anymore
    verbose && exit(verbose);

  } else if (method == "intervals") {
    remap <- TRUE;
    rows2 <- unique(rows);
    if (identical(rows, rows2)) {
      rows2 <- sort(rows2);
      if (identical(rows, rows2))
        remap <- FALSE;
    }

    # Get contiguous intervals of rows indices.
    intervals <- seqToIntervals(rows2);
    rows2 <- NULL; # Not needed anymore

    verbose && cat(verbose, "Reading row intervals: ");
    verbose && print(verbose, intervals);

    nextRow <- 1;

    df <- NULL;
    rownames <- NULL;
    ready <- FALSE;
    for (ii in seq_len(nrow(intervals))) {
      from <- intervals[ii,"from"];
      to <- intervals[ii,"to"];

      verbose && cat(verbose, "Interval [", from, ",", to, "]");

      # Skip to the next row
      skip <- (from - nextRow);

      # Read 'nrows' from there on.
      nrows <- (to-from+1);
      tryCatch({
        dfI <- read.table(file, colClasses=colClasses, header=FALSE,
                          skip=skip, nrows=nrows, check.names=check.names,
                                                   col.names=colnames, ...);
      }, error = function(ex) {
        # Ignore non-existing rows => we're done.
        ready <<- (regexpr("no lines available", ex$message) != -1);
        if (!ready)
          signalCondition(ex);
      })

      if (ready)
        break;

      # Did we read that many rows?
      to <- min(to, from+nrow(dfI)-1);

      # Assign rows names
      rownames(dfI) <- from:to;
      rownames <- c(rownames, from:to);

      if (is.null(df)) {
        df <- dfI;
      } else {
        df <- rbind(df, dfI);
      }

      dfI <- NULL; # Not needed anymore

      nextRow <- to+1;
    }

    # Finally, if 'rows' where not an order sets of unique row numbers,
    # return a table with rows in the same order as the requested ones.
    if (remap) {
      idx <- match(rows, rownames);
      idx <- idx[!is.na(idx)];
      df <- df[idx,];
      rownames <- rownames[idx];
      idx <- NULL; # Not needed anymore
    }
  }

  verbose && str(verbose, df);

  # Return table
  df;
})


############################################################################
# HISTORY:
# 2013-09-10
# o CLEANUP: readTable() no longer looks for read.table() in the 'base'
#   package, where it was in R < 2.5.0, because package now requires
#   R >= 2.5.0.
# 2007-05-10
# o BUG FIX: readTable() tried to access base::read.table() but that was
#   moved to 'utils' as of R v2.5.0.
# 2006-07-28
# o Added more verbose output.
# 2005-11-21
# o BUG FIX: Tried to read the header with a 'sep' set to a regular
#   expression, but only accepts single characters.
# 2005-11-15
# o Now using scan() instead of readLines() to parse header.  This way the
#   header can now also be quoted.
# 2005-11-10
# o BUG FIX: Method was declared static.
# o Updated Rdoc comments.
# 2005-11-02
# o Now row.names=<index> is supported.
# o BUG FIX: 'skip' did not work correctly when 'header=FALSE'.
# 2005-11-01
# o Added a readLines() method too, because reading with intervals is only
#   fast if the number of intervals is not too many.
# o Added Rdoc comments. Cleaned out some non-used arguments.
# o Added support for reading any subset of rows.
# o Added support for regular expression matching too.
# 2005-10-31
# o Created.
############################################################################
