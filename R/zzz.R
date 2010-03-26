# Allows conflicts. For more information, see library() and
# conflicts() in [R] base.
.conflicts.OK <- TRUE;


## .First.lib <- function(libname, pkgname) {
.onAttach <- function(libname, pkgname) { 
  pkg <- Package(pkgname);
  pos <- getPosition(pkg);
  assign(pkgname, pkg, pos=pos);

  # Add a default Verbose object at threshold -1.
  assign("verbose", Verbose(threshold=-1), pos=pos);

  # Patch for Sys.setenv() and Sys.putenv()
  # Sys.setenv() replaces Sys.putenv() from R v2.5.0. Code for migration.
  if (!exists("Sys.setenv", mode="function", envir=baseenv())) {
    assign("Sys.setenv", Sys.putenv, pos=pos);
  }

  # Patch for default parse() depending on R version
#  env <- as.environment("package:R.utils");
#  setMethodS3("parse", "default", appendVarArgs(base::parse), 
#                                            conflict="quiet");#  , envir=env);
#  assign("parse.default", parse.default, pos=pos);
#  assignInNamespace("parse.default", parse.default, pos=pos);

  # Add as.character.hexmode(), if missing.
  .patchAsCharacterHexMode();

  # Make .Last() call finalizeSession() when R finishes.
  tryCatch({
    addFinalizerToLast();
  }, error=function(ex) {
    warning(getMessage(ex));
  })

  onSessionExit(function(...) detachPackage(pkgname));

  packageStartupMessage(getName(pkg), " v", getVersion(pkg), " (", 
    getDate(pkg), ") successfully loaded. See ?", pkgname, " for help.");
}


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
