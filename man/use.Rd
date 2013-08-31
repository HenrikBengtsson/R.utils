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

\title{Attaches or loads packages}

\description{
 Attaches or loads packages.
 If a package is not installed, it will be installed from one of the
 repositories.
}

\usage{
\method{use}{default}(pkg, version=NULL, how=c("attach", "load"), quietly=TRUE, warn.conflicts=!quietly,
  install=TRUE, repos=NULL, ..., verbose=FALSE)
}

\arguments{
 \item{pkg}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying the package(s) to be used.}
 \item{version}{(optional) Version constraint(s) on requested package(s).}
 \item{how}{A \code{\link[base]{character}} string specifying whether the package should be attached or loaded.}
 \item{quietly}{If \code{\link[base:logical]{TRUE}}, minimial or no messages are reported.}
 \item{warn.conflicts}{If \code{\link[base:logical]{TRUE}}, warnings on namespace conflicts are reported, otherwise not.}
 \item{install}{If \code{\link[base:logical]{TRUE}} and the package is not installed or an too old version is installed, then tries to install a newer version, otherwise not.}
 \item{repos}{(optional) A \code{\link[base]{character}} \code{\link[base]{vector}} specifying where to install the package from if not already installed.}
 \item{...}{Additional \emph{named} arguments passed to
   \code{\link[base]{require}}() or \code{\link[base]{requireNamespace}}().}
 \item{verbose}{If \code{\link[base:logical]{TRUE}}, verbose output is generated (regardless
   of \code{quietly}).}
}

\value{
 Returns a \code{\link[base]{vector}} of \code{\link[base]{package_version}}() for each package
 attached/loaded.
 If one of the requested packages/package versions is not available
 and could not be installed, an error is thrown.
}

\seealso{
  \code{\link[base]{library}}() and "base::install.packages".
}

\examples{\dontrun{
  use("digest")
  use("digest (>= 0.6.3)")
  use("digest (>= 0.6.3)", repos=c("CRAN", "R-Forge"))
  use("(CRAN|R-Forge)::digest (>= 0.6.3)")
  use("digest, R.rsp (>= 0.9.17)")
}}




\keyword{programming}
\keyword{utilities}
\keyword{internal}
