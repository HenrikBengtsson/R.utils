%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Assert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Assert$inherits}
\alias{Assert$inherits}
\alias{inherits.Assert}
\alias{Assert.inherits}
\alias{inherits,Assert-method}

 \title{Static method asserting that an object inherits from of a certain class}

 \description{
   Static method asserting that an object inherits from of a certain class.
 }

 \usage{
## Static method (use this):
## Assert$inherits(object, class, ...)

## Don't use the below:
\method{inherits}{Assert}(static, object, class, ...)
}

 \arguments{
  \item{object}{Object to be checked.}
  \item{class}{Name of class.}
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
