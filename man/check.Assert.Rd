%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Assert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{check.Assert}
\alias{check.Assert}
\alias{Assert.check}
\alias{check.Assert}
\alias{check,Assert-method}


 \title{Static method asserting that a generic condition is true}

 \description{
   Static method asserting that a generic condition is true.
 }

 \synopsis{check.Assert(static, condition, message=NULL, ...)}
\usage{Assert$check(condition, message=NULL, ...)}

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

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{Assert}}.
 }
\keyword{internal}
\keyword{methods}
