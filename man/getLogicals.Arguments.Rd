%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getLogicals.Arguments}
\alias{getLogicals.Arguments}
\alias{Arguments.getLogicals}
\alias{getLogicals.Arguments}
\alias{getLogicals,Arguments-method}

\alias{Arguments.getLogical}
\alias{getLogical.Arguments}
\alias{getLogical,Arguments-method}


\title{Coerces to a logical vector and validates}

\description{
 Coerces to a logical vector and validates.
}

\usage{
## Static method (use this):
## Arguments$getLogicals(x, ..., disallow=c("NA", "NaN"), coerce=FALSE, .name=NULL)

## Don't use the below:
\method{getLogicals}{Arguments}(static, x, ..., disallow=c("NA", "NaN"), coerce=FALSE, .name=NULL)
}

\arguments{
  \item{x}{A \code{\link[base]{vector}}.}
  \item{disallow}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying diallowed value sets
     after coercing, i.e. \code{"NA"}.}
  \item{...}{Arguments passed to @method "getVector".}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
}

\value{
 Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
