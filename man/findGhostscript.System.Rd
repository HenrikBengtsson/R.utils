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
}

\usage{
## Static method (use this):
## System$findGhostscript(updateRGSCMD=TRUE, firstOnly=TRUE, force=FALSE, ...)

## Don't use the below:
\method{findGhostscript}{System}(static, updateRGSCMD=TRUE, firstOnly=TRUE, force=FALSE, ...)
}

\arguments{
  \item{updateRGSCMD}{If \code{\link[base:logical]{TRUE}} and Ghostscript is found, then the system
    environment variable \code{\link[base]{R_GSCMD}} is set to the (first) path
    found.}
  \item{firstOnly}{If \code{\link[base:logical]{TRUE}}, only the first executable is returned.}
  \item{force}{If \code{\link[base:logical]{TRUE}}, existing \code{\link[base]{R_GSCMD}} is ignored,
    otherwise not.}
  \item{...}{Not used.}
}


\value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of full and normalized pathnames
  where Ghostscript executables are found.
}

\examples{\dontrun{
  print(System$findGhostscript())
}}

\author{Henrik Bengtsson}

\references{
 [1] \emph{How to use Ghostscript}, Ghostscript, 2013
     \url{http://ghostscript.com/doc/current/Use.htm}\cr
 [2] \emph{Environment variable}, Wikipedia, 2013.
     \url{http://www.wikipedia.org/wiki/Environment_variable}\cr
 [3] \emph{Environment.SpecialFolder Enumeration},
     Microsoft Developer Network, 2013.
     \url{http://msdn.microsoft.com/en-us/library/system.environment.specialfolder.aspx}\cr
}

\seealso{
  For more information see \code{\link{System}}.
}
\keyword{internal}
\keyword{methods}
