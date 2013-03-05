%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getIntegers}
\alias{Arguments$getIntegers}
\alias{getIntegers.Arguments}
\alias{Arguments.getIntegers}
\alias{getIntegers,Arguments-method}
\alias{Arguments.getInteger}
\alias{getInteger.Arguments}
\alias{getInteger,Arguments-method}


\title{Coerces to a integer vector and validates}

\description{
 Coerces to a integer vector and validates.
}

\usage{
## Static method (use this):
## Arguments$getIntegers(..., disallow=c("NA", "NaN"))

## Don't use the below:
\method{getIntegers}{Arguments}(static, ..., disallow=c("NA", "NaN"))
}

\arguments{
  \item{...}{Arguments passed to @method "getNumeric".}
  \item{disallow}{Disallowed values. See @method "getNumerics" for details.}
}

\value{
 Returns a \code{\link[base]{integer}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
