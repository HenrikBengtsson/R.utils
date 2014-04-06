###########################################################################/**
# @RdocDefault isDirectory
#
# @title "Checks if the file specification is a directory"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character string of the pathname to be checked.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns @TRUE if the file specification is a directory, otherwise
#  @FALSE is returned.
# }
#
# \section{Symbolic links}{
#  This function follows symbolic links (also on Windows) and returns a
#  value based on the link target (rather than the link itself).
# }
#
# @author
#
# \seealso{
#   To check if it is a file see @see "isFile".
#   Internally @see "base::file.info" is used.
#   See also @see "utils::file_test".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("isDirectory", "default", function(pathname, ...) {
  # Argument 'pathname':
  pathname <- as.character(pathname);
  # BACKWARD COMPATIBILITY: Treat empty path specially?
  pathname <- .getPathIfEmpty(pathname, where="isDirectory")

  nPaths <- length(pathname);

  # Nothing to do?
  if (nPaths == 0L) return(logical(0L));

  # Multiple paths to be checked?
  if (nPaths > 1L) {
    res <- sapply(pathname, FUN=isDirectory, ...);
    return(res);
  }

  # A missing path?
  if (is.na(pathname)) return(FALSE);

  # Consider an empty path ("") as ".".
  if (identical(pathname, ""))
    pathname <- "."; # As in Java.

  # Current working directory is a directory.
  if (pathname == ".")
    return(TRUE);

  # 1. Remove trailing '/' or '\\' and check if it is a directory
  pathname <- gsub("[/\\\\]$", "", pathname);
  isdir <- file.info(pathname)$isdir;
  if (identical(isdir, TRUE))
    return(TRUE);

  # It may be that we do not have the file rights to access the
  # information on the directory. In such cases, we can at least check
  # if it is equal to the current working directory, which must exists
  # since R is running in it.
  if (is.na(isdir)) {
    wd <- gsub("[/\\\\]$", "", getwd());
    if (pathname == wd) {
      return(TRUE);
    }
  }

  # 2. Add trailing '/' and check if it is a directory, e.g. "C:/".
  pathnameD <- paste(pathname, "/", sep="");
  isdir <- file.info(pathnameD)$isdir;
  if (identical(isdir, TRUE))
    return(TRUE);
  if (identical(isdir, FALSE))
    return(FALSE);

  # 2a. WORKAROUND: file.info("C:/") gives NA; use "C:/." instead.
  #     See R problem #15302, cf.
  #     https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=15302
  if (getRversion() < "3.0.2") {
    pathnameD <- paste(pathname, "/.", sep="");
    isdir <- file.info(pathnameD)$isdir;
    if (identical(isdir, TRUE))
      return(TRUE);
    if (identical(isdir, FALSE))
      return(FALSE);
  }

  # Is it the same as working directory?
  wd <- gsub("[/\\\\]$", "", getwd());            # Remove trailing '/'.
  if (pathname == wd)
    return(TRUE);

  # Is it already a relative pathname?  Then, if it was a directory, the
  # above code would have detected it as a directory, if it was.
  if (!isAbsolutePath(pathname))
    return(FALSE);

  # 3. Try the relative pathname, because on some file systems we do not
  #    have the permission to access file information via absolute
  #    pathnames (file.info() returns NAs), but via relative pathnames.
  #    [This is actually true on the BASE file system. /HB Summer 2005]
  relPathname <- getRelativePath(pathname);

  # Avoid infinite recursive loops; check if succeeded in getting a
  # relative pathname?
  if (!identical(relPathname, pathname)) {
    isDirectory(relPathname);
  } else {
    # At this point, we can only return FALSE.
    FALSE;
  }
}) # isDirectory()

###########################################################################
# HISTORY:
# 2014-04-06
# o Vectorized isDirectory().
# o Preparing to vectorize isDirectory() by introducing option to generate
#   a warning or an error if a zero-length path is given.  This way we can
#   detect packages making this error, without breaking them.
# 2013-05-13
# o The workaround for isDirectory("C:/") is only needed for R (< 3.0.2).
# 2011-09-19
# o WORKAROUND: isDirectory("C:/") would not return TRUE due to a
#   bug in file.info("C:/") causing it to return NAs.
# 2009-12-30
# o BUG FIX: Now isFile(NA) and isDirectory(NA) return FALSE.
#   Before it gave an unexpected error.
# 2005-10-28
# o BUG FIX: isDirectory() on a file would result in an infinite recursive
#   loop to itself.
# 2005-08-01
# o Made the code a little bit more failsafe to missing file rights;
#   if the path is the current working directory, then it must exists and
#   therefore TRUE is returned.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
