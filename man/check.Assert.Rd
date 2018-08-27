%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Assert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Assert$check}
\alias{Assert$check}
\alias{check.Assert}
\alias{Assert.check}
\alias{check,Assert-method}

 \title{Static method asserting that a generic condition is true}

 \description{
   Static method asserting that a generic condition is true.
 }

 \usage{
## Static method (use this):
## Assert$check(condition, message=NULL, ...)

## Don't use the below:
\method{check}{Assert}(static, condition, message=NULL, ...)
}

 \arguments{
  \item{condition}{A condition that should return \code{\link[base:logical]{TRUE}} if ok, or something
   else if not.}
  \item{message}{The error message to be reported on failure. If \code{\link[base]{NULL}},
   a message is automatically created.}
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
