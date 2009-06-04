%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  copyFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{copyFile}
\alias{copyFile.default}
\alias{copyFile}

 \title{Copies a file safely}

 \description{
  Copies a file safely by first copying to a temporary file and then renaming that
  file.
 }

 \usage{\method{copyFile}{default}(srcPathname, destPathname, overwrite=FALSE, ..., verbose=FALSE)}

 \arguments{
   \item{srcPathname}{The source file to be copied.}
   \item{destPathname}{The destination file to be created.}
   \item{overwrite}{If \code{\link[base:logical]{TRUE}}, an existing destination file is overwritten.}
   \item{...}{Not used.}
   \item{verbose}{See \code{\link[R.utils]{Verbose}}.}
 }

 \value{
   Returns \code{\link[base:logical]{TRUE}} if the file was copied succesfully.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[base]{file.copy}}()
 }


\keyword{internal}
