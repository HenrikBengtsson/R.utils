%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  detachPackage.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{detachPackage}
\alias{detachPackage.default}
\alias{detachPackage}

\title{Detaches packages by name}

\description{
  Detaches packages by name, if loaded.
}

\usage{
\method{detachPackage}{default}(pkgname, ...)
}

\arguments{
 \item{pkgname}{A \code{\link[base]{character}} \code{\link[base]{vector}} of package names to be detached.}
 \item{...}{Not used.}
}

\value{
  Returns (invisibly) a named \code{\link[base]{logical}} \code{\link[base]{vector}} indicating whether
  each package was detached or not.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{detach}}().
}


\keyword{programming}
