###########################################################################/**
# @RdocDefault detachPackage
#
# @title "Detaches packages by name"
#
# \description{
#   @get "title", if loaded.
# }
#
# @synopsis
#
# \arguments{
#  \item{pkgname}{A @character @vector of package names to be detached.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) a named @logical @vector indicating whether
#   each package was detached or not.
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

  # Nothing to do?
  npkgs <- length(pkgname);
  if (npkgs == 0L) return(invisible(logical(0L)));

  # Detach multiple packages?
  if (npkgs > 1L) {
    return(invisible(sapply(pkgname, FUN=detachPackage, ...)));
  }

  # Detach a single package
  searchName <- paste("package:", pkgname, sep="");
  pos <- match(searchName, search());
  if (is.na(pos)) {
    # Return FALSE if package is not loaded
    res <- FALSE;
    names(res) <- pkgname;
    return(invisible(res));
  }

  # Detach package
  detach(pos=pos);

  # Return TRUE if package was detached, otherwise FALSE.
  pos <- match(searchName, search());
  res <- is.na(pos);
  names(res) <- pkgname;
  invisible(res);
})


############################################################################
# HISTORY:
# 2014-04-06
# o Vectorized detachPackage().
# 2005-06-11
# o Created.
############################################################################
