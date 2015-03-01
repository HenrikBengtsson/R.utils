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


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# DIRECTORIES
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
verbose && enter(verbose, "Symbolic links to directories")

# Create a target
path <- file.path(tempdir(), "foo")
mkdirs(path)
stopifnot(isDirectory(path))

# Create a symbolic link
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

# Remove file (via direct pathname)
file.remove(pathname)
stopifnot(!isFile(pathname))
stopifnot(!isFile(pathnameL))

verbose && enter(verbose, "Renaming")
pathL2 <- sprintf("%s-new", pathL)
renameFile(pathL, pathL2)
stopifnot(isDirectory(pathL2))
renameFile(pathL2, pathL)
stopifnot(isDirectory(pathL))
verbose && exit(verbose)

# File access
verbose && enter(verbose, "Testing file permissions & access information")
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
verbose && exit(verbose)

# Removing & cleanup
verbose && enter(verbose, "Cleanup")
# (Neither file.remove() nor unlink() can remove symbolic directory links)
removeDirectory(pathL)
stopifnot(!isDirectory(pathL))
stopifnot(isDirectory(path))
removeDirectory(path)
stopifnot(!isDirectory(path))
verbose && exit(verbose)

verbose && exit(verbose)

} # if (canSymlink)
