%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{isVisible.Verbose}
\alias{isVisible.Verbose}
\alias{Verbose.isVisible}
\alias{isVisible,Verbose-method}

 \title{Checks if a certain verbose level will be shown or not}

 \description{
   Checks if a certain verbose level will be shown or not.
 }

 \usage{
\method{isVisible}{Verbose}(this, level=this$defaultLevel, ...)
}

 \arguments{
  \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
  \item{...}{Not used.}
 }

 \value{
   Returns \code{\link[base:logical]{TRUE}}, if given level is greater than (not equal to) the current
   threshold, otherwise \code{\link[base:logical]{FALSE}} is returned.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:getThreshold.Verbose]{*getThreshold}()} and \code{\link[R.utils:setThreshold.Verbose]{*setThreshold}()}.
   For more information see \code{\link{Verbose}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
