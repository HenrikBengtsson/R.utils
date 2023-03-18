###########################################################################/**
# @RdocFunction withTimeout
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
#   \item{expr}{The R expression to be evaluated.}
#   \item{substitute}{If @TRUE, argument \code{expr} is
#    \code{\link[base]{substitute}()}:ed, otherwise not.}
#   \item{envir}{The @environment in which the expression should
#     be evaluated.}
#   \item{timeout, cpu, elapsed}{A @numeric specifying the maximum number
#     of seconds the expression is allowed to run before being
#     interrupted by the timeout.  The \code{cpu} and \code{elapsed}
#     arguments can be used to specify whether time should be measured
#     in CPU time or in wall time.}
#   \item{onTimeout}{A @character specifying what action to take if
#     a timeout event occurs.}
#   \item{...}{Not used.}
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
#  infinitely long upon exiting, regardless whether it returns normally
#  or preemptively due to a timeout or an error.
# }
#
# \section{Known limitation: Not everything can be timed out}{
#  In order to understand when this function works and when it does not,
#  it is useful to know that it utilizes R's built-in time-out mechanism,
#  which sets the limits on what is possible and not.
#  From @see "base::setTimeLimit", we learn that:
#
#  \emph{"Time limits are checked whenever a user interrupt could occur.
#   This will happen frequently in R code and during Sys.sleep(*), but
#   only at points in compiled C and Fortran code identified by the
#   code author."}
#
#  More precisely, if a function is implemented in native code (e.g. C)
#  and the developer of that function does not check for user interrupts,
#  then you cannot interrupt that function neither via a user interrupt
#  (e.g. Ctrl-C) \emph{nor via the built-in time out mechanism}.
#  To change this, you need to contact the developer of that piece of
#  code and ask them to check for R user interrupts in their native code.
#
#  Furthermore, it is not possible to interrupt/break out of a "readline"
#  prompt (e.g. @see "base::readline" and @see "base::readLines") using
#  timeouts; the timeout exception will not be thrown until after the user
#  completes the prompt (i.e. after pressing ENTER).
#
#  System calls via @see "base::system" and \code{system2()} cannot be
#  timed out via the above mechanisms.  However, in \R (>= 3.5.0) these
#  functions have argument \code{timeout} providing their own independent
#  timeout mechanism.
#
#  Other examples of calls that do \emph{not} support timeout are "atomic"
#  calls that may take very long such as large object allocation and
#  \code{rnorm(n)} where \code{n} is very large.
#
#  (*) Note that on Unix and macOS, \code{Sys.sleep(time)} will signal a
#      timeout error only \emph{after} \code{time} seconds passed,
#      regardless of \code{timeout} limit (< \code{time}).
# }
#
# \section{Known limitation: May fail when temporarily switching language}{
#  \code{withTimeout()} does \emph{not} handle the case when the expression
#  evaluated \emph{temporarily} switches the language used by R, e.g.
#  assume we run in a non-French locale and call:
#
#  \preformatted{
#  withTimeout({
#    olang <- Sys.getenv("LANGUAGE")
#    on.exit(Sys.setenv(LANGUAGE=olang))
#    Sys.setenv(LANGUAGE="fr")
#    repeat Sys.sleep(0.1)
#  }, timeout = 1.0, onTimeout = "warning")
#  }
#
#  In this case, the error message produced by @see "base::setTimeLimit" is
#  in French, i.e. `la limite de temps est atteinte`.  However, when
#  \code{withTimeout()} inspects this message, it can \emph{not} know that
#  French was used, and will therefore not check against the French template
#  message for timeout errors.  Because of this, \code{withTimeout()} fails
#  to detect the timeout error (and therefore also deescalate it to a
#  warning in this example).
#
#  \emph{Comment}: This appears to only fail on MS Windows and macOS,
#  whereas on Linux, \code{withTimeout()} appears to work, but it is
#  unknown why there is a difference between operating systems in this
#  case.
# }
#
# @author
#
# @examples "../incl/withTimeout.Rex"
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression and
#   @see "base::setTimeLimit" is used to control for timeout events.
# }
#
# \references{
#  [1] R help thread 'Time out for a R Function' on 2010-12-07.
#    \url{https://stat.ethz.ch/pipermail/r-help/2010-December/262316.html} \cr
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withTimeout <- function(expr, substitute=TRUE, envir=parent.frame(), timeout, cpu=timeout, elapsed=timeout, onTimeout=c("error", "warning", "silent"), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'expr':
  if (substitute) expr <- substitute(expr)

  # Argument 'envir':
  if (!is.environment(envir))
    throw("Argument 'envir' is not a list: ", class(envir)[1L])

  # Argument 'cpu' and 'elapsed':
  cpu <- Arguments$getNumeric(cpu, range=c(0,Inf))
  elapsed <- Arguments$getNumeric(elapsed, range=c(0,Inf))

  # Argument 'onTimeout':
  onTimeout <- match.arg(onTimeout)


  setTimeLimit(cpu=cpu, elapsed=elapsed, transient=TRUE)
  on.exit({
    setTimeLimit(cpu=Inf, elapsed=Inf, transient=FALSE)
  })

  tryCatch({
    eval(expr, envir = envir, enclos = baseenv())
  }, error = function(ex) {
    msg <- ex$message
    # Was it a timeout?
    pattern <- gettext("reached elapsed time limit", "reached CPU time limit", domain="R")
    pattern <- paste(pattern, collapse = "|")
    if (regexpr(pattern, msg) != -1L) {
      ex <- TimeoutException(msg, cpu=cpu, elapsed=elapsed)
      if (onTimeout == "error") {
        throw(ex)
      } else if (onTimeout == "warning") {
        warning(getMessage(ex))
        NULL
      } else if (onTimeout == "silent") {
        NULL
      }
    } else {
      # Rethrow error
      throw(ex)
    }
  })
}
