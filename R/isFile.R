###########################################################################/**
# @RdocDefault isFile
#
# @title "Checks if the file specification is a file"
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
#  Returns @TRUE if the file specification is a file, otherwise
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
#   To check if it is a directory see @see "isDirectory".
#   Internally @see "base::file.info" is used.
#   See also @see "utils::file_test".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("isFile", "default", function(pathname, ...) {
  # Argument 'pathname':
  pathname <- as.character(pathname)
  # BACKWARD COMPATIBILITY: Treat empty path specially?
  pathname <- .getPathIfEmpty(pathname, where="isFile")

  nPathnames <- length(pathname)

  # Nothing to do?
  if (nPathnames == 0L) return(logical(0L))

  # Multiple pathnames to be checked?
  if (nPathnames > 1L) {
    res <- sapply(pathname, FUN=isFile, ...)
    return(res)
  }

  # A missing pathname?
  if (is.na(pathname)) return(FALSE)

  isdir <- file.info(pathname)$isdir
  if (identical(isdir, FALSE))
    return(TRUE)

  if (is.na(isdir)) {
    if (!isAbsolutePath(pathname))
      return(FALSE)

    # Try the relative pathname
    relPathname <- getRelativePath(pathname)

    # Avoid infinite recursive loops; check if succeeded in getting a
    # relative pathname?
    if (!identical(relPathname, pathname)) {
      return(isFile(relPathname))
    } else {
      # At this point, we can only return FALSE.
      return(FALSE)
    }
  }

  return(FALSE)
})
