## covr: skip=all
.onLoad <- function(libname, pkgname) {
  ns <- getNamespace(pkgname);
  pkg <- Package(pkgname);
  assign(pkgname, pkg, envir=ns, inherits=FALSE);

  # Set 'asGString' option via system environment variable
  value <- getOption("Arguments$getCharacters/args/asGString")
  if (is.null(value)) {
    value <- Sys.getenv("R.utils_asGString")
    if (nzchar(value)) {
      value <- isTRUE(as.logical(value));
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
  pos <- which(sprintf("package:%s", pkgname) == search());

  if (length(pos) == 1L) {
    # Add a default Verbose object at threshold -1.
    assign("verbose", Verbose(threshold=-1), pos=pos);

    # Patch for default parse() depending on R version
#    env <- as.environment("package:R.utils");
#    setMethodS3("parse", "default", appendVarArgs(base::parse),
#                                       conflict="quiet");
#    assign("parse.default", parse.default, pos=pos);
#    assignInNamespace("parse.default", parse.default, pos=pos);

    # Make .Last() call finalizeSession() when R finishes.
    tryCatch({
      addFinalizerToLast();
    }, error=function(ex) {
      msg <- paste("The R.utils package may have failed to append a session finalizer to .Last(), because: ", ex$message, sep="");
      warning(msg, call.=FALSE, immediate.=TRUE);
    })

    onSessionExit(function(...) detachPackage(pkgname));
  } # if (length(pos) == 1L)

  pkg <- get(pkgname, envir=getNamespace(pkgname), inherits=FALSE);
  startupMessage(pkg);
} # .onAttach()


.Last.lib <- function(libpath) {
  # Revert to original .Last() function
  .LastOriginal <- NULL; # To please R CMD check R v2.6.0
  if (exists(".LastOriginal", mode="function", envir=.GlobalEnv)) {
    env <- globalenv(); # To please R CMD check
    assign(".Last", .LastOriginal, envir=env);
    rm(".LastOriginal", envir=.GlobalEnv);
  }
} # .Last.lib()


############################################################################
# HISTORY:
# 2012-03-20
# o BUG FIX: .onAttach() would try to call getMessage(ex) on an 'error'
#   if there was a problem adding a finalizer, resulting in "no applicable
#   method for 'getMessage' applied to an object of class "c('simpleError',
#   'error', 'condition')".  Now using 'ex$message' instead.
# 2010-11-01
# o Added a workaround for an R (>= 2.15.0) CMD check NOTE.
# 2008-07-03
# o Now as.character.hexmode() is added from .First.lib().
# 2007-06-09
# o Added "declaration" of '.LastOriginal' in .Last.lib().
# 2006-05-09
# o Added dynamic assignment of patch.default() since the .Internal() call
#   in base::parse() use different arguments in R v2.4.1 and R v2.5.0.
#   one depending on R version.
# 2005-06-23
# o Added default Verbose object 'verbose'.
############################################################################
