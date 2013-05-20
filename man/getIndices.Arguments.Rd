%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getIndices}
\alias{Arguments$getIndices}
\alias{getIndices.Arguments}
\alias{Arguments.getIndices}
\alias{getIndices,Arguments-method}
\alias{Arguments.getIndex}
\alias{getIndex.Arguments}
\alias{getIndex,Arguments-method}


\title{Coerces to a integer vector and validates}

\description{
 Coerces to a integer vector and validates.
}

\usage{
## Static method (use this):
## Arguments$getIndices(x, ..., max=Inf, range=c(1 * (max > 0L), max), .name=NULL)

## Don't use the below:
\method{getIndices}{Arguments}(static, x, ..., max=Inf, range=c(1 * (max > 0L), max), .name=NULL)
}

\arguments{
  \item{x}{A single \code{\link[base]{vector}}.  If \code{\link[base]{logical}}, \code{\link[base]{which}}() is used.}
  \item{...}{Arguments passed to @method "getIntegers".}
  \item{range}{Allowed range. See @method "getNumerics" for details.}
  \item{max}{The maximum of the default range.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
}

\value{
 Returns an \code{\link[base]{integer}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
