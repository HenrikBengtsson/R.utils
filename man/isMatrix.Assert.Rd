%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Assert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Assert$isMatrix}
\alias{Assert$isMatrix}
\alias{isMatrix.Assert}
\alias{Assert.isMatrix}
\alias{isMatrix,Assert-method}

 \title{Static method asserting thatan object is a matrix}

 \description{
   Static method asserting thatan object is a matrix.
 }

 \usage{
## Static method (use this):
## Assert$isMatrix(x, nrow=NULL, ncol=NULL, ...)

## Don't use the below:
\method{isMatrix}{Assert}(static, x, nrow=NULL, ncol=NULL, ...)
}

 \arguments{
  \item{x}{Object to be checked.}
  \item{nrow}{Required number of rows. If \code{\link[base]{NULL}}, this is not checked.}
  \item{ncol}{Required number of columns. If \code{\link[base]{NULL}}, this is not checked.}
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
