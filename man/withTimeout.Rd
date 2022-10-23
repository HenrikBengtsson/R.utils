%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withTimeout.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withTimeout}
\alias{withTimeout}


\title{Evaluate an R expression and interrupts it if it takes too long}

\description{
 Evaluate an R expression and interrupts it if it takes too long.
}

\usage{
withTimeout(expr, substitute=TRUE, envir=parent.frame(), timeout, cpu=timeout,
  elapsed=timeout, onTimeout=c("error", "warning", "silent"), ...)
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{substitute}{If \code{\link[base:logical]{TRUE}}, argument \code{expr} is
   \code{\link[base]{substitute}()}:ed, otherwise not.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should
    be evaluated.}
  \item{timeout, cpu, elapsed}{A \code{\link[base]{numeric}} specifying the maximum number
    of seconds the expression is allowed to run before being
    interrupted by the timeout.  The \code{cpu} and \code{elapsed}
    arguments can be used to specify whether time should be measured
    in CPU time or in wall time.}
  \item{onTimeout}{A \code{\link[base]{character}} specifying what action to take if
    a timeout event occurs.}
  \item{...}{Not used.}
}

\value{
 Returns the results of the expression evaluated.
 If timed out, \code{\link[base]{NULL}} is returned if \code{onTimeout} was
 \code{"warning"} or \code{"silent"}.
 If \code{"error"} a \code{\link{TimeoutException}} is thrown.
}

\details{
 This method utilizes \code{\link[base]{setTimeLimit}}() by first setting the
 timeout limits, then evaluating the expression that may or may not
 timeout.  The method is guaranteed to reset the timeout limits to be
 infinitely long upon exiting, regardless whether it returns normally
 or preemptively due to a timeout or an error.
}

\section{Known limitation: Not everything can be timed out}{
 In order to understand when this function works and when it does not,
 it is useful to know that it utilizes R's built-in time-out mechanism,
 which sets the limits on what is possible and not.
 From \code{\link[base]{setTimeLimit}}(), we learn that:

 \emph{"Time limits are checked whenever a user interrupt could occur.
  This will happen frequently in R code and during Sys.sleep(*), but
  only at points in compiled C and Fortran code identified by the
  code author."}

 More precisely, if a function is implemented in native code (e.g. C)
 and the developer of that function does not check for user interrupts,
 then you cannot interrupt that function neither via a user interrupt
 (e.g. Ctrl-C) \emph{nor via the built-in time out mechanism}.
 To change this, you need to contact the developer of that piece of
 code and ask them to check for R user interrupts in their native code.

 Furthermore, it is not possible to interrupt/break out of a "readline"
 prompt (e.g. \code{\link[base]{readline}}() and \code{\link[base]{readLines}}()) using
 timeouts; the timeout exception will not be thrown until after the user
 completes the prompt (i.e. after pressing ENTER).

 System calls via \code{\link[base]{system}}() and \code{system2()} cannot be
 timed out via the above mechanisms.  However, in \R (>= 3.5.0) these
 functions have argument \code{timeout} providing their own independent
 timeout mechanism.

 Other examples of calls that do \emph{not} support timeout are "atomic"
 calls that may take very long such as large object allocation and
 \code{rnorm(n)} where \code{n} is very large.

 (*) Note that on Unix and macOS, \code{Sys.sleep(time)} will signal a
     timeout error only \emph{after} \code{time} seconds passed,
     regardless of \code{timeout} limit (< \code{time}).
}

\section{Known limitation: May fail when temporarily switching language}{
 \code{withTimeout()} does \emph{not} handle the case when the expression
 evaluated \emph{temporarily} switches the language used by R, e.g.
 assume we run in a non-French locale and call:

 \preformatted{
 withTimeout({
   olang <- Sys.getenv("LANGUAGE")
   on.exit(Sys.setenv(LANGUAGE=olang))
   Sys.setenv(LANGUAGE="fr")
   repeat Sys.sleep(0.1)
 }, timeout = 1.0, onTimeout = "warning")
 }

 In this case, the error message produced by \code{\link[base]{setTimeLimit}}() is
 in French, i.e. `la limite de temps est atteinte`.  However, when
 \code{withTimeout()} inspects this message, it can \emph{not} know that
 French was used, and will therefore not check against the French template
 message for timeout errors.  Because of this, \code{withTimeout()} fails
 to detect the timeout error (and therefore also deescalate it to a
 warning in this example).

 \emph{Comment}: This appears to only fail on MS Windows and macOS,
 whereas on Linux, \code{withTimeout()} appears to work, but it is
 unknown why there is a difference between operating systems in this
 case.
}

\author{Henrik Bengtsson}

\examples{
# - - - - - - - - - - - - - - - - - - - - - - - - -
# Function that takes "a long" time to run
# - - - - - - - - - - - - - - - - - - - - - - - - -
foo <- function() {
  print("Tic")
  for (kk in 1:100) {
    print(kk)
    Sys.sleep(0.1)
  }
  print("Tac")
}


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout by throwing a TimeoutException.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL
tryCatch({
  res <- withTimeout({
    foo()
  }, timeout = 0.75)
}, TimeoutException = function(ex) {
  message("Timeout. Skipping.")
})


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout returning NULL and generate a warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withTimeout({
  foo()
}, timeout = 0.75, onTimeout = "warning")


# The same using an expression object
expr <- quote(foo())
res <- withTimeout(expr, substitute = FALSE,
                   timeout = 0.75, onTimeout = "warning")


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout, and return silently NULL.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- withTimeout({
  foo()
}, timeout = 0.75, onTimeout = "silent")
}

\seealso{
  Internally, \code{\link[base]{eval}}() is used to evaluate the expression and
  \code{\link[base]{setTimeLimit}}() is used to control for timeout events.
}

\references{
 [1] R help thread 'Time out for a R Function' on 2010-12-07.
   \url{https://stat.ethz.ch/pipermail/r-help/2010-December/262316.html} \cr
}



\keyword{IO}
\keyword{programming}
