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
 \tab \code{\link[R.utils:as.character.ProgressBar]{as.character}} \tab Gets a string description of the progress bar.\cr
 \tab \code{\link[R.utils:getBarString.ProgressBar]{getBarString}} \tab Gets the progress bar string to be displayed.\cr
 \tab \code{\link[R.utils:increase.ProgressBar]{increase}} \tab Increases (steps) progress bar.\cr
 \tab \code{\link[R.utils:isDone.ProgressBar]{isDone}} \tab Checks if progress bar is completed.\cr
 \tab \code{\link[R.utils:reset.ProgressBar]{reset}} \tab Reset progress bar.\cr
 \tab \code{\link[R.utils:setMaxValue.ProgressBar]{setMaxValue}} \tab Sets maximum value.\cr
 \tab \code{\link[R.utils:setProgress.ProgressBar]{setProgress}} \tab Sets current progress.\cr
 \tab \code{\link[R.utils:setStepLength.ProgressBar]{setStepLength}} \tab Sets default step length.\cr
 \tab \code{\link[R.utils:setTicks.ProgressBar]{setTicks}} \tab Sets values for which ticks should be visible.\cr
 \tab \code{\link[R.utils:setValue.ProgressBar]{setValue}} \tab Sets current value.\cr
 \tab \code{\link[R.utils:update.ProgressBar]{update}} \tab Updates progress bar.\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

 }

 \examples{
# A progress bar with default step length one.
pb <- ProgressBar(max=42)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  if (interactive()) Sys.sleep(0.02)
}
cat("\n")

# A "faster" progress bar with default step length 1.4.
pb <- ProgressBar(max=42, stepLength=1.4)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  if (interactive()) Sys.sleep(0.02)
}

cat("\n")

}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}
\keyword{classes}
