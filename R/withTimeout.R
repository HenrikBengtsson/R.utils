###########################################################################/**
# @RdocFunction withTimeout
# @alias evalWithTimeout
#
# @title "Evaluate an R expression and interrupts it if it takes too long"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{The R expression to be evaluated.}
#   \item{envir}{The @environment in which the expression should
#     be evaluated.}
#   \item{timeout, cpu, elapsed}{A @numeric specifying the maximum number
#     of seconds the expression is allowed to run before being
#     interrupted by the timeout.  The \code{cpu} and \code{elapsed}
#     arguments can be used to specify whether time should be measured
#     in CPU time or in wall time.}
#   \item{onTimeout}{A @character specifying what action to take if
#     a timeout event occurs.}
# }
#
# \value{
#  Returns the results of the expression evaluated.
#  If timed out, @NULL is returned if \code{onTimeout} was
#  \code{"warning"} or \code{"silent"}.
#  If \code{"error"} a @see "TimeoutException" is thrown.
# }
#
# \details{
#  This method utilizes @see "base::setTimeLimit" by first setting the
#  timeout limits, then evaluating the expression that may or may not
#  timeout.  The method is guaranteed to reset the timeout limits to be
#  infitely long upon exiting, regardless whether it returns normally
#  or preemptively due to a timeout or an error.
# }
#
# \section{Non-supported cases}{
#  It is not possible to interrupt/break out of a "readline" prompt
#  (e.g. @see "base::readline" and @see "base::readLines") using
#  timeouts; the timeout exception will not be thrown until after
#  the user completes the prompt (i.e. after pressing ENTER).
# }
#
# @author
#
# @examples "../incl/withTimeout.Rex"
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression.
#   @see "base::setTimeLimit"
# }
#
# \references{
#  [1] R help thread 'Time out for a R Function' on 2010-12-06.
#    \url{http://www.mail-archive.com/r-help@r-project.org/msg119344.html} \cr
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withTimeout <- function(..., envir=parent.frame(), timeout, cpu=timeout, elapsed=timeout, onTimeout=c("error", "warning", "silent")) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'cpu' and 'elapsed':
  cpu <- Arguments$getNumeric(cpu, range=c(0,Inf));
  elapsed <- Arguments$getNumeric(elapsed, range=c(0,Inf));

  # Argument 'onTimeout':
  onTimeout <- match.arg(onTimeout);


  # Default result value
  res <- invisible();

  setTimeLimit(cpu=cpu, elapsed=elapsed, transient=TRUE);
  on.exit({
    setTimeLimit(cpu=Inf, elapsed=Inf, transient=FALSE);
  });

  tryCatch({
    res <- eval(..., envir=envir);
  }, error = function(ex) {
    msg <- ex$message;
    # Was it a timeout?
    pattern <- gettext("reached elapsed time limit");
    if (regexpr(pattern, msg) != -1L) {
      ex <- TimeoutException(msg, cpu=cpu, elapsed=elapsed);
      if (onTimeout == "error") {
        throw(ex);
      } else if (onTimeout == "warning") {
        warning(getMessage(ex));
      } else if (onTimeout == "silent") {
      }
    } else {
      # Rethrow error
      throw(ex);
    }
  })

  res;
} # withTimeout()

# BACKWARD COMPATIBILITY
evalWithTimeout <- withTimeout


############################################################################
# HISTORY:
# 2012-10-09 [HB on Kauai]
# o BUG FIX: evalWithTimeout() would not reset the time limits after
#   returning. Thanks to Gregory Ryslik at Yale University for reporting
#   on this.
# 2011-12-30
# o DOCUMENTATION: The help now explains that evalWithTimeout(readline())
#   does not throw a timeout exception until after readline() returns.
# 2011-12-16
# o GENERALIZATION: evalWithTimeout() would fail to detect timeouts
#   in non-English locales.
# o Improved the Rd help.
# o BUG FIX: Now evalWithTimeout(..., onTimeout="silent") works.
# 2010-12-07
# o Added Rdoc comments with an example.
# 2010-12-06
# o Created.
############################################################################
