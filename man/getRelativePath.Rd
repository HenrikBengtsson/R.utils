%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  getRelativePath.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getRelativePath}
\alias{getRelativePath.default}
\alias{getRelativePath}

\title{Gets the relative pathname relative to a directory}

\usage{
\method{getRelativePath}{default}(pathname, relativeTo=getwd(), caseSensitive=NULL, ...)
}

\description{
  Gets the relative pathname relative to a directory.
}

\arguments{
 \item{pathname}{A \code{\link[base]{character}} string of the pathname to be converted into
   an relative pathname.}
 \item{relativeTo}{A \code{\link[base]{character}} string of the reference pathname.}
 \item{caseSensitive}{If \code{\link[base:logical]{TRUE}}, the comparison is case sensitive, otherwise
   not.  If \code{\link[base]{NULL}}, it is decided from the relative path.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string of the relative pathname.
}

\section{Non-case sensitive comparison}{
  If \code{caseSensitive == NULL}, the relative path is used to decide if
  the comparison should be done in a case-sensitive mode or not.
  The current check is if it is a Windows path or not, that is, if
  the relative path starts with a device letter, then the comparison
  is non-case sensitive.
}

\details{
  In case the two paths are on different file systems, for instance,
  C:/foo/bar/ and D:/foo/, the method returns \code{pathname} as is.
}

\examples{
  getRelativePath("foo", "foo")                       # "."
  getRelativePath("foo/bar", "foo")                   # "bar"
  getRelativePath("foo/bar", "foo/bar/yah")           # ".."
  getRelativePath("foo/bar/cool", "foo/bar/yah/sub/") # "../../cool"
  getRelativePath.default("/foo/bar/", "/bar/foo/")   # "../../foo/bar"

  # Windows
  getRelativePath("C:/foo/bar/", "C:/bar/")           # "../foo/bar"
  getRelativePath("C:/foo/bar/", "D:/bar/")           # "C:/foo/bar"
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{getAbsolutePath}}().
  \code{\link{isAbsolutePath}}().
}



\keyword{IO}
\keyword{programming}
