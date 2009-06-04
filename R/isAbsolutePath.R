###########################################################################/**
# @RdocDefault isAbsolutePath
#
# @title "Checks if this pathname is absolute"
#
# \description{
#   @get "title".
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
#  Returns a @TRUE if the pathname is absolute, otherwise @FALSE.
# }
#
# 
#
# @author
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("isAbsolutePath", "default", function(pathname, ...) {
  if (length(pathname) == 0)
     return(FALSE);

  pathname <- as.character(pathname);

  # Recognize '~' paths
  if (regexpr("^~", pathname) != -1)
    return(TRUE);

  # Windows paths
  if (regexpr("^.:(/|\\\\)", pathname) != -1)
    return(TRUE);

  # Split pathname...
  components <- strsplit(pathname, split="[/\\]")[[1]];
  if (length(components) == 0)
    return(FALSE);

  (components[1] == "");
})
 
###########################################################################
# HISTORY: 
# 2005-08-01
# o A NULL pathname is not an absolute path.
# 2005-06-01
# o Now isAbsolutePath() also recognizes paths beginning with '~'.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
