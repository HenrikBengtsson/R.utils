library("R.utils")
verbose <- Arguments$getVerbose(TRUE, timestamp=TRUE)

# Run only tests if this platform/client supports symbolic file links
canSymlink <- tryCatch({
  res <- file.symlink(".", "test-symlink-dir")
  if (isDirectory("test-symlink-dir")) removeDirectory("test-symlink-dir")
  res
}, error = function(ex) FALSE)


# Test only if symlinks are supported
if (canSymlink) {

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fileAccessT <- function(pathname, modes=c(exist=0, exec=1, write=2, read=4)) {
  sapply(modes, FUN=function(mode) fileAccess(pathname, mode=mode))
}


filename <- "foo.txt"
paths <- list(".", tempdir())

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# FILES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (path in paths) {
  verbose && enter(verbose, "Symbolic links to files")
  verbose && cat(verbose, "Path: ", path)

  pathnameS <- pathname <- file.path(path, filename)

  # WORKAROUND: On Windows, file.symlink() does not translate forward
  # slashes for you! Fixed (PR#15631) in r64711 2014-01-09.
  if (.Platform$OS.type == "windows") {
    pathnameS <- gsub("/", "\\", pathname, fixed=TRUE)
  }

  # Create a target file
  cat("Hello", file=pathname)

  # Create a symbolic link
  pathnameL <- file.path(path, sprintf("link-to-%s", filename))
  file.symlink(pathnameS, pathnameL)
  stopifnot(isFile(pathnameL))
  stopifnot(identical(lastModified(pathnameL), lastModified(pathname)))

  # Get target pathname
  pathnameT <- Sys.readlink2(pathnameL)
  # Should be equal
  stopifnot(getAbsolutePath(pathnameT) == getAbsolutePath(pathname))

  # Read contents (directly and via link)
  bfr <- readChar(pathname, n=1e6)
  bfrL <- readChar(pathnameL, n=1e6)
  # Should be identical content
  stopifnot(identical(bfrL, bfr))

  # Append content (via link)
  cat(" world!", file=pathnameL, append=TRUE)

  # Read contents (directly and via link)
  bfr <- readChar(pathname, n=1e6)
  printf("Target content: '%s'\n", bfr)
  bfrL <- readChar(pathnameL, n=1e6)
  printf("Link content  : '%s'\n", bfrL)
  # Should be identical content
  stopifnot(identical(bfrL, bfr))

  # Retrieve file information (directly and via link)
  fi <- file.info(pathname)
  printf("*** file.info('%s'):\n", pathname)
  print(fi)
  fiL <- file.info2(pathnameL)
  printf("*** file.info2('%s'):\n", pathnameL)
  print(fiL)
  # Should be equal file information except the filenames
  stopifnot(all.equal(fiL, fi, check.attributes=FALSE))
  stopifnot(identical(lastModified(pathnameL), lastModified(pathname)))

  # Note that file.info() does not follow links on Windows
  if (.Platform$OS.type == "windows") {
    fiLx <- file.info(pathnameL)
    printf("*** file.info('%s'):\n", pathnameL)
    print(fiLx)
    res <- all.equal(fiLx, fi, check.attributes=FALSE)
  }

  # Renaming
  verbose && enter(verbose, "Renaming file link")
  pathnameL2 <- sprintf("%s-new", pathnameL)
  renameFile(pathnameL, pathnameL2)
  stopifnot(isFile(pathnameL2))
  stopifnot(!isFile(pathnameL))
  renameFile(pathnameL2, pathnameL)
  stopifnot(isFile(pathnameL))
  stopifnot(!isFile(pathnameL2))
  verbose && exit(verbose)

  # File access
  verbose && enter(verbose, "Testing file permissions & access information")
  fa <- fileAccessT(pathname)
  faL <- fileAccessT(pathnameL)
  stopifnot(identical(faL, fa))

  # Disable write permission on target
  Sys.chmod(pathname, mode="0077")
  fa <- fileAccessT(pathname)
  faL <- fileAccessT(pathnameL)
  stopifnot(identical(faL, fa))
  # Reset
  Sys.chmod(pathname, mode="0777")
  verbose && exit(verbose)


  # Removing & cleanup
  verbose && enter(verbose, "Cleanup")

  verbose && enter(verbose, "Removing file link")
  verbose && cat(verbose, "Link: ", pathnameL)
  verbose && cat(verbose, "Target: ", pathname)
  file.remove(pathnameL)  # unlink() cannot remove symbolic links
  stopifnot(!file.exists(pathnameL))
  stopifnot(isFile(pathname))
  verbose && exit(verbose)

  verbose && enter(verbose, "Removing target")
  file.remove(pathname)
  stopifnot(!file.exists(pathname))
  verbose && exit(verbose)

  verbose && exit(verbose)

  verbose && exit(verbose)
} # for (path in ...)

} # if (canSymlink)
