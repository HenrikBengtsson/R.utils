%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  loadToEnv.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{loadToEnv}
\alias{loadToEnv.default}
\alias{loadToEnv}

\title{Method to load objects to a new environment}

\description{
  Method to load objects to a new environment for objects previously stored by \code{\link[base]{save}}().
}

\usage{\method{loadToEnv}{default}(...)}

\arguments{
  \item{...}{Arguments passed to \code{\link[base]{load}}().}
}

\value{
 Returns an \code{\link[base]{environment}} containing all loaded objects.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  Internally \code{\link[base]{load}}() is used.
  See also \code{\link{loadObject}}().
}



\keyword{IO}
\keyword{internal}
