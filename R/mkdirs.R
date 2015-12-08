###########################################################################/**
# @RdocDefault mkdirs
#
# @title "Creates a directory including any necessary but nonexistent parent directories"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character string of the pathname to be checked.}
#   \item{mustWork}{If @TRUE and the directory does not already exists or
#    is failed to be created, an error is thrown, otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns @TRUE if the directory was succesfully created,
#  otherwise @FALSE.
#  Note that if the directory already exists, @FALSE is returned.
# }
#
#
#
# @author
#
# \seealso{
#   Internally \code{\link[base:files]{dir.create}}() is used.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("mkdirs", "default", function(pathname, mustWork=FALSE, ...) {
  isLink <- function(pathname) {
    target <- Sys.readlink2(pathname)
    !is.na(target) && nzchar(target)
  } ## isLink()

  ## Argument 'mustWork':
  mustWork <- as.logical(mustWork)

  # Nothing to do?
  if (length(pathname) == 0L)
    return(TRUE)

  pathname <- as.character(pathname)

  # If already is a directory, return FALSE
  if (isDirectory(pathname))
    return(FALSE)

  # If already a file, return FALSE or give an error
  if (isFile(pathname)) {
    if (mustWork) {
      throw("Failed to create directory, because a file with the same pathname already exists: ", pathname)
    }
    return(FALSE)
  }

  if (isLink(pathname)) {
    target <- Sys.readlink2(pathname)
    ## Should have been take care of above, but just in case
    if (isDirectory(target)) return(FALSE)
    if (mustWork) {
      if (isFile(target)) {
        throw(sprintf("Failed to create directory, because a link with the same pathname already exists and its target ('%s') appears to be a file: %s", target, pathname))
      } else {
        throw(sprintf("Failed to create directory, because a link with the same pathname already exists but its target ('%s') appears to be missing: %s", target, pathname))
      }
    }
    return(FALSE)
  }

  # Get the parent and make sure to delete it afterwards.
  parent <- getParent(pathname)

  if (identical(parent, pathname)) {
    if (mustWork) {
      throw("Could not create directory, because failed to get parent directory: ", pathname)
    }
    return(FALSE)
  }

  # If the parent is a file, we can not create a directory!
  if (isFile(parent)) {
    if (mustWork) {
      throw(sprintf("Could not create directory, because parent ('%s') is a file not a directory: ", parent, pathname))
    }
    return(FALSE)
  }

  # If parent is not already a directory, create it
  if (!isDirectory(parent)) {
    if (!mkdirs(parent, mustWork=mustWork, ...))
      return(FALSE)
  }

  # Finally, create this directory
  if (!isDirectory(pathname)) {
    res <- dir.create(pathname)
    if (!res) {
      # If failed, try to create it by its relative pathname
      pathnameR <- getRelativePath(pathname)
      res <- dir.create(pathnameR)
    }

    if (!res && mustWork) {
      throw("Failed to create directory (for unknown reasons): ", pathname)
    }

    return(res)
  }

  TRUE
})

###########################################################################
# HISTORY:
# 2015-12-08
# o Added argument 'mustWork'.
# 2014-09-01
# o BUG FIX: mkdirs() could return "object 'res' not found" error.
# 2012-10-19
# o mkdirs(path) could generate a warning if the path was created
#   by another process as a race condition.  Now it always checks to
#   see if the directory already exists just before trying to create
#   the directory.
# 2005-08-01
# o mkdirs() tries to create directory with relative path if absolute
#   path fails. This sometimes works when the file permission are missing.
# 2005-07-19
# o Added internal check for valid parent directory.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
