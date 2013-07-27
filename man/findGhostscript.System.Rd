%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{System$findGhostscript}
\alias{System$findGhostscript}
\alias{findGhostscript.System}
\alias{System.findGhostscript}
\alias{findGhostscript,System-method}

\title{Searches for a Ghostview executable on the current system}

\description{
  Searches for a Ghostview executable on the current system.

  Currently only Windows and Unix is supported.
}

\usage{
## Static method (use this):
## System$findGhostscript(updateRGSCMD=TRUE, firstOnly=TRUE, force=FALSE, ...)

## Don't use the below:
\method{findGhostscript}{System}(static, updateRGSCMD=TRUE, firstOnly=TRUE, force=FALSE, ...)
}

\arguments{
  \item{updateRGSCMD}{If \code{\link[base:logical]{TRUE}} and Ghostscript is found, then the system
    environment variable \code{R_GSCMD} is set to the (first) path found.
    This variable is used by the \code{bitmap()} device.}
  \item{firstOnly}{If \code{\link[base:logical]{TRUE}}, only the first executable is returned.}
  \item{force}{If \code{\link[base:logical]{TRUE}}, existing \code{R_GSCMD} is ignored, otherwise not.}
  \item{...}{Not used.}
}


\value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of full pathnames where Ghostscript
  executable are found.
}

\examples{\dontrun{
  print(System$findGhostscript())
}}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{Sys.getenv}}().
  \code{\link[grDevices]{dev2bitmap}}.
  For more information see \code{\link{System}}.
}
\keyword{internal}
\keyword{methods}
