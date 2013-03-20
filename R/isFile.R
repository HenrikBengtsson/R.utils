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
# 
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
  if (length(pathname) == 0)
    return(FALSE);
  if (is.na(pathname))
    return(FALSE);

  pathname <- as.character(pathname);

  isdir <- file.info(pathname)$isdir;
  if (identical(isdir, FALSE))
    return(TRUE);

  if (is.na(isdir)) {
    if (!isAbsolutePath(pathname))
      return(FALSE);

    # Try the relative pathname
    relPathname <- getRelativePath(pathname);

    # Avoid infinite recursive loops; check if succeeded in getting a 
    # relative pathname? 
    if (!identical(relPathname, pathname)) {
      return(isFile(relPathname));
    } else {
      # At this point, we can only return FALSE.
      return(FALSE);
    }
  }

  return(FALSE);
})

###########################################################################
# HISTORY: 
# 2009-12-30
# o BUG FIX: Now isFile(NA) and isDirectory(NA) return FALSE.  
#   Before it gave an unexpected error.
# 2005-11-29
# o BUG FIX: Added protection against infinite loops where relative path 
#   is the same as the absolute path.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
