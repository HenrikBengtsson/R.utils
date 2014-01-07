###########################################################################/**
# @RdocDefault lastModified
#
# @title "Gets the time when the file was last modified"
#
# \description{
#  @get "title". The time is returned as a \code{POSIXct} object.
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
#  Returns \code{POSIXct} object specifying when the file was last modified.
#  If the file does not exist or it is a directory, \code{0} is returned.
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
#   Internally @see "base::file.info" is used.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("lastModified", "default", function(pathname, ...) {
  pathname <- as.character(pathname);
  if (!file.exists(pathname))
    return(0);
  info <- file.info2(pathname);
  info$mtime;
})

###########################################################################
# HISTORY:
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
