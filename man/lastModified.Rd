%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  lastModified.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{lastModified}
\alias{lastModified.default}
\alias{lastModified}

 \title{Gets the time when the file was last modified}

 \description{
  Gets the time when the file was last modified. The time is returned as a \code{POSIXct} object.
 }

 \usage{
\method{lastModified}{default}(pathname, ...)
}

 \arguments{
   \item{pathname}{A \code{\link[base]{character}} string of the pathname to be checked.}
   \item{...}{Not used.}
 }

 \value{
  Returns \code{POSIXct} object specifying when the file was last modified.
  If the file does not exist or it is a directory, \code{0} is returned.
 }



 \author{Henrik Bengtsson}

 \seealso{
   Internally \code{\link[base]{file.info}}() is used.
 }



\keyword{IO}
\keyword{programming}
