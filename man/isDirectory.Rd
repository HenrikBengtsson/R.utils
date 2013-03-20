%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isDirectory.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{isDirectory}
\alias{isDirectory.default}
\alias{isDirectory}

 \title{Checks if the file specification is a directory}

 \description{
  Checks if the file specification is a directory.
 }

 \usage{
\method{isDirectory}{default}(pathname, ...)
}

 \arguments{
   \item{pathname}{A \code{\link[base]{character}} string of the pathname to be checked.}
   \item{...}{Not used.}
 }

 \value{
  Returns \code{\link[base:logical]{TRUE}} if the file specification is a directory, otherwise
  \code{\link[base:logical]{FALSE}} is returned.
 }



 \author{Henrik Bengtsson}

 \seealso{
   To check if it is a file see \code{\link{isFile}}().
   Internally \code{\link[base]{file.info}}() is used.
   See also \code{\link[utils]{file_test}}.
 }



\keyword{IO}
\keyword{programming}
