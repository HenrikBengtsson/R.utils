%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ProgressBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{ProgressBar}
\docType{class}
\alias{ProgressBar}


 \title{Provides text based counting progress bar}

 \description{
  Package:  R.utils \cr
\bold{Class ProgressBar}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{ProgressBar}\cr

\bold{Directly known subclasses:}\cr
\link[R.utils]{FileProgressBar}\cr

public static class \bold{ProgressBar}\cr
extends \link[R.oo]{Object}\cr


 }

 \usage{ProgressBar(max=100, ticks=10, stepLength=1, newlineWhenDone=TRUE)}

 \arguments{
   \item{max}{The maximum number of steps.}
   \item{ticks}{Put visual "ticks" every \code{ticks} step.}
   \item{stepLength}{The default length for each increase.}
   \item{newlineWhenDone}{If \code{\link[base:logical]{TRUE}}, a newline is outputted when bar is
         updated, when done, otherwise not.}
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{as.character} \tab  -\cr
 \tab \code{getBarString} \tab  -\cr
 \tab \code{increase} \tab  -\cr
 \tab \code{isDone} \tab  -\cr
 \tab \code{reset} \tab  -\cr
 \tab \code{setMaxValue} \tab  -\cr
 \tab \code{setProgress} \tab  -\cr
 \tab \code{setStepLength} \tab  -\cr
 \tab \code{setTicks} \tab  -\cr
 \tab \code{setValue} \tab  -\cr
 \tab \code{update} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

 }

 \examples{
# A progress bar with default step length one.
pb <- ProgressBar(max=42)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  Sys.sleep(0.02)
}
cat("\n")

# A "faster" progress bar with default step length 1.4.
pb <- ProgressBar(max=42, stepLength=1.4)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  Sys.sleep(0.02)
}

cat("\n")

}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}
\keyword{classes}
