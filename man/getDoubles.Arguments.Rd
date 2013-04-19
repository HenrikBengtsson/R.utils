%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getDoubles}
\alias{Arguments$getDoubles}
\alias{getDoubles.Arguments}
\alias{Arguments.getDoubles}
\alias{getDoubles,Arguments-method}
\alias{Arguments.getDouble}
\alias{getDouble.Arguments}
\alias{getDouble,Arguments-method}


\title{Coerces to a double vector and validates}

\description{
 Coerces to a double vector and validates.
}

\usage{
## Static method (use this):
## Arguments$getDoubles(..., disallow=c("NA", "NaN"))

## Don't use the below:
\method{getDoubles}{Arguments}(static, ..., disallow=c("NA", "NaN"))
}

\arguments{
  \item{...}{Arguments passed to @method "getNumeric".}
  \item{disallow}{Disallowed values. See @method "getNumerics" for details.}
}

\value{
 Returns a \code{\link[base]{double}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
