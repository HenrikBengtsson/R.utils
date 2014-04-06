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
  # Argument 'pathname':
  pathname <- as.character(pathname);
  # BACKWARD COMPATIBILITY: Treat empty path specially?
  pathname <- .getPathIfEmpty(pathname, where="isAbsolutePath")

  nPathnames <- length(pathname);

  # Nothing to do?
  if (nPathnames == 0L) return(logical(0L));

  # Multiple path to be checked?
  if (nPathnames > 1L) {
    res <- sapply(pathname, FUN=isAbsolutePath, ...);
    return(res);
  }

  # A missing pathname?
  if (is.na(pathname)) return(FALSE);

  # Recognize '~' paths
  if (regexpr("^~", pathname) != -1L)
    return(TRUE);

  # Windows paths
  if (regexpr("^.:(/|\\\\)", pathname) != -1L)
    return(TRUE);

  # Split pathname...
  components <- strsplit(pathname, split="[/\\]")[[1L]];
  if (length(components) == 0L)
    return(FALSE);

  (components[1L] == "");
})

###########################################################################
# HISTORY:
# 2014-04-06
# o Vectorized isAbsolutePath().
# o Preparing to vectorize isAbsolutePath() by introducing option to
#   generate a warning or an error if a zero-length path is given.  This
#   way we can detect packages making this error, without breaking them.
# 2005-08-01
# o A NULL pathname is not an absolute path.
# 2005-06-01
# o Now isAbsolutePath() also recognizes paths beginning with '~'.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
