%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  FileProgressBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{cleanup.FileProgressBar}
\alias{cleanup.FileProgressBar}
\alias{FileProgressBar.cleanup}
\alias{cleanup,FileProgressBar-method}

 \title{Removes the progress file for a file progress bar}

 \usage{
\method{cleanup}{FileProgressBar}(object, ...)
}

 \description{
   Removes the progress file for a file progress bar.
 }

 \arguments{
  \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) \code{\link[base:logical]{TRUE}}, if there is no progress file afterwards.
   Otherwise, \code{\link[base:logical]{FALSE}} is returned.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{FileProgressBar}}.
 }
\keyword{internal}
\keyword{methods}
