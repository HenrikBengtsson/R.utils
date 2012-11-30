# Allows conflicts. For more information, see library() and
# conflicts() in [R] base.
.conflicts.OK <- TRUE;

.onLoad <- function(libname, pkgname) {
  ns <- asNamespace(pkgname);
  # This make print(R.utils::R.utils) work without loading the package
  delayedAssign(pkgname, Package(pkgname), assign.env=ns);
} # .onLoad()


.onAttach <- function(libname, pkgname) { 
  pos <- which(pkgname == search());

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

    pkg <- Package(pkgname);
    assign(pkgname, pkg, pos=pos);

    onSessionExit(function(...) detachPackage(pkgname));

    packageStartupMessage(getName(pkg), " v", getVersion(pkg), " (", 
      getDate(pkg), ") successfully loaded. See ?", pkgname, " for help.");
  } # if (length(pos) == 1L)
} # .onAttach()


.Last.lib <- function(libpath) {
  # Revert to original .Last() function
  .LastOriginal <- NULL; # To please R CMD check R v2.6.0
  if (exists(".LastOriginal", mode="function", envir=.GlobalEnv)) {
    assign(".Last", .LastOriginal, envir=.GlobalEnv);
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
