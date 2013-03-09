%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Assert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Assert$isVector}
\alias{Assert$isVector}
\alias{isVector.Assert}
\alias{Assert.isVector}
\alias{isVector,Assert-method}

 \title{Static method asserting thatan object is a vector}

 \description{
   Static method asserting thatan object is a vector.
 }

 \usage{
## Static method (use this):
## Assert$isVector(x, length=NULL, ...)

## Don't use the below:
\method{isVector}{Assert}(static, x, length=NULL, ...)
}

 \arguments{
  \item{x}{Object to be checked.}
  \item{length}{Required length. If \code{\link[base]{NULL}}, this is not checked.}
  \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) \code{\link[base:logical]{TRUE}}, or throws an exception.
 }

 \author{Henrik Bengtsson}

 \seealso{
   For more information see \code{\link{Assert}}.
 }
\keyword{internal}
\keyword{methods}
