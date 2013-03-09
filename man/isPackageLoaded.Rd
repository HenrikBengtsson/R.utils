%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isPackageLoaded.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isPackageLoaded}
\alias{isPackageLoaded.default}
\alias{isPackageLoaded}

\title{Checks if a package is loaded or not}

\description{
  Checks if a package is loaded or not.
  Note that, contrary to \code{\link[base:library]{require}()},
  this function does not load the package if not loaded.
}

\usage{
\method{isPackageLoaded}{default}(package, version=NULL, ...)
}

\arguments{
 \item{package}{The name of the package.}
 \item{version}{A \code{\link[base]{character}} string specifying the version to test for.
    If \code{\link[base]{NULL}}, any version is tested for.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{logical}}.
}

\author{Henrik Bengtsson}

\seealso{
  To check if a package is installed or not, see \code{\link{isPackageInstalled}}().
}



\keyword{utilities}
\keyword{package}
