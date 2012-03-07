%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  FileProgressBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{FileProgressBar}
\docType{class}
\alias{FileProgressBar}


 \title{A progress bar that sets the size of a file accordingly}

 \description{
  Package:  R.utils \cr
\bold{Class FileProgressBar}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{\link[R.utils]{ProgressBar}}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{FileProgressBar}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{FileProgressBar}\cr
extends \link[R.utils]{ProgressBar}\cr


 }

 \usage{FileProgressBar(pathname=NULL, ...)}

 \arguments{
   \item{pathname}{The pathname of the output file.}
   \item{...}{Other arguments accepted by the \code{\link{ProgressBar}}
     constructor.}
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:cleanup.FileProgressBar]{cleanup}} \tab Removes the progress file for a file progress bar.\cr
 \tab \code{\link[R.utils:update.FileProgressBar]{update}} \tab Updates file progress bar.\cr
}


 \bold{Methods inherited from ProgressBar}:\cr
as.character, getBarString, increase, isDone, reset, setMaxValue, setProgress, setStepLength, setTicks, setValue, update

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

 }

 \details{
   A progress bar that sets the size of a file accordingly. This class useful to check the progress of a batch job by
   just querying the size of a file, for instance, via ftp.
 }

 \examples{
  \dontrun{
  
# Creates a progress bar (of length 100) that displays it self as a file.
pb <- FileProgressBar("~/progress.simulation")
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  Sys.sleep(0.01)
}

  }
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}
\keyword{classes}
