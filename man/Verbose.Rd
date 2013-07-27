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

\usage{
Verbose(con=stderr(), on=TRUE, threshold=0, asGString=TRUE, timestamp=FALSE,
  removeFile=TRUE, core=TRUE, ...)
}

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
 \tab \code{\link[R.utils:as.character.Verbose]{as.character}} \tab Returns a character string version of this object.\cr
 \tab \code{\link[R.utils:as.double.Verbose]{as.double}} \tab Gets a numeric value of this object.\cr
 \tab \code{\link[R.utils:as.logical.Verbose]{as.logical}} \tab Gets a logical value of this object.\cr
 \tab \code{\link[R.utils:capture.Verbose]{capture}} \tab Captures output of a function.\cr
 \tab \code{\link[R.utils:cat.Verbose]{cat}} \tab Concatenates and prints objects if above threshold.\cr
 \tab \code{\link[R.utils:enter.Verbose]{enter}} \tab Writes a message and indents the following output.\cr
 \tab \code{enterf} \tab  -\cr
 \tab \code{\link[R.utils:equals.Verbose]{equals}} \tab Checks if this object is equal to another.\cr
 \tab \code{\link[R.utils:evaluate.Verbose]{evaluate}} \tab Evaluates a function and prints its results if above threshold.\cr
 \tab \code{\link[R.utils:exit.Verbose]{exit}} \tab Writes a message and unindents the following output.\cr
 \tab \code{\link[R.utils:getThreshold.Verbose]{getThreshold}} \tab Gets current verbose threshold.\cr
 \tab \code{\link[R.utils:getTimestampFormat.Verbose]{getTimestampFormat}} \tab Gets the default timestamp format.\cr
 \tab \code{\link[R.utils:header.Verbose]{header}} \tab Writes a header.\cr
 \tab \code{\link[R.utils:isOn.Verbose]{isOn}} \tab Checks if the output is on.\cr
 \tab \code{\link[R.utils:isVisible.Verbose]{isVisible}} \tab Checks if a certain verbose level will be shown or not.\cr
 \tab \code{\link[R.utils:less.Verbose]{less}} \tab Creates a cloned instance with a higher threshold.\cr
 \tab \code{\link[R.utils:more.Verbose]{more}} \tab Creates a cloned instance with a lower threshold.\cr
 \tab \code{\link[R.utils:newline.Verbose]{newline}} \tab Writes one or several empty lines.\cr
 \tab \code{\link[R.utils:off.Verbose]{off}} \tab Turn off the output.\cr
 \tab \code{\link[R.utils:on.Verbose]{on}} \tab Turn on the output.\cr
 \tab \code{popState} \tab  -\cr
 \tab \code{\link[R.utils:print.Verbose]{print}} \tab Prints objects if above threshold.\cr
 \tab \code{\link[R.utils:printf.Verbose]{printf}} \tab Formats and prints object if above threshold.\cr
 \tab \code{\link[R.utils:pushState.Verbose]{pushState}} \tab Pushes the current indentation state of the Verbose object.\cr
 \tab \code{\link[R.utils:ruler.Verbose]{ruler}} \tab Writes a ruler.\cr
 \tab \code{\link[R.utils:setDefaultLevel.Verbose]{setDefaultLevel}} \tab Sets the current default verbose level.\cr
 \tab \code{\link[R.utils:setThreshold.Verbose]{setThreshold}} \tab Sets verbose threshold.\cr
 \tab \code{\link[R.utils:setTimestampFormat.Verbose]{setTimestampFormat}} \tab Sets the default timestamp format.\cr
 \tab \code{\link[R.utils:str.Verbose]{str}} \tab Prints the structure of an object if above threshold.\cr
 \tab \code{\link[R.utils:summary.Verbose]{summary}} \tab Generates a summary of an object if above threshold.\cr
 \tab \code{\link[R.utils:timestamp.Verbose]{timestamp}} \tab Writes a timestamp.\cr
 \tab \code{timestampOff} \tab  -\cr
 \tab \code{\link[R.utils:timestampOn.Verbose]{timestampOn}} \tab Turns automatic timestamping on and off.\cr
 \tab \code{\link[R.utils:warnings.Verbose]{warnings}} \tab Outputs any warnings recorded.\cr
 \tab \code{\link[R.utils:writeRaw.Verbose]{writeRaw}} \tab Writes objects if above threshold.\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save


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
    enterf(verbose, "Sub analysis #\%d", kk)
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

\seealso{
  \code{\link{NullVerbose}}.
}



\keyword{classes}
\keyword{programming}
\keyword{IO}
