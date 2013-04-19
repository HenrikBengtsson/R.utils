%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  intervalsToSeq.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{intervalsToSeq.matrix}
\alias{intervalsToSeq.matrix}

\title{Generates a vector of indices from a matrix of intervals}

\description{
 Generates a vector of indices from a matrix of intervals.
}

\usage{
\method{intervalsToSeq}{matrix}(fromTo, sort=FALSE, unique=FALSE, ...)
}

\arguments{
  \item{fromTo}{An Nx2 \code{\link[base]{integer}} \code{\link[base]{matrix}}.}
  \item{sort}{If \code{\link[base:logical]{TRUE}}, the returned indices are ordered.}
  \item{unique}{If \code{\link[base:logical]{TRUE}}, the returned indices are unique.}
  \item{...}{Not used.}
}

\author{Henrik Bengtsson}

\examples{\dontrun{See example(seqToIntervals)}}

\seealso{
  \code{\link{seqToIntervals}}().
}


\keyword{methods}
\keyword{attribute}
