###########################################################################/**
# @RdocDefault isPackageInstalled
#
# @title "Checks if a package is installed or not"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{package}{A @character @vector of package names.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @logical @vector.
# }
#
# @author
#
# \seealso{
#   @see "isPackageLoaded".
# }
#
# @keyword utilities
# @keyword package
#*/###########################################################################
setMethodS3("isPackageInstalled", "default", function(package, ...) {
  suppressWarnings({
    paths <- sapply(package, FUN=function(p) system.file(package=p));
  });
  (paths != "");
})


############################################################################
# HISTORY:
# 2014-04-06
# o Vectorized isPackageInstalled().
# 2013-08-30
# o Now isPackageInstalled() suppresses warnings.
# 2009-01-11
# o Created.
############################################################################
