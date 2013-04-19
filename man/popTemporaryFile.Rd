%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  popTemporaryFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{popTemporaryFile}
\alias{popTemporaryFile.default}
\alias{popTemporaryFile}

 \title{Drops a temporary suffix from the temporary pathname}

 \usage{
\method{popTemporaryFile}{default}(filename, path=NULL, suffix=".tmp", isFile=TRUE, ..., verbose=FALSE)
}

 \description{
  Drops a temporary suffix from the temporary pathname and, by default, renames an existing temporary file
  accordingly.
 }

 \arguments{
   \item{filename}{The filename of the temporary file.}
   \item{path}{The path of the temporary file.}
   \item{suffix}{The suffix of the temporary filename to be dropped.}
   \item{isFile}{If \code{\link[base:logical]{TRUE}}, the temporary file must exist and
      will be renamed.  If \code{\link[base:logical]{FALSE}}, it is only the pathname string
      that will be modified. For details, see below.}
   \item{...}{Not used.}
   \item{verbose}{A \code{\link[base]{logical}} or \code{\link{Verbose}}.}
 }

 \value{
   Returns the pathname with the temporary suffix dropped.
 }

 \details{
   If \code{isFile} is \code{\link[base:logical]{FALSE}}, the pathname where the suffix of the
   temporary pathname has been dropped is returned.
   If \code{isFile} is \code{\link[base:logical]{TRUE}}, the temporary file is renamed.
   Then, if the temporary file does not exists or it was not successfully
   renamed, an exception is thrown.
 }

 \author{Henrik Bengtsson}

 \seealso{
  See \code{\link{pushTemporaryFile}}() for more details and an example.
 }




\keyword{utilities}
\keyword{programming}
\keyword{IO}
