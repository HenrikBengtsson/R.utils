%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  evalWithTimeout.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{evalWithTimeout}
\alias{evalWithTimeout}


\title{Evaluate an R expression and interrupts it if it takes too long}

\description{
 Evaluate an R expression and interrupts it if it takes too long.
}

\usage{
evalWithTimeout(..., envir=parent.frame(), timeout, cpu=timeout, elapsed=timeout, onTimeout=c("error", "warning", "silent"))
}

\arguments{
  \item{...}{The R expression to be evaluated as passed
    to \code{\link[base]{eval}}().}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should
    be evaluated.}
  \item{timeout, cpu, elapsed}{A \code{\link[base]{numeric}} specifying the maximum number
    of seconds the expression is allowed to run before being
    interrupted by the timeout.  The \code{cpu} and \code{elapsed}
    arguments can be used to specify whether time should be measured
    in CPU time or in wall time.}
  \item{onTimeout}{A \code{\link[base]{character}} specifying what action to take if
    a timeout event occurs.}
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
 infitely long upon exiting, regardless whether it returns normally
 or preemptively due to a timeout or an error.
}

\section{Non-supported cases}{
 It is not possible to interrupt/break out of a "readline" prompt
 (e.g. \code{\link[base]{readline}}() and \code{\link[base]{readLines}}()) using
 timeouts; the timeout exception will not be thrown until after
 the user completes the prompt (i.e. after pressing ENTER).
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\examples{
# - - - - - - - - - - - - - - - - - - - - - - - - -
# Function that takes "a long" time to run
# - - - - - - - - - - - - - - - - - - - - - - - - -
foo <- function() {
  print("Tic");
  for (kk in 1:100) {
    print(kk);
    Sys.sleep(0.1);
  }
  print("Tac");
}


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout by throwing a TimeoutException.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- NULL;
tryCatch({
  res <- evalWithTimeout({
    foo();
  }, timeout=1.08);
}, TimeoutException=function(ex) {
  cat("Timeout. Skipping.\n");
})


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout returning NULL and generate a warning.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- evalWithTimeout({
  foo();
}, timeout=1.08, onTimeout="warning");


# - - - - - - - - - - - - - - - - - - - - - - - - -
# Evaluate code, if it takes too long, generate
# a timeout, and return silently NULL.
# - - - - - - - - - - - - - - - - - - - - - - - - -
res <- evalWithTimeout({
  foo();
}, timeout=1.08, onTimeout="silent");
}

\seealso{
  \code{\link[base]{setTimeLimit}}()
}

\references{
 [1] R help thread 'Time out for a R Function' on 2010-12-06.
   \url{http://www.mail-archive.com/r-help@r-project.org/msg119344.html} \cr
}



\keyword{IO}
\keyword{programming}
