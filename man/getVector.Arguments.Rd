%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getVector}
\alias{Arguments$getVector}
\alias{getVector.Arguments}
\alias{Arguments.getVector}
\alias{getVector,Arguments-method}

\title{Validates a vector}

\description{
 Validates a vector by checking its length (number of elements).
}

\usage{
## Static method (use this):
## Arguments$getVector(x, length=NULL, .name=NULL, ...)

## Don't use the below:
\method{getVector}{Arguments}(static, x, length=NULL, .name=NULL, ...)
}

\arguments{
  \item{x}{A single \code{\link[base]{vector}}.}
  \item{length}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length two or more. If two, it
    is the minimum and maximum length of \code{x}. Elsewise it is the
    set of possible lengths of \code{x}.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
  \item{...}{Not used.}
}

\value{
 Returns the same \code{\link[base]{vector}}, if it is valid. Otherwise an exception is
 thrown.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
