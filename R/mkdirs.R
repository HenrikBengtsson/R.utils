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
setMethodS3("mkdirs", "default", function(pathname, ...) {
  if (length(pathname) == 0)
    return(TRUE);

  pathname <- as.character(pathname);

  # If already is a directory or a file, return FALSE
  if (isFile(pathname) || isDirectory(pathname))
    return(FALSE);

  # Get the parent and make sure to delete it afterwards.
  parent <- getParent(pathname);

  if (identical(parent, pathname)) 
    throw("Could not get parent directory: ", pathname);

  # If the parent is a file, we can not create a directory!
  if (isFile(parent))
    return(FALSE);

  # If parent is not already a directory, create it
  if (!isDirectory(parent)) {
    if (!mkdirs(parent))
      return(FALSE);
  }

  # Finally, create this directory
  res <- dir.create(pathname);
  if (!res) {
    # If failed, try to create it by its relative pathname
    pathname <- getRelativePath(pathname);
    res <- dir.create(pathname);
  }
  res;
})

###########################################################################
# HISTORY: 
# 2005-08-01
# o mkdirs() tries to create directory with relative path if absolute
#   path fails. This sometimes works when the file permission are missing.
# 2005-07-19
# o Added internal check for valid parent directory.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
