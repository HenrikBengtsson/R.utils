#########################################################################/**
# @RdocFunction relibrary
#
# @title "Reloads a package"
#
# @synopsis
#
# \description{
#  Reloads a package. This function works exactly the same as 
#  \code{\link[base]{library}}, \emph{except} that it is reloads the package
#  if it already loaded. This is useful for developers.
#  For more information see \code{\link[base]{library}}.
# }
#
# \arguments{
#   \item{package}{Name or @character string giving the name of a package.}
#   \item{character.only}{A @logical indicating whether \code{package} can
#      be assumed to be character strings.}
#   \item{warn.conflicts}{If @TRUE, warnings are printed about
#      conflicts from reattaching of the package, unless that package
#      contains an object \code{.conflicts.OK}.}
#   \item{...}{Any other arguments that @see "base::library" takes.}
# }
#
# \details{
#   While relibrary is reloading a package the option \code{relibrary} will
#   be set to name of the package currently reloaded. This can be useful if
#   the package to be reloaded would like save away data until it is loaded
#   again.
# }
#
# @author
#
# \seealso{
#   See @see "base::library".
# }
#
# @keyword "utilities"
#*/#########################################################################t
relibrary <- function(package, character.only=FALSE, warn.conflicts=FALSE, ...) {
  if (!character.only)
    package <- as.character(substitute(package));

  options.relibrary <- options(relibrary=package)[[1]];
  
  # If package is already attached, then detach it first.
  pkgName <- paste(sep="", "package:", package);
  pos <- match(pkgName, search());
  if (!is.na(pos)) {
    # If there exists a function .Last.lib() in the package call it first!
    if (exists(".Last.lib", where=pos, inherits=FALSE)) {
      .Last.lib <- get(".Last.lib", pos=pos, inherits=FALSE);
      if (is.function(.Last.lib)) {
        libpath <- attr(pos.to.env(pos), "path");
        if (!is.null(libpath))
          try(.Last.lib(libpath));
      }
    }
    # ...then remove the package.
    .Internal(detach(pos));
  }

##  library(package=package, character.only=TRUE,
##                           warn.conflicts=warn.conflicts, ...);
  args <- list(package=package, character.only=TRUE, 
               warn.conflicts=warn.conflicts, ...);
  do.call("library", args=args);

  options(relibrary=options.relibrary);
} # relibrary



############################################################################
# HISTORY:
# 2007-06-09
# o Replaced library(...) call with do.call("library", ...) to please 
#   R CMD check for R v2.6.0.
# 2001-08-06
# * Now relibrary will set the option "relibrary" to the name of the package
#   it is currently reloading. This option can be used by the package itself
#   in its .First.lib and .Last.lib for instance in case it will store
#   something until it is loaded again.
# 2001-08-03
# * Made relibrary by default not warning for conflicts.
# 2001-07-05
# * It is NOT possible to use UseMethod("relibrary", ...), because 
#   UseMethod() will evaluate the first argument in order to decide which
#   method to call, e.g. relibrary(R.oo) gives 'Object "R.oo" not found'.
# 2001-05-03
# * Created.
############################################################################
