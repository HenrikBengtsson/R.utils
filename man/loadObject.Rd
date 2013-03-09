%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  loadObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{loadObject}
\alias{loadObject.default}
\alias{loadObject}

\title{Method to load object from a file or a connection}

\description{
  Method to load object from a file or a connection, which previously have been saved using \code{\link{saveObject}}().
}

\usage{
\method{loadObject}{default}(file, path=NULL, ...)
}

\arguments{
 \item{file}{A filename or \code{\link[base:connections]{connection}} to read the object from.}
 \item{path}{The path where the file exists.}
  \item{...}{Not used.}
}

\value{
 Returns the save object.
}

\details{
  The main difference from this method and \code{\link[base]{load}}() in the
  \pkg{base} package, is that this one returns the object read rather
  than storing it in the global environment by its default name.
  This makes it possible to load objects back using any variable name.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{saveObject}}() to save an object to file.
  Internally \code{\link[base]{load}}() is used.
  See also \code{\link{loadToEnv}}().
}



\keyword{programming}
\keyword{IO}
