###########################################################################/**
# @RdocFunction captureOutput
#
# @title "Evaluate an R expression and captures the output"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The R expression to be evaluated.}
#   \item{file}{A file name or a @connection to where the output is
#      directed.  Alternatively, if @NULL the output is captured to
#      and returned as a @character @vector.}
#   \item{append}{If @TRUE, the output is appended to the file or
#      the (unopened) connection, otherwise it overwrites.}
#   \item{collapse}{If @TRUE, then argument \code{expr} is not parsed
#      (via @see "base::substitute"), otherwise it is.}
#   \item{envir}{The @environment in which the expression js evaluated.}
# }
#
# \value{
#  Returns captured output as a @character @vector.
# }
#
# \details{
#  This methods immitates @see "utils::capture.output" with the major
#  difference that it captures strings via a @raw connection rather
#  than via internal strings.  The latter becomes exponentially slow
#  for large outputs [1].
# }
#
# @author
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression.
#   and @see "utils::capture.output" to capture the output.
# }
#
# \references{
#  [1] R-devel thread 'capture.output(): Using a rawConnection() [linear]
#      instead of textConnection() [exponential]?', 2014-02-03.
#      \url{https://stat.ethz.ch/pipermail/r-devel/2014-February/068349.html}
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
captureOutput <- function(expr, file=NULL, append=FALSE, collapse=NULL, envir=parent.frame()) {
  # Argument 'file':
  # Default is to capture via a raw connection
  if (is.null(file)) file <- raw(0L);

  # It is still possible to capture via a string
  if (identical(file, character(0L))) file <- NULL;

  # How to capture output?
  if (is.raw(file)) {
    # Via a temporary raw connection? [MUCH FASTER]
    res <- eval({
      file <- rawConnection(raw(0L), open="w");
      on.exit({
        if (!is.null(file)) close(file);
      })

      capture.output(expr, file=file);

      res <- rawConnectionValue(file);
      close(file);
      file <- NULL; # Not needed anymore

      # Convert to character
      res <- rawToChar(res);

      res
    }, envir=envir, enclos=envir);
  } else {
    # As usual?
    res <- eval({
      capture.output(expr, file=file, append=append);
    }, envir=envir, enclos=envir);
  }

  # Return line by line or as one long string?
  if (is.null(collapse)) {
    res <- unlist(strsplit(res, split="\n", fixed=TRUE), use.names=FALSE);
  } else if (collapse != "\n") {
    res <- unlist(strsplit(res, split="\n", fixed=TRUE), use.names=FALSE);
    res <- paste(res, collapse=collapse);
  }

  res;
} # captureOutput()


##############################################################################
# HISTORY:
# 2014-05-01
# o Immitates arguments of capture.output() plus 'collapse'.
# o Renamed to captureOutput().
# 2014-02-03
# o Added .captureViaRaw().
# o Created.
##############################################################################
