%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  use.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{use}
\alias{use.default}
\alias{use}

\title{Attaches or loads a package}

\description{
 Attaches or loads a package.
 If not installed, it will be installed from one of the package repositories.
}

\usage{
\method{use}{default}(pkg, version=NULL, how=c("attach", "load"), quietly=TRUE, warn.conflicts=!quietly,
  install=TRUE, repos=NULL, ..., verbose=FALSE)
}

\arguments{
 \item{pkg}{A \code{\link[base]{character}} string specifying the package to be used.}
 \item{how}{A \code{\link[base]{character}} string specifying whether the package should be attached or loaded.}
 \item{quietly}{If \code{\link[base:logical]{TRUE}}, minimial or no messages are reported.}
 \item{warn.conflicts}{If \code{\link[base:logical]{TRUE}}, warnings on namespace conflicts are reported, otherwise not.}
 \item{version}{(optional) Requested package version constraint.}
 \item{repos}{(optional) A \code{\link[base]{character}} \code{\link[base]{vector}} specifying where to install the package from if not already installed.}
 \item{install}{If \code{\link[base:logical]{TRUE}} and the package is not installed or an too old version is installed, then tries to install a newer version, otherwise not.}
 \item{...}{Additional arguments passed to \code{\link[base]{require}}() or
   \code{\link[base]{requireNamespace}}().}
 \item{verbose}{If \code{\link[base:logical]{TRUE}}, verbose output is generated (regardless
   of \code{quietly}).}
}

\value{
 Returns the \code{\link[base]{package_version}}() of the package attached/loaded.
 If requested package/package version is not available and could not
 be installed, an error is thrown.
}

\seealso{
  \code{\link[base]{library}}() and "base::install.packages".
}

\examples{\dontrun{
  use("R.devices")
  use("R.devices (>= 2.5.0)")
  use("R.devices (>= 2.6.0)", repos=c("CRAN", "R-Forge"))
  use("(CRAN|R-Forge)::R.devices (>= 2.6.0)")
}}




\keyword{programming}
\keyword{utilities}
\keyword{internal}
