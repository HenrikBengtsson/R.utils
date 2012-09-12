.detachPlain <- function(pos, ...) {
  env <- as.environment(pos);

  # Temporarily remove all of the package's detach hooks
  name <- attr(env, "name");
  pkgName <- gsub("^package:", "", name);
  hookName <- packageEvent(pkgName, "detach");
  hooks <- getHook(hookName);
  if (length(hooks) > 0) {
    on.exit({
      setHook(hookName, hooks, action="replace");
    }, add=TRUE);
    setHook(hookName, list(), action="replace");
  }

  # Temporarily remove the package's library path in order to 
  # prevent the package's .Last.lib() to be run.
  libpath <- attr(env, "path");
  if (!is.null(libpath)) {
    on.exit({
      attr(env, "path") <- libpath;
    }, add=TRUE);
    attr(env, "path") <- NULL;
  }

  # Detach the package
  detach(pos=pos, unload=FALSE, force=TRUE);
} # .detachPlain()  


############################################################################
# HISTORY:
# 2012-09-12
# o Created.
############################################################################
