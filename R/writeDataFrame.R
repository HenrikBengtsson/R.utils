########################################################################/**
# @set "class=data.frame"
# @RdocMethod writeDataFrame
# @alias writeDataFrame
#
# @title "Writes a data.frame to tabular text file"
#
# @synopsis
#
# \description{
#  @get "title" with an optional header.
# }
#
# \arguments{
#   \item{data}{A @data.frame.}
#   \item{file}{A @connection or a filename to write to.}
#   \item{path}{The directory where the file will be written.}
#   \item{sep, quote, row.names, col.names, ...}{Additional arguments
#     passed to @see "utils::write.table".}
#   \item{header}{An optional named @list of header rows to be written
#     at the beginning of the file.  If @NULL, no header will be written.}
#   \item{createdBy, createdOn, nbrOfRows}{If non-@NULL, common header
#     rows to be added to the header.}
#   \item{headerPrefix}{A @character string specifying the prefix of each
#     header row.}
#   \item{headerSep}{A @character string specifying the character
#     separating the header name and header values.}
#   \item{append}{If @TRUE, the output is appended to an existing file.}
#   \item{overwrite}{If @TRUE, an existing file is overwritten.}
# }
#
# \value{
#   Returns (invisibly) the pathname to the file written
#   (or the @connection written to).
# }
#
# @author
#
# \seealso{
#  @see "utils::write.table".
#  @see "readTable".
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("writeDataFrame", "data.frame", function(data, file, path=NULL, sep="\t", quote=FALSE, row.names=FALSE, col.names=TRUE, ..., header=list(), createdBy=NULL, createdOn=format(Sys.time(), format="%Y-%m-%d %H:%M:%S %Z"), nbrOfRows=nrow(data), headerPrefix="# ", headerSep=": ", append=FALSE, overwrite=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'file' & 'path':
  if (inherits(file, "connection")) {
    con <- file;
  } else {
    pathname <- Arguments$getWritablePathname(file, path=path,
                                       mustNotExist=(!append && !overwrite));
    con <- NULL;
  }

  # Argument 'header':
  if (!is.null(header)) {
    if (!is.list(header)) {
      throw("Argument 'header' is not a list: ", class(header)[1]);
    }
  }

  # Argument 'headerPrefix':
  headerPrefix <- Arguments$getCharacter(headerPrefix);

  # Argument 'headerSep':
  headerSep <- Arguments$getCharacter(headerSep);

  # Argument 'createdBy':
  if (!is.null(createdBy)) {
    createdBy <- Arguments$getCharacter(createdBy);
  }

  # Argument 'createdOn':
  if (!is.null(createdOn)) {
    createdOn <- Arguments$getCharacter(createdOn);
  }

  # Argument 'nbrOfRows':
  if (!is.null(nbrOfRows)) {
    nbrOfRows <- Arguments$getInteger(nbrOfRows);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Build header
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.null(header)) {
    if (!is.null(createdBy)) {
      header$createdBy <- createdBy;
    }
    if (!is.null(createdOn)) {
      header$createdOn <- createdOn;
    }
    header$nbrOfRows <- nbrOfRows;
    header$nbrOfColumns <- ncol(data);
    header$columnNames <- colnames(data);
    header$columnClasses <- sapply(data, FUN=function(x) class(x)[1L]);
    header <- lapply(header, FUN=paste, collapse=sep);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Write to file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(con)) {
    # Remove existing file?
    if (!append && overwrite && isFile(pathname)) {
      file.remove(pathname);
    }

    # Write to a temporary file (which may be an existing file)
    pathnameT <- pushTemporaryFile(pathname, isFile=isFile(pathname));

    # Open file connection
    open <- ifelse(append, "at", "wt");
    con <- file(pathnameT, open=open);

    on.exit({
      if (!is.null(con)) {
        close(con);
        con <- NULL;
      }
    });
  }

  # Write header
  if (!is.null(header)) {
    bfr <- paste(headerPrefix, names(header), headerSep, header, sep="");
    cat(file=con, bfr, sep="\n");
  }

  # Write data section
  write.table(file=con, data, sep=sep, quote=quote,
              row.names=row.names, col.names=col.names, ...);

  if (inherits(file, "connection")) {
    res <- con;
  } else {
    # Close opened file connection
    close(con);
    con <- NULL;

    # Rename temporary file
    pathname <- popTemporaryFile(pathnameT);

    res <- pathname;
  }

  invisible(res);
}) # writeDataFrame()


#############################################################################
# HISTORY:
# 2012-11-04
# o BUG FIX: The 'columnClasses' header field created by writeDataFrame()
#   would contain "integer" for "factor":s.  Now using class(x)[1] instead
#   of storage.mode(x) to infer column classes.
# o BUG FIX: Despite documented header fields 'createdBy' and 'createdOn'
#   to be ignored if NULL, they did set the corresponding' element in
#   'header' argument to NULL if they were NULL.
# 2011-09-12
# o Added support for writing to a connection.
# o Added Rdoc comments.
# o Added writeDataFrame().  Is really true that I haven't created this
#   method earlier/somewhere else?
# o Created.
#############################################################################
