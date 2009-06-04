###########################################################################/**
# @RdocDefault detachPackage
#
# @title "Detaches a packages by name"
#
# \description{
#   @get "title", if loaded.
# }
#
# @synopsis
#
# \arguments{
#  \item{pkgname}{A @character string of the package name to be detached.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE if package was detached, otherwise @FALSE.
# }
#
# @author
#
# \seealso{
#   @see "base::detach".
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("detachPackage", "default", function(pkgname, ...) {
  # Argument 'pkgname';
  pkgname <- as.character(pkgname);

  searchName <- paste("package:", pkgname, sep="");
  pos <- match(searchName, search());
  if (is.na(pos)) {
    # Return FALSE if package is not loaded
    return(invisible(FALSE));
  } 

  # Detach package
  detach(pos=pos);

  # Return TRUE if package was detached, otherwise FALSE.
  pos <- match(searchName, search());
  invisible(is.na(pos));
})


############################################################################
# HISTORY:
# 2005-06-11
# o Created.
############################################################################
