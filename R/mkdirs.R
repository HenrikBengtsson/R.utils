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
#   \item{maxTries}{A positive @integer specifying how many times the
#     method should try to create a missing directory before giving up.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns @TRUE if the directory was succesfully created,
#  otherwise @FALSE.
#  Note that if the directory already exists, @FALSE is returned.
# }
#
# \section{Slow file systems}{
#   On very rare occassions, we have observed on a large shared file
#   system that if one tests for the existence of a directory immediately
#   after creating it with @see "base::dir.create", it may appear not
#   to be created.  We believe this is due to the fact that there is a
#   short delay between creating a directory and that information being
#   fully propagated on the file system.  To minimize the risk for such
#   false assertions on "slow" file systems, this method tries to create
#   a missing directory multiple times (argument \code{maxTries}) (while
#   waiting a short period of time between each round) before giving up.
# }
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
setMethodS3("mkdirs", "default", function(pathname, mustWork=FALSE, maxTries=5L, ...) {
  isLink <- function(pathname) {
    pathname <- getAbsolutePath(pathname)
    target <- Sys.readlink2(pathname)
    !is.na(target) && nzchar(target)
  }

  curdir <- function(pathname) {
    if (isAbsolutePath(pathname)) return(pathname)
    sprintf("%s (current directory is '%s')", pathname, getwd())
  }

  ## Argument 'pathname':
  # Nothing to do?
  if (length(pathname) == 0L) return(TRUE)
  pathname <- as.character(pathname)

  ## Argument 'mustWork':
  mustWork <- Arguments$getLogical(mustWork)

  ## Argument 'maxTries':
  maxTries <- Arguments$getInteger(maxTries, range=c(1L,100L))


  # If already is a directory, return FALSE
  if (isDirectory(pathname))
    return(FALSE)

  # If already a file, return FALSE or give an error
  if (isFile(pathname)) {
    if (mustWork) {
      throw("Failed to create directory, because a file with the same pathname already exists: ", curdir(pathname))
    }
    return(FALSE)
  }

  if (isLink(pathname)) {
    target <- Sys.readlink2(getAbsolutePath(pathname))
    ## Should have been take care of above, but just in case
    if (isDirectory(target)) return(FALSE)
    if (mustWork) {
      if (isFile(target)) {
        throw(sprintf("Failed to create directory, because a link with the same pathname already exists and its target ('%s') appears to be a file: %s", target, curdir(pathname)))
      } else {
        throw(sprintf("Failed to create directory, because a link with the same pathname already exists but its target ('%s') appears to be missing: %s", target, curdir(pathname)))
      }
    }
    return(FALSE)
  }

  # Get the parent and make sure to delete it afterwards.
  parent <- getParent(pathname)

  if (identical(parent, pathname)) {
    if (mustWork) {
      throw("Could not create directory, because failed to get parent directory: ", curdir(pathname))
    }
    return(FALSE)
  }

  # If the parent is a file, we can not create a directory!
  if (isFile(parent)) {
    if (mustWork) {
      throw(sprintf("Could not create directory, because parent ('%s') is a file not a directory: %s", parent, curdir(pathname)))
    }
    return(FALSE)
  }

  # If parent is not already a directory, create it
  if (!isDirectory(parent)) {
    if (!mkdirs(parent, mustWork=mustWork, maxTries=maxTries, ...))
      return(FALSE)
  }

  # Finally, create this directory
  if (!isDirectory(pathname)) {
    for (tt in 1:maxTries) {
      suppressWarnings(dir.create(pathname))
      res <- isDirectory(pathname)
      if (res) break

      # If failed, try to create it by its relative pathname
      pathnameR <- getRelativePath(pathname)
      suppressWarnings(dir.create(pathnameR))
      res <- isDirectory(pathname)
      if (res) break

      # If not, wait a bit and try again...
      Sys.sleep(0.5)
    }

    if (!res && mustWork) {
      # Check if file permissions allow to create a directory
      parent <- ifelse(is.null(parent), ".", parent)
      if (fileAccess(parent, mode=2) == -1) {
        reason <- ", most likely because of lack of file permissions"
      } else {
        reason <- " for unknown reasons"
      }

      throw(sprintf("Failed to create directory (tried %d times)%s (directory '%s' exists but nothing beyond): %s", maxTries, reason, parent, curdir(pathname)))
    }

    return(res)
  }

  TRUE
})

###########################################################################
# HISTORY:
# 2015-12-08
# o Added arguments 'mustWork' and 'maxTries'.
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
