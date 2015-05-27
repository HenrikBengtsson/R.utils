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
#   \item{collapse}{A @character string used for collapsing the captured
#      rows. If @NULL, the rows are not collapsed.}
#   \item{envir}{The @environment in which the expression is evaluated.}
# }
#
# \value{
#  Returns captured output as a @character @vector.
# }
#
# \details{
#  This method immitates @see "utils::capture.output" with the major
#  difference that it captures strings via a @raw connection rather
#  than via internal strings.  The latter becomes exponentially slow
#  for large outputs [1,2].
# }
#
# @examples ../incl/captureOutput.Rex
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
#  [2] JottR blog post 'PERFORMANCE: captureOutput() is much faster than
#      capture.output()', 2015-05-26.
#      \url{http://www.jottr.org/2014/05/captureOutput.html}
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
    # Backward compatibility, i.e. capture to file
    res <- eval({
      capture.output(expr, file=file, append=append);
    }, envir=envir, enclos=envir);

    return(invisible(res))
  }

  ## At this point 'res' is a single character string if captured
  ## to a raw or file connection, whereas if captured to say
  ## "text" connection, then it is a character vector with elements
  ## split by '\n' newlines.
  ## In order to emulate capture.output() behavior as far as possible,
  ## we will split by '\n'.
  res <- unlist(strsplit(res, split="\n", fixed=TRUE), use.names=FALSE)

  ## Merge back using the collapse string?
  if (!is.null(collapse)) res <- paste(res, collapse=collapse)

  res;
} # captureOutput()


##############################################################################
# HISTORY:
# 2015-05-08
# o captureOutput(..., collapse="\n") no longer appends newline at the end.
# 2014-05-01
# o Immitates arguments of capture.output() plus 'collapse'.
# o Renamed to captureOutput().
# 2014-02-03
# o Added .captureViaRaw().
# o Created.
##############################################################################
