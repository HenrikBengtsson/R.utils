%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  createLink.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{createLink}
\alias{createLink.default}
\alias{createLink}

\title{Creates a link to a file or a directory}

\usage{
\method{createLink}{default}(link=".", target, skip=!overwrite, overwrite=FALSE,
  methods=getOption("createLink/args/methods", c("unix-symlink", "windows-ntfs-symlink",
  "windows-shortcut")), ...)
}

\description{
  Creates a link to a file or a directory.
  This method tries to create a link to a file/directory on the
  file system, e.g. a symbolic link and Windows Shortcut links.
  It depends on operating and file system (and argument settings),
  which type of link is finally created, but all this is hidden
  internally so that links can be created the same way regardless
  of system.
}

\arguments{
  \item{link}{The path or pathname of the link to be created.
    If \code{"."} (or \code{\link[base]{NULL}}), it is inferred from the
    \code{target} argument, if possible.}
  \item{target}{The target file or directory to which the shortcut should
    point to.}
  \item{skip}{If \code{\link[base:logical]{TRUE}} and a file with the same name as argument
    \code{link} already exists, then the nothing is done.}
  \item{overwrite}{If \code{\link[base:logical]{TRUE}}, an existing link file is overwritten,
    otherwise not.}
  \item{methods}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying what methods (and in
    what order) should be tried for creating links.}
  \item{...}{Not used.}
}

\value{
  Returns (invisibly) the path or pathname to the link.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{createWindowsShortcut}}() and
  \code{\link[base:files]{file.symlink}()}
}

\references{
  Ben Garrett, \emph{Windows File Junctions, Symbolic Links and Hard Links},
  September 2009 [\url{http://goo.gl/R21AC}]\cr
}



\keyword{file}
\keyword{IO}
