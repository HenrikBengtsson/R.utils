%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  findFiles.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{findFiles}
\alias{findFiles.default}
\alias{findFiles}

\title{Finds one or several files in multiple directories}

\description{
 Finds one or several files in multiple directories.
}

\usage{
\method{findFiles}{default}(pattern=NULL, paths=NULL, recursive=FALSE, firstOnly=TRUE, allFiles=TRUE, ...)
}

\arguments{
 \item{pattern}{A regular expression file name pattern to match.}
 \item{paths}{A \code{\link[base]{character}} \code{\link[base]{vector}} of paths to be searched.}
 \item{recursive}{If \code{\link[base:logical]{TRUE}}, the directory structure is searched
   breath-first, in lexicographic order.}
 \item{firstOnly}{If \code{\link[base:logical]{TRUE}}, the method returns as soon as a matching
   file is found, otherwise not.}
 \item{allFiles}{If \code{\link[base:logical]{FALSE}}, files and directories starting with
   a period will be skipped, otherwise not.}
 \item{...}{Arguments passed to \code{\link[base]{list.files}}().}
}

\value{
 Returns a \code{\link[base]{vector}} of the full pathnames of the files found.
}

\section{Search path}{
  The \code{paths} argument may also contain paths specified as
  semi-colon (\code{";"}) separated paths, e.g.
  \code{"/usr/;usr/bin/;.;"}.
}

\section{Windows Shortcut links}{
  Windows Shortcut links (*.lnk) are recognized and can be used
  to immitate links to directories elsewhere.
  For more details, see \code{\link{filePath}}().
}

\author{Henrik Bengtsson}




\keyword{file}
\keyword{IO}
\keyword{internal}
