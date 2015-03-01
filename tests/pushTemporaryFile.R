library("R.utils")

createAtomically <- function(pathname, ...) {
  cat("Pathname: ", pathname, "\n", sep="")

  # Generate a file atomically, i.e. the file will either be
  # complete or not created at all.  If interrupted while
  # writing, only a temporary file will exist/remain.
  pathnameT <- pushTemporaryFile(pathname, verbose=TRUE)
  cat("Temporary pathname: ", pathnameT, "\n", sep="")

  cat(file=pathnameT, "This file was created atomically:\n")
  for (kk in 1:10) {
    cat(file=pathnameT, kk, "\n", append=TRUE)
    # Emulate a slow process
    if (interactive()) Sys.sleep(0.1)
  }
  cat(file=pathnameT, "END OF FILE\n", append=TRUE)

  # Rename the temporary file
  pathname <- popTemporaryFile(pathnameT, verbose=TRUE)

  pathname
} # createAtomically()


pathname <- tempfile()

tryCatch({
  # Try to interrupt the process while writing...
  pathname <- createAtomically(pathname)
}, interrupt=function(intr) {
  str(intr)
})

# ...and this will throw an exception
bfr <- readLines(pathname)
cat(bfr, sep="\n")
