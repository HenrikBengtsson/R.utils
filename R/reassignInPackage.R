###########################################################################/**
# @RdocDefault reassignInPackage
#
# @title "Re-assigns a new value to an existing object in a loaded package"
#
# \description{
#  @get "title".
# }
# 
# @synopsis 
#
# \arguments{
#   \item{name}{The name of the object to be replaced."}
#   \item{pkgName}{The name of the package where the object lives."}
#   \item{value}{The new value to be assigned.}
#   \item{keepOld}{If @TRUE, the old value is kept as attribute
#     \code{oldValue} in the new object.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the new object.
# }
#
# @author
#
# \seealso{
#   See \code{assignInNamespace()} in @see "utils::getFromNamespace".
# }
#
# @keyword internal
#*/###########################################################################
setMethodS3("reassignInPackage", "default", function(name, pkgName, value, keepOld=TRUE, ...) {
  # Get the environment where to look for the function to replace
  envName <- sprintf("package:%s", pkgName);
  if (!envName %in% search())
    throw("Package not loaded: ", pkgName);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Patch
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get the object to be replaced

  # Workaround for the fact that getAnywhere() is not accepting a string!  
  expr <- substitute(getAnywhere(name), list(name=name));
  obj <- eval(expr);

  pos <- which(obj$where == sprintf("namespace:%s", pkgName));
  if (length(pos) == 0) {
    throw("Argument 'name' does not refer to an existing object: ", name);
  }
  oldValue <- obj$objs[[pos]];

  # Get environment of this object
  env <- environment(oldValue);

  # Assign this environment to the new object
  environment(value) <- env;

  # Keep the old value?
  if (keepOld)
    attr(value, "oldValue") <- oldValue;

  unlockBindingT <- base::unlockBinding;
  unlockBindingT(name, env);
  assignInNamespaceT <- utils::assignInNamespace;
  assignInNamespaceT(name, value, ns=pkgName, envir=env);
  assign(name, value, envir=env);
  lockBinding(name, env);

  invisible(value);
}, private=TRUE) # reassignInPackage()
