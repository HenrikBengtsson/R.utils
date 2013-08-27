%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  installPackages.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{installPackages}
\alias{installPackages.default}
\alias{installPackages}

\title{Install R packages by name or URL}

\description{
  Install R packages by name or URL.
}

\usage{
\method{installPackages}{default}(pkgs, types="auto", repos=getOption("repos"), ..., destPath=".",
  cleanup=TRUE)
}

\arguments{
  \item{pkgs}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying the names and/or the URLs
    of the R packages to be installed.}
  \item{types}{A \code{\link[base]{character}} \code{\link[base]{vector}} of corresponding package types.}
  \item{repos}{A \code{\link[base]{character}} \code{\link[base]{vector}} of package repository URLs.}
  \item{...}{Additional arguments passed to \code{\link[base]{install.packages}}.}
  \item{destPath}{Path where any downloaded files are saved.}
  \item{cleanup}{If \code{\link[base:logical]{TRUE}}, downloaded and successfully installed package
    files are removed, otherwise not.}
}

\value{
  Returns nothing.
}

\section{Limitations}{
  This method cannot install any packages that are already in use.
  Certain packages are always in use when calling this method, e.g.
  \pkg{R.methodsS3}, \pkg{R.oo}, and \pkg{R.utils}.
}

\examples{\dontrun{
 installPackages("R.rsp")
 installPackages("http://cran.r-project.org/src/contrib/Archive/R.rsp/R.rsp_0.8.2.tar.gz")
 installPackages("http://cran.r-project.org/bin/windows/contrib/r-release/R.rsp_0.9.17.zip")
}}

\author{Henrik Bengtsson}


\keyword{file}
