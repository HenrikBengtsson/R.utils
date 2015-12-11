%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  seqToHumanReadable.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{seqToHumanReadable}
\alias{seqToHumanReadable.default}
\alias{seqToHumanReadable}

\title{Gets a short human readable string representation of an vector of indices}

\description{
 Gets a short human readable string representation of an vector of indices.
}

\usage{
\method{seqToHumanReadable}{default}(idx, tau=2L, delimiter="-", collapse=", ", ...)
}

\arguments{
  \item{idx}{A \code{\link[base]{vector}} of \code{\link[base]{integer}} indices.}
  \item{tau}{A non-negative \code{\link[base]{integer}} specifying the minimum span of
   of a contiguous sequences for it to be collapsed to
   \code{<from>-<to>}.}
  \item{delimiter}{A \code{\link[base]{character}} string delimiter.}
  \item{collapse}{A \code{\link[base]{character}} string used to collapse subsequences.}
  \item{...}{Not used.}
}

\author{Henrik Bengtsson}

\examples{
  print(seqToHumanReadable(1:2))                 # "1, 2"
  print(seqToHumanReadable(1:2, tau=1))          # "1-2"
  print(seqToHumanReadable(1:10))                # "1-10"
  print(seqToHumanReadable(c(1:10, 15:18, 20)))  # "1-10, 15-18, 20"
}

\seealso{
  Internally, \code{\link{seqToIntervals}}() is used.
}


\keyword{attribute}
