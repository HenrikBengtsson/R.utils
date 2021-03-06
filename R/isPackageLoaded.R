###########################################################################/**
# @RdocDefault isPackageLoaded
#
# @title "Checks if a package is loaded or not"
#
# \description{
#   @get "title".
#   Note that, contrary to \code{\link[base:library]{require}()}, 
#   this function does not load the package if not loaded.
# }
#
# @synopsis
#
# \arguments{
#  \item{package}{The name of the package.}
#  \item{version}{A @character string specifying the version to test for.
#     If @NULL, any version is tested for.}
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
#   To check if a package is installed or not, see @see "isPackageInstalled".
# }
#
# @keyword utilities
# @keyword package
#*/########################################################################### 
setMethodS3("isPackageLoaded", "default", function(package, version=NULL, ...) {
  s <- search()
  if (is.null(version)) {
    s <- sub("_[0-9.-]*", "", s)
  } else {
    package <- paste(package, version, sep="_")
  }
  pattern <- sprintf("package:%s", package)
 (pattern %in% s)
})
