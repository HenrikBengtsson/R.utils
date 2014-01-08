library("R.utils")
verbose <- Arguments$getVerbose(TRUE)

# Run only tests if this platform/client supports symbolic file links
canSymlink <- tryCatch({
  file.symlink(".", "test-symlink-dir")
}, error = function(ex) FALSE)
if (canSymlink) {

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Symbolic links to files
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
filename <- "foo.txt"
paths <- list(".", tempdir())

for (path in paths) {
  verbose && enter(verbose, "Symbolic links to files")
  verbose && cat(verbose, "Path: ", path)

  pathname <- file.path(path, filename)
  # WORKAROUND: file.symlink() does not translate forward slashes for you!
  pathnameS <- gsub("/", "\\", pathname, fixed=TRUE)

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
  if (.Platform$OS == "windows") {
    fiLx <- file.info(pathnameL)
    printf("*** file.info('%s'):\n", pathnameL)
    print(fiLx)
    res <- all.equal(fiLx, fi, check.attributes=FALSE)
  }

  verbose && exit(verbose)
} # for (path in ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Symbolic links to directories
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
verbose && enter(verbose, "Symbolic links to files")

path <- tempdir()
pathL <- "link-to-tempdir"
file.symlink(path, pathL)
stopifnot(isDirectory(pathL))

# File information (directly and via link)
fi <- file.info(path)
fiL <- file.info2(pathL)
stopifnot(all.equal(fiL, fi, check.attributes=FALSE))

# Add a file (via link)
pathnameL <- file.path(pathL, "target2.txt")
cat("Hello", file=pathnameL)

# Assert that it exists (via direct pathname)
pathname <- file.path(path, "target2.txt")
stopifnot(isFile(pathname))

verbose && exit(verbose)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Renaming
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
verbose && enter(verbose, "Renaming")

# Files
pathnameL2 <- sprintf("%s-new", pathnameL)
renameFile(pathnameL, pathnameL2)
stopifnot(isFile(pathnameL2))
renameFile(pathnameL2, pathnameL)
stopifnot(isFile(pathnameL))

# Directories
pathL2 <- sprintf("%s-new", pathL)
renameFile(pathL, pathL2)
stopifnot(isDirectory(pathL2))
renameFile(pathL2, pathL)
stopifnot(isDirectory(pathL))

verbose && exit(verbose)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Removing
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
verbose && enter(verbose, "Removing")

verbose && enter(verbose, "Removing file links")
# File (the link)
pathnameL <- file.path(path, sprintf("link-to-%s", filename))
verbose && cat(verbose, "Link: ", pathnameL)
verbose && cat(verbose, "Target: ", pathname)
file.remove(pathnameL)  # unlink() cannot remove symbolic links
stopifnot(isFile(pathname))
# Add it back
file.symlink(pathnameS, pathnameL)
stopifnot(isFile(pathnameL))
verbose && exit(verbose)


verbose && enter(verbose, "Removing directory links")
# Directory (the link)
removeDirectory(pathL)  # Neither file.remove() nor unlink() can
                        # remove symbolic links to directories
stopifnot(isDirectory(path))
# Add it back
file.symlink(path, pathL)
stopifnot(isDirectory(pathL))
verbose && exit(verbose)


verbose && exit(verbose)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# File access
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
fileAccessT <- function(pathname, modes=c(exist=0, exec=1, write=2, read=4)) {
  sapply(modes, FUN=function(mode) fileAccess(pathname, mode=mode))
}

# (a) Files
pathname <- file.path(path, filename)
pathnameL <- file.path(path, sprintf("link-to-%s", filename))
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


# (b) Directories
fa <- fileAccessT(path)
faL <- fileAccessT(pathL)
stopifnot(identical(faL, fa))

# Disable write permission on target
Sys.chmod(path, mode="0077")
fa <- fileAccessT(path)
faL <- fileAccessT(pathL)
stopifnot(identical(faL, fa))
# Reset
Sys.chmod(path, mode="0777")

} # if (canSymlink)
