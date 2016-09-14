###########################################################################/**
# @RdocFunction gcDLLs
# @alias strayDLLs
#
# @title "Identifies and removes DLLs of packages already unloaded"
#
# \description{
#   @get "title".
#   When packages are unloaded, they are ideally also unloading any
#   DLLs (also known as a dynamic shared object or library) they
#   have loaded.  Unfortunately, not all package do this resulting
#   in "stray" DLLs still being loaded and occupying \R's limited
#   registry.  These functions identifies and removes such DLLs.
# }
#
# @synopsis
#
# \arguments{
#  \item{quiet}{If @FALSE, a message is outputted for every stray DLL that is unloaded.}
# }
#
# \value{
#   Returns (invisibly) the set of stray DLLs identified.
# }
#
# \details{
#   If a library fails to unload, an informative warning is generated.
# }
#
# \section{How to unload DLLs in package (for package developers)}{
#   To unload a package DLL whenever the package in unloaded, add the
#   following to your package:
#   \preformatted{
#   .onUnload <- function(libpath) {
#       library.dynam.unload(.packageName, libpath)
#   }
#   }
# }
#
# @author
#
# \seealso{
#   @see "base::getLoadedDLLs".
# }
#*/###########################################################################
strayDLLs <- function() {
  ## All loaded DLLs
  dlls <- getLoadedDLLs()

  ## Drop R core DLLs
  ## Q. Is this really safe? Can there be other DLLs with these names?
  coreDLLs <- c("base", "graphics", "grDevices", "methods", "stats", "tools", "utils", "internet")
  keep <- !(names(dlls) %in% coreDLLs)
  dlls <- dlls[keep]

  ## Nothing to do?
  if (length(dlls) == 0) return(dlls)
  

  ## Identify DLLs part of packages
  files <- unlist(lapply(dlls, FUN = function(dll) dll[["path"]]))
  pkgdirs <- dirname(dirname(files))
  metas <- file.path(pkgdirs, "Meta", "package.rds")
  keep <- utils::file_test("-f", metas)
  dlls <- dlls[keep]
  metas <- metas[keep]

  ## Nothing to do?
  if (length(dlls) == 0) return(dlls)


  ## Ignore those part of loaded namespaces
  pkgnames <- unlist(lapply(metas, FUN = function(meta) {
    readRDS(meta)$DESCRIPTION[["Package"]]
  }))
  keep <- !(pkgnames %in% loadedNamespaces())
  dlls <- dlls[keep]
  pkgnames  <- pkgnames[keep]

  dlls
} ## strayDLLs()


gcDLLs <- function(quiet = TRUE) {
  ## Find all package DLLs for which no package is loaded
  dlls <- strayDLLs()
  
  ## Unload DLLs
  for (dll in dlls) {
    name <- dll[["name"]]
    path <- dll[["path"]]
    libpath <- dirname(dirname(path))
    res <- tryCatch({
      library.dynam.unload(name, libpath = libpath)
      TRUE
    }, error = identity)

    ## Failed to unload?
    if (inherits(res, "simpleError")) {
      msg <- sprintf("Failed to unload stray DLL %s (%s): ", sQuote(name), path, conditionMessage(res))
      warning(msg)
    } else if (!quiet) {
      message(sprintf("Unloaded stray DLL: %s (%s)", sQuote(name), path))
    }
  }

  invisible(dlls)
}
