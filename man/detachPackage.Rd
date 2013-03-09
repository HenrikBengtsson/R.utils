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

\title{Detaches a packages by name}

\description{
  Detaches a packages by name, if loaded.
}

\usage{
\method{detachPackage}{default}(pkgname, ...)
}

\arguments{
 \item{pkgname}{A \code{\link[base]{character}} string of the package name to be detached.}
 \item{...}{Not used.}
}

\value{
  Returns (invisibly) \code{\link[base:logical]{TRUE}} if package was detached, otherwise \code{\link[base:logical]{FALSE}}.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{detach}}().
}


\keyword{programming}
