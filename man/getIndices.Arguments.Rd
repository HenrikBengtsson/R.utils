%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getIndices.Arguments}
\alias{getIndices.Arguments}
\alias{Arguments.getIndices}
\alias{getIndices.Arguments}
\alias{getIndices,Arguments-method}

\alias{Arguments.getIndex}
\alias{getIndex.Arguments}
\alias{getIndex,Arguments-method}


\title{Coerces to a integer vector and validates}

\description{
 Coerces to a integer vector and validates.
}

\synopsis{getIndices.Arguments(static, x, ..., range=c(1, Inf), .name=NULL)}
\usage{Arguments$getIndices(x, ..., range=c(1, Inf), .name=NULL)}

\arguments{
  \item{x}{A single \code{\link[base]{vector}}.  If \code{\link[base]{logical}}, \code{\link[base]{which}}() is used.}
  \item{...}{Arguments passed to @method "getIntegers".}
  \item{range}{Allowed range. See @method "getNumerics" for details.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
}

\value{
 Returns an \code{\link[base]{integer}} \code{\link[base]{vector}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
