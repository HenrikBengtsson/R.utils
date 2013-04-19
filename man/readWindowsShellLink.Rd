%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  readWindowsShellLink.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{readWindowsShellLink}
\alias{readWindowsShellLink.default}
\alias{readWindowsShellLink}

\title{Reads a Microsoft Windows Shortcut (.lnk file)}

\usage{
\method{readWindowsShellLink}{default}(con, clean=TRUE, verbose=FALSE, ...)
}

\description{
  Reads a Microsoft Windows Shortcut (.lnk file).
}

\arguments{
  \item{con}{A \code{\link[base:connections]{connection}} or a \code{\link[base]{character}} string (filename).}
  \item{clean}{If \code{\link[base:logical]{TRUE}}, low-level file specific fields are dropped,
     e.g. offsets on file locations.}
  \item{verbose}{If \code{\link[base:logical]{TRUE}}, extra information is written while reading.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{list}} structure.
}

\examples{

pathname <- system.file("data-ex/HISTORY.LNK", package="R.utils")
lnk <- readWindowsShellLink(pathname)
str(lnk)
str(lnk$pathname)

lnk0 <- readWindowsShortcut(pathname)
str(lnk0$pathname)
}

\details{
 This function is implemented based on the official file format
 specification [1].
 It is intended to replace \code{\link{readWindowsShortcut}}(), which was
 written based on reverse engineering (before [1] was made available).
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{readWindowsShortcut}}()
  \code{\link{filePath}}
}

\references{
  [1] [MS-SHLLINK]: Shell Link (.LNK) Binary File Format, Microsoft Inc.,
      September 25, 2009. \cr
}




\keyword{file}
\keyword{IO}
\keyword{internal}
