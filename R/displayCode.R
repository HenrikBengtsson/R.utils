###########################################################################/**
# @RdocDefault displayCode
#
# @title "Displays the contents of a text file with line numbers and more"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{con}{A @connection or a @character string filename.
#     If \code{code} is specified, this argument is ignored.}
#   \item{code}{A @character @vector of code lines to be displayed.}
#   \item{numerate}{If @TRUE, line are numbers, otherwise not.}
#   \item{lines}{If a single @numeric, the maximum number of lines to show.
#     If -1, all lines are shown. If a @vector of @numeric, the lines
#     numbers to display.}
#   \item{wrap}{The (output) column @numeric where to wrap lines.}
#   \item{highlight}{A @vector of line number to be highlighted.}
#   \item{pager}{If \code{"none"}, code is not displayed in a pager, but
#     only returned. For other options, see @see "base::file.show".}
#   \item{...}{Additional arguments passed to @see "base::file.show",
#     which is used to display the formatted code.}
# }
#
# \value{
#   Returns (invisibly) the formatted code as a @character string.
# }
#
# @examples "../incl/displayCode.Rex"
#
# @author
#
# \seealso{
#  @see "base::file.show".
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("displayCode", "default", function(con=NULL, code=NULL, numerate=TRUE, lines=-1, wrap=79, highlight=NULL, pager=getOption("pager"), ...) {

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'lines':
  if (!is.numeric(lines))
    throw("Argument 'lines' must be numeric: ", mode(lines));
  lines <- unique(as.integer(lines));

  if (length(lines) == 1) {
    if (is.na(lines))
      lines <- -1;
  } else if (length(lines) > 1) {
    if (any(lines <= 0)) {
      throw("Argument 'lines' must be positive: [",
                                         min(lines), ",", max(lines), "]");
    }
  }

  # Argument 'code':
  if (!is.null(code)) {
    code <- Arguments$getCharacters(code, asGString=FALSE);
    code <- gsub("\r\n|\n\r|\r", "\n", code);
    code <- unlist(strsplit(code, split="\n"));
    pathname <- "R code";
  }

  # Argument 'con':
  if (is.null(code)) {
    if (is.character(con)) {
      pathname <- Arguments$getReadablePathname(con, mustExist=TRUE);
      code <- readLines(pathname, n=max(lines), warn=FALSE);
    } else if (inherits(con, "connection")) {
      pathname <- summary(con)$description;
      code <- readLines(con, n=max(lines), warn=FALSE);
    } else {
      throw("Argument 'con' must be a filename or a connection: ",
                                                             class(con)[1]);
    }
  }

  # Argument 'numerate':
  numerate <- Arguments$getLogical(numerate);


  # Argument 'wrap':
  if (length(wrap) != 1) {
    throw("Argument 'wrap' must be a single number: ",
                                               paste(wrap, collapse=", "));
  }

  if (any(!is.finite(wrap)))
    throw("Argument 'wrap' is non-finite: ", wrap);

  # Argument 'highlight':
  if (is.character(highlight)) {
    # Find line number in 'highlight' string.  For example, by passing
    # geterrmessage() we can automatigally highlight the erroneous line.
    pattern <- ".*(line|row)(|s) ([0-9][0-9]*).*";
    if (regexpr(pattern, highlight) != -1) {
      highlight <- gsub(pattern, "\\3", highlight);
      highlight <- as.integer(highlight);
    }
  }

  if (!is.null(highlight) && is.na(highlight)) {
    highlight <- NULL;
  } else {
    highlight <- unique(as.integer(highlight));
  }

  # Argument 'pager':
  if (is.function(pager)) {
  } else {
    pager <- Arguments$getCharacter(pager);
  }

  nlines <- length(code);
  if (nlines == 0)
    return();

  # Number the read lines
  numbers <- as.integer(seq_len(nlines));

  # Prepare highlight marks
  marks <- rep(" ", times=nlines);
  marks[highlight] <- "*";

  if (length(lines) > 1) {
    # Ignore lines not read
    lines <- lines[lines <= length(code)];
    code <- code[lines];
    numbers <- numbers[lines];
    marks <- marks[lines];
  }

  if (all(marks == " "))
    marks <- NULL;

  # Create right-aligned line number strings
  if (numerate) {
    width <- nchar(as.character(nlines));
    fmtstr <- paste("%", width, "d", sep="");
    numbers <- sprintf(fmtstr, numbers);
  } else {
    numbers <- NULL;
  }

  # Create the line prefixes
  if (!is.null(marks) || !is.null(numbers)) {
    prefix <- paste(marks, numbers, "|", sep="");
    width <- nchar(prefix[1]);
    emptyPrefix <- paste(paste(rep(" ", times=width-1), collapse=""), "|", sep="");
  } else {
    prefix <- NULL;
    width <- 0;
    emptyPrefix <- NULL;
  }

  # Create output lines by wrapping the lines, but not the line numbers
  if (wrap > 0) {
    wrap <- wrap - width;

    code2 <- c();
    for (kk in seq_along(code)) {
      if (nchar(code[kk]) <= wrap) {
        line <- paste(prefix[kk], code[kk], sep="");
      } else {
        # Wrap line at positions:
        wrapAt <- seq(from=1, to=nchar(code[kk]), by=wrap);
        line <- c();
        while (length(wrapAt) > 0) {
          line <- c(line, substr(code[kk], 1, wrap));
          code[kk] <- substring(code[kk], wrap+1)
          wrapAt <- wrapAt[-1];
        }
        indent <- prefix[kk];
        if (length(emptyPrefix) > 0L) {
          indent <- c(indent, rep(emptyPrefix, length.out=length(line)-1));
        }
        line <- paste(indent, line, sep="");
      }
      code2 <- c(code2, line);
    }
    code <- code2;
  }

  code <- paste(code, collapse="\n");
  code <- paste(code, "\n", sep="");

  if (!is.null(pager) && !identical(pager, "none")) {
    tmpfile <- tempfile();
    cat(file=tmpfile, code);
    file.show(tmpfile, title=pathname, delete.file=TRUE, pager=pager, ...);
  }

  invisible(code);
})


############################################################################
# HISTORY:
# 2015-01-12
# o displayCode() would generate warnings.
# 2013-02-14
# o BUG FIX: displayCode(code) would GString process 'code'.
# 2005-10-21
# o Rename all 'mustExists' arguments to 'mustExist' in calls to Arguments.
# 2005-09-23
# o BUG FIX: Argument 'pager' did not support functions.
# 2005-09-06
# o BUG FIX: Code was interpreted as GStrings.
# 2005-08-02
# o Added argument 'pager'.
# 2005-08-01
# o Now file.show() is used to display code.
# o Added argument 'code'.
# o Simplified code a little bit.
# o Additional argument validation.
# 2005-06-26
# o Renamed from display File() to displayCode().
# 2005-06-17
# o Added Rdoc help and example.
# o Created.
############################################################################
