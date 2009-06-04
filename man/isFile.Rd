%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{isFile}
\alias{isFile.default}
\alias{isFile}

 \title{Checks if the file specification is a file}

 \description{
  Checks if the file specification is a file.
 }

 \usage{\method{isFile}{default}(pathname, ...)}

 \arguments{
   \item{pathname}{A \code{\link[base]{character}} string of the pathname to be checked.}
   \item{...}{Not used.}
 }

 \value{
  Returns \code{\link[base:logical]{TRUE}} if the file specification is a file, otherwise
  \code{\link[base:logical]{FALSE}} is returned.
 }



 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   To check if it is a directory see \code{\link{isDirectory}}().
   Internally \code{\link[base]{file.info}}() is used.
 }



\keyword{IO}
\keyword{programming}
