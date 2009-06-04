%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Assert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{isVector.Assert}
\alias{isVector.Assert}
\alias{Assert.isVector}
\alias{isVector.Assert}
\alias{isVector,Assert-method}


 \title{Static method asserting thatan object is a vector}

 \description{
   Static method asserting thatan object is a vector.
 }

 \synopsis{isVector.Assert(static, x, length=NULL, ...)}
\usage{Assert$isVector(x, length=NULL, ...)}

 \arguments{
  \item{x}{Object to be checked.}
  \item{length}{Required length. If \code{\link[base]{NULL}}, this is not checked.}
  \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) \code{\link[base:logical]{TRUE}}, or throws an exception.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{Assert}}.
 }
\keyword{internal}
\keyword{methods}
