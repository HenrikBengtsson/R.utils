%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  pushTemporaryFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{pushTemporaryFile}
\alias{pushTemporaryFile.default}
\alias{pushTemporaryFile}

 \title{Appends a temporary suffix to the pathname}

 \usage{
\method{pushTemporaryFile}{default}(filename, path=NULL, suffix=".tmp", isFile=FALSE, ..., verbose=FALSE)
}

 \description{
  Appends a temporary suffix to the pathname and, optionally, renames an existing file accordingly.

  In combination with \code{\link{popTemporaryFile}}(), this method is useful
  for creating a file/writing data to file \emph{atomically}, by
  first writing to a temporary file which is the renamed.  If for
  some reason the generation of the file was interrupted, for instance
  by a user interrupt or a power failure, then it is only the temporary
  file that is incomplete.
 }

 \arguments{
   \item{filename}{The filename of the file.}
   \item{path}{The path of the file.}
   \item{suffix}{The suffix to be appended.}
   \item{isFile}{If \code{\link[base:logical]{TRUE}}, the file must exist and will be renamed
      on the file system.  If \code{\link[base:logical]{FALSE}}, it is only the pathname string
      that will be modified. For details, see below.}
   \item{...}{Not used.}
   \item{verbose}{A \code{\link[base]{logical}} or \code{\link{Verbose}}.}
 }

 \value{
   Returns the pathname with the suffix appended.
 }

 \details{
   If \code{isFile} is \code{\link[base:logical]{FALSE}}, the pathname where the suffix of the
   temporary pathname has been added is returned.
   If \code{isFile} is \code{\link[base:logical]{TRUE}}, the file is also renamed.
   Then, if the file does not exists or it was not successfully
   renamed, an exception is thrown.
 }

 \examples{

createAtomically <- function(pathname, ...) {
  cat("Pathname: ", pathname, "\n", sep="");

  # Generate a file atomically, i.e. the file will either be
  # complete or not created at all.  If interrupted while
  # writing, only a temporary file will exist/remain.
  pathnameT <- pushTemporaryFile(pathname);
  cat("Temporary pathname: ", pathnameT, "\n", sep="");

  cat(file=pathnameT, "This file was created atomically:\n");
  for (kk in 1:10) {
    cat(file=pathnameT, kk, "\n", append=TRUE);
    # Emulate a slow process
    if (interactive()) Sys.sleep(0.1)
  }
  cat(file=pathnameT, "END OF FILE\n", append=TRUE);

  # Rename the temporary file
  pathname <- popTemporaryFile(pathnameT);

  pathname;
} # createAtomically()


pathname <- tempfile();

tryCatch({
  # Try to interrupt the process while writing...
  pathname <- createAtomically(pathname);
}, interrupt=function(intr) {
  str(intr);
})

# ...and this will throw an exception
bfr <- readLines(pathname);
cat(bfr, sep="\n");
}

 \author{Henrik Bengtsson}

 \seealso{
  \code{\link{popTemporaryFile}}().
 }




\keyword{utilities}
\keyword{programming}
\keyword{IO}
