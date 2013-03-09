%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  resample.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{resample}
\alias{resample.default}
\alias{resample}

\title{Sample values from a set of elements}

\description{
 Sample values from a set of elements.
 Contrary to \code{\link[base]{sample}}(), this function also works as
 expected when there is only one element in the set to be sampled, cf. [1].
 This function originates from the example code of \code{\link[base]{sample}}()
 as of R v2.12.0.
}

\usage{
\method{resample}{default}(x, ...)
}

\arguments{
  \item{x}{A \code{\link[base]{vector}} of any length and data type.}
  \item{...}{Additional arguments passed to \code{\link[base]{sample.int}}().}
}

\value{
 Returns a sampled \code{\link[base]{vector}} of the same data types as argument \code{x}.
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[base]{sample}}() is used.
}

\references{
  [1] Henrik Bengtsson,
      \emph{Using sample() to sample one value from a single value?},
      R-devel mailing list, 2010-11-03.\cr
}



\keyword{IO}
\keyword{programming}
