## covr: skip=all
.onLoad <- function(libname, pkgname) {
  ns <- getNamespace(pkgname)
  pkg <- Package(pkgname)
  assign(pkgname, pkg, envir=ns, inherits=FALSE)

  # Set 'asGString' option via system environment variable
  value <- getOption("Arguments$getCharacters/args/asGString")
  if (is.null(value)) {
    value <- Sys.getenv("R.utils_asGString")
    if (nzchar(value)) {
      value <- isTRUE(as.logical(value))
      options("Arguments$getCharacters/args/asGString"=value)
    }
  }

  # Set 'R.utils::onEmptyPath' option via system environment variable
  value <- getOption("R.utils::onEmptyPath")
  if (is.null(value)) {
    value <- Sys.getenv("R.utils_onEmptyPath")
    if (nzchar(value)) {
      options("R.utils::onEmptyPath"=value)
    }
  }

} # .onLoad()


.onAttach <- function(libname, pkgname) {
  pos <- which(sprintf("package:%s", pkgname) == search())

  if (length(pos) == 1L) {
    # Add a default Verbose object at threshold -1.
    assign("verbose", Verbose(threshold=-1), pos=pos)

    # Patch for default parse() depending on R version
#    env <- as.environment("package:R.utils")
#    setMethodS3("parse", "default", appendVarArgs(base::parse),
#                                       conflict="quiet")
#    assign("parse.default", parse.default, pos=pos)
#    assignInNamespace("parse.default", parse.default, pos=pos)

    # Make .Last() call finalizeSession() when R finishes.
    tryCatch({
      addFinalizerToLast()
    }, error=function(ex) {
      msg <- paste("The R.utils package may have failed to append a session finalizer to .Last(), because: ", ex$message, sep="")
      warning(msg, call.=FALSE, immediate.=TRUE)
    })

    onSessionExit(function(...) detachPackage(pkgname))
  } # if (length(pos) == 1L)

  pkg <- get(pkgname, envir=getNamespace(pkgname), inherits=FALSE)
  startupMessage(pkg)
} # .onAttach()



########################################################################/**
# @RdocFunction .Last.lib
# @alias .Last.lib
#
# @title "Undo changed done by this package when detached"
#
# @synopsis
#
# \description{
#  @get "title".
#  Reverts \code{.Last()} to the function that existed before this package
#  was attached.
# }
#
# \arguments{
#   \item{libpath}{a character string giving the complete path to the package.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# @keyword "utilities"
# @keyword "programming"
# @keyword "internal"
#*/#########################################################################
.Last.lib <- function(libpath) {
  # Revert to original .Last() function
  .LastOriginal <- NULL # To please R CMD check R v2.6.0
  if (exists(".LastOriginal", mode="function", envir=.GlobalEnv)) {
    env <- globalenv() # To please R CMD check
    assign(".Last", .LastOriginal, envir=env)
    rm(".LastOriginal", envir=.GlobalEnv)
  }
} # .Last.lib()
