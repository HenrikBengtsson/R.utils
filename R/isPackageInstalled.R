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
#  \item{package}{The name of the package.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @logical.
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
    path <- system.file(package=package);
  });
  (path != "");
})


############################################################################
# HISTORY:
# 2013-08-30
# o Now isPackageInstalled() suppresses warnings.
# 2009-01-11
# o Created.
############################################################################
