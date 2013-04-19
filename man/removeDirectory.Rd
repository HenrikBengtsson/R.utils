%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  removeDirectory.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{removeDirectory}
\alias{removeDirectory.default}
\alias{removeDirectory}

 \title{Removes a directory}

 \description{
  Removes a directory, and if requested, also its contents.
 }

 \usage{
\method{removeDirectory}{default}(path, recursive=FALSE, mustExist=TRUE, ...)
}

 \arguments{
   \item{path}{A \code{\link[base]{character}} string specifying the directory to be removed.}
   \item{recursive}{If \code{\link[base:logical]{TRUE}}, subdirectories and files are also removed.
     If \code{\link[base:logical]{FALSE}}, and directory is non-empty, an exception is thrown.}
   \item{mustExist}{If \code{\link[base:logical]{TRUE}}, and the directory does not exist,
     an exception is thrown.}
   \item{...}{Not used.}
 }

 \value{
  Returns (invisibly) \code{\link[base:logical]{TRUE}}, the directory was successfully removed,
  otherwise \code{\link[base:logical]{FALSE}}, unless an exception is thrown.
 }



 \author{Henrik Bengtsson}

 \seealso{
   Internally \code{\link[base]{unlink}}() is used.
 }



\keyword{IO}
\keyword{programming}
