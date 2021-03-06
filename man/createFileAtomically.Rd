%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  createFileAtomically.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{createFileAtomically}
\alias{createFileAtomically.default}
\alias{createFileAtomically}

 \title{Creates a file atomically}

 \usage{
\method{createFileAtomically}{default}(filename, path=NULL, FUN, ..., skip=FALSE, overwrite=FALSE,
  backup=TRUE, verbose=FALSE)
}

 \description{
  Creates a file atomically by first creating and writing to a temporary file which
  is then renamed.
 }

 \arguments{
   \item{filename}{The filename of the file to create.}
   \item{path}{The path to the file.}
   \item{FUN}{A \code{\link[base]{function}} that creates and writes to the pathname that
      is passed as the first argument.  This pathname is guaranteed
      to be a non-existing temporary pathname.}
   \item{...}{Additional arguments passed to \code{\link{pushTemporaryFile}}()
      and \code{\link{popTemporaryFile}}().}
   \item{skip}{If \code{\link[base:logical]{TRUE}} and a file with the same pathname already exists,
      nothing is done/written.}
   \item{overwrite}{If \code{\link[base:logical]{TRUE}} and a file with the same pathname
      already exists, the existing file is overwritten.
      This is also done atomically such that if the new file was not
      successfully created, the already original file is restored.
      If restoration also failed, the original file remains as
      the pathname with suffix \code{".bak"} appended.}
   \item{backup}{If \code{\link[base:logical]{TRUE}} and a file with the same pathname already exists,
      then it is backed up while creating the new file.  If the new file
      was not successfully created, the original file is restored from
      the backup copy.}
   \item{verbose}{A \code{\link[base]{logical}} or \code{\link{Verbose}}.}
 }

 \value{
   Returns (invisibly) the pathname.
 }

 \examples{

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Create a file atomically
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
n <- 10
pathname <- createFileAtomically("foobar.txt", path=tempdir(), FUN=function(pathname) {
  cat(file=pathname, "This file was created atomically.\n")
  cat(file=pathname, "Timestamp: ", as.character(Sys.time()), "\n", sep="")
  for (kk in 1:n) {
    cat(file=pathname, kk, "\n", append=TRUE)
    # Emulate a slow process
    if (interactive()) Sys.sleep(0.1)
  }
  cat(file=pathname, "END OF FILE\n", append=TRUE)
}, overwrite=TRUE)

bfr <- readLines(pathname)
cat(bfr, sep="\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Overwrite the file atomically (emulate write failure)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
tryCatch({
  pathname <- createFileAtomically("foobar.txt", path=tempdir(), FUN=function(pathname) {
    cat(file=pathname, "Trying to create a new file.\n")
    cat(file=pathname, "Writing a bit, but then an error...\n", append=TRUE)
    # Emulate write error
    stop("An error occured while writing to the new file.")
    cat(file=pathname, "END OF FILE\n", append=TRUE)
  }, overwrite=TRUE)
}, error = function(ex) {
  print(ex$message)
})

# The original file was never overwritten
bfr2 <- readLines(pathname)
cat(bfr2, sep="\n")
stopifnot(identical(bfr2, bfr))

# The partially temporary file remains
pathnameT <- sprintf("\%s.tmp", pathname)
stopifnot(isFile(pathnameT))
bfr3 <- readLines(pathnameT)
cat(bfr3, sep="\n")

file.remove(pathnameT)
file.remove(pathname)
}

 \author{Henrik Bengtsson}

 \seealso{
  Internally,
  \code{\link{pushTemporaryFile}}() and \code{\link{popTemporaryFile}}() are used for
  working toward a temporary file, and
  \code{\link{pushBackupFile}}() and \code{\link{popBackupFile}}() are used for backing up
  and restoring already existing file.
 }




\keyword{utilities}
\keyword{programming}
\keyword{IO}
