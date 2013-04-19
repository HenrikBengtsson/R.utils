%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  mkdirs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{mkdirs}
\alias{mkdirs.default}
\alias{mkdirs}

 \title{Creates a directory including any necessary but nonexistent parent directories}

 \description{
  Creates a directory including any necessary but nonexistent parent directories.
 }

 \usage{
\method{mkdirs}{default}(pathname, ...)
}

 \arguments{
   \item{pathname}{A \code{\link[base]{character}} string of the pathname to be checked.}
   \item{...}{Not used.}
 }

 \value{
  Returns \code{\link[base:logical]{TRUE}} if the directory was succesfully created,
  otherwise \code{\link[base:logical]{FALSE}}.
  Note that if the directory already exists, \code{\link[base:logical]{FALSE}} is returned.
 }



 \author{Henrik Bengtsson}

 \seealso{
   Internally \code{\link[base:files]{dir.create}}() is used.
 }



\keyword{IO}
\keyword{programming}
