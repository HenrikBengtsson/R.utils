%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  saveObject.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{saveObject}
\alias{saveObject.default}
\alias{saveObject}

\title{Saves an object to a file or a connection}

\description{
  Saves an object to a file or a connection.
}

\usage{
\method{saveObject}{default}(object, file=NULL, path=NULL, compress=TRUE, ..., safe=TRUE)
}

\arguments{
 \item{object}{The object to be saved.}
 \item{file}{A filename or \code{\link[base:connections]{connection}} where the object should be saved.
   If \code{\link[base]{NULL}}, the filename will be the hash code of the object plus ".xdr".}
 \item{path}{Optional path, if \code{file} is a filename.}
 \item{compress}{If \code{\link[base:logical]{TRUE}}, the file is compressed to, otherwise not.}
 \item{...}{Other arguments accepted by \code{save()} in the base package.}
 \item{safe}{If \code{\link[base:logical]{TRUE}} and \code{file} is a file, then, in order to lower
   the risk for incomplete files, the object is first written to a
   temporary file, which is then renamed to the final name.}
}

\value{
 Returns (invisibly) the pathname or the \code{\link[base:connections]{connection}}.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{loadObject}}() to load an object from file.
  \code{\link[digest]{digest}} for how hash codes are calculated from an object.
  See also \code{\link[base]{saveRDS}}().
}



\keyword{programming}
\keyword{IO}
