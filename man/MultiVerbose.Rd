%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  MultiVerbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{MultiVerbose}
\docType{class}
\alias{MultiVerbose}


\title{A Verbose class ignoring everything}

\description{
 Package:  R.utils \cr
\bold{Class MultiVerbose}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{\link[R.utils]{Verbose}}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{MultiVerbose}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{MultiVerbose}\cr
extends \link[R.utils]{Verbose}\cr



 A Verbose class ignoring everything.

 \emph{This is a trial class}.
}

\usage{
MultiVerbose(verboseList=NULL, ...)
}

\arguments{
  \item{verboseList}{A \code{\link[base]{list}} of \code{\link{Verbose}} objects.}
  \item{...}{Ignored.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:as.list.MultiVerbose]{as.list}} \tab Gets a list of Verbose objects.\cr
 \tab \code{\link[R.utils:writeRaw.MultiVerbose]{writeRaw}} \tab Writes to each of the Verbose objects.\cr
}


 \bold{Methods inherited from Verbose}:\cr
as.character, as.double, as.logical, capture, cat, enter, enterf, equals, evaluate, exit, getThreshold, getTimestampFormat, header, isOn, isVisible, less, more, newline, off, on, popState, print, printf, pushState, ruler, setDefaultLevel, setThreshold, setTimestampFormat, str, summary, timestamp, timestampOff, timestampOn, warnings, writeRaw

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save


}

\examples{
# Output to both standard output and to log file
stdoutLog <- Verbose(threshold=-1)
fileLog <- Verbose("foo.log", threshold=-1)
verbose <- MultiVerbose(list(stdoutLog, fileLog), threshold=-1)


header(verbose, "A verbose writer example", padding=0)

enter(verbose, "Analysis A")
for (kk in 1:10) {
  printf(verbose, "step \%d\n", kk)
  if (kk == 2) {
    cat(verbose, "Turning ON automatic timestamps")
    timestampOn(verbose);
  } else if (kk == 4) {
    timestampOff(verbose);
    cat(verbose, "Turned OFF automatic timestamps")
    cat(verbose, "Turning OFF verbose messages for steps ", kk, "-6")
    off(verbose)
  } else if (kk == 6) {
    on(verbose)
    cat(verbose, "Turned ON verbose messages just before step ", kk+1)
  }

  if (kk \%in\% c(5,8)) {
    enter(verbose, "Sub analysis ", kk)
    for (jj in c("i", "ii", "iii")) {
      cat(verbose, "part ", jj)
    }
    exit(verbose)
  }
}
cat(verbose, "All steps completed!")
exit(verbose)

ruler(verbose)
cat(verbose, "Demo of some other methods:")
str(verbose, c(a=1, b=2, c=3))
print(verbose, c(a=1, b=2, c=3))
summary(verbose, c(a=1, b=2, c=3))
evaluate(verbose, rnorm, n=3, mean=2, sd=3)

ruler(verbose)
newline(verbose)
}

\author{Henrik Bengtsson}




\keyword{classes}
\keyword{programming}
\keyword{IO}
\keyword{internal}
