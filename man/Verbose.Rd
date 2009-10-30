%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Verbose}
\docType{class}
\alias{Verbose}


\title{Class to writing verbose messages to a connection or file}

\description{
 Package:  R.utils \cr
\bold{Class Verbose}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{Verbose}\cr

\bold{Directly known subclasses:}\cr
\link[R.utils]{MultiVerbose}, \link[R.utils]{NullVerbose}\cr

public static class \bold{Verbose}\cr
extends \link[R.oo]{Object}\cr



 Class to writing verbose messages to a connection or file.
}

\usage{Verbose(con=stderr(), on=TRUE, threshold=0, asGString=TRUE, timestamp=FALSE, removeFile=TRUE, core=TRUE, ...)}

\arguments{
  \item{con}{A \code{\link[base:connections]{connection}} or a \code{\link[base]{character}} string filename.}
  \item{on}{A \code{\link[base]{logical}} indicating if the writer is on or off.}
  \item{threshold}{A \code{\link[base]{numeric}} threshold that the \code{level} argument
    of any write method has to be equal to or larger than in order to the
    message being written. Thus, the lower the threshold is the more and
    more details will be outputted.}
  \item{timestamp}{If \code{\link[base:logical]{TRUE}}, each output is preceded with a timestamp.}
  \item{removeFile}{If \code{\link[base:logical]{TRUE}} and \code{con} is a filename, the file is
    first deleted, if it exists.}
  \item{asGString}{If \code{\link[base:logical]{TRUE}}, all messages are interpreted as
    \code{\link{GString}} before being output, otherwise not.}
  \item{core}{Internal use only.}
  \item{...}{Not used.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{as.character} \tab  -\cr
 \tab \code{as.double} \tab  -\cr
 \tab \code{as.logical} \tab  -\cr
 \tab \code{capture} \tab  -\cr
 \tab \code{cat} \tab  -\cr
 \tab \code{enter} \tab  -\cr
 \tab \code{equals} \tab  -\cr
 \tab \code{evaluate} \tab  -\cr
 \tab \code{exit} \tab  -\cr
 \tab \code{getThreshold} \tab  -\cr
 \tab \code{getTimestampFormat} \tab  -\cr
 \tab \code{header} \tab  -\cr
 \tab \code{isOn} \tab  -\cr
 \tab \code{isVisible} \tab  -\cr
 \tab \code{less} \tab  -\cr
 \tab \code{more} \tab  -\cr
 \tab \code{newline} \tab  -\cr
 \tab \code{off} \tab  -\cr
 \tab \code{on} \tab  -\cr
 \tab \code{popState} \tab  -\cr
 \tab \code{print} \tab  -\cr
 \tab \code{printf} \tab  -\cr
 \tab \code{pushState} \tab  -\cr
 \tab \code{ruler} \tab  -\cr
 \tab \code{setDefaultLevel} \tab  -\cr
 \tab \code{setThreshold} \tab  -\cr
 \tab \code{setTimestampFormat} \tab  -\cr
 \tab \code{str} \tab  -\cr
 \tab \code{summary} \tab  -\cr
 \tab \code{timestamp} \tab  -\cr
 \tab \code{timestampOff} \tab  -\cr
 \tab \code{timestampOn} \tab  -\cr
 \tab \code{warnings} \tab  -\cr
 \tab \code{writeRaw} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save


}

\section{Output levels}{
  As a guideline, use the following levels when outputting verbose/debug
  message using the Verbose class. For a message to be shown, the output
  level must be greater than (not equal to) current threshold.
  Thus, the lower the threshold is set, the more messages will be seen.

  \itemize{
   \item{<= -100}{Only for debug messages, i.e. messages containing all
     necessary information for debugging purposes and to find bugs in
     the code. Normally these messages are so detailed so they will be
     a pain for the regular user, but very useful for bug reporting and
     bug tracking by the developer.}
   \item{-99 -- -11}{Detailed verbose messages. These will typically be
     useful for the user to understand what is going on and do some simple
     debugging fixing problems typically due to themselves and not due to
     bugs in the code.}
   \item{-10 -- -1}{Verbose messages. For example, these will typically
     report the name of the file to be read, the current step in a sequence
     of analysis steps and so on. These message are not very useful for
     debugging.}
   \item{0}{Default level in all output methods and default threshold.
     Thus, by default, messages at level 0 are not shown.}
   \item{>= +1}{Message that are always outputted (if threshold is
     kept at 0).  We recommend not to output message at this level, because
     methods should be quiet by default (at the default threshold 0).}
  }
}

\section{A compatibility trick and a speed-up trick}{
  If you want to include calls to Verbose in a package of yours in order
  to debug code, but not use it otherwise, you might not want to load
  R.utils all the time, but only for debugging.
  To achieve this, the value of a reference variable to a Verbose class
  is always set to \code{\link[base:logical]{TRUE}}, cf. typically an Object reference has value \code{\link[base]{NA}}.
  This makes it possible to use the reference variable as a first test
  before calling Verbose methods. Example:
  \preformatted{
    foo <- function(..., verbose=FALSE) {
      # enter() will never be called if verbose==FALSE, thus no error.
      verbose && enter(verbose, "Loading")
    }
  }

  Thus, R.utils is not required for \code{foo()}, but for
  \code{foo(verbose==Verbose(level=-1))} it is.

  Moreover, if using the \code{\link{NullVerbose}} class for ignoring all verbose
  messages, the above trick will indeed speed up the code, because
  the value of a NullVerbose reference variable is always \code{\link[base:logical]{FALSE}}.
}

\section{Extending the Verbose class}{
  If extending this class, make sure to output messages via
  \code{\link[R.utils:writeRaw.Verbose]{*writeRaw}()} or one of the other output methods (which in
  turn all call the former).
  This guarantees that \code{\link[R.utils:writeRaw.Verbose]{*writeRaw}()} has full control of the
  output, e.g. this makes it possible to split output to standard
  output and to file.
}

\examples{
verbose <- Verbose(threshold=-1)

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

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{NullVerbose}}.
}



\keyword{classes}
\keyword{programming}
\keyword{IO}
