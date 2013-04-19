###########################################################################/**
# @RdocDefault onGarbageCollect
#
# @title "Registers a function to be called when the R garbage collector
#   is (detected to be) running"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{fcn}{A @function to be called without argument.}
#  \item{action}{A @character string specifying how the hook function is
#    added to list of hooks.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the hooks successfully called.
# }
#
# @author
#
# \examples{\dontrun{
#   onGarbageCollect(function(...) {
#     message("The R garbage collector is running!");
#   })
# }}
#
# @keyword programming
#*/###########################################################################
setMethodS3("onGarbageCollect", "default", function(fcn, action=c("prepend", "append", "replace"), ...) {
  # Argument 'fcn':
  if (!is.function(fcn)) {
    throw("Argument 'fcn' is not a function: ", class(fcn)[1]);
  }

  # Argument 'action':
  action <- match.arg(action);

##  setHook("onGarbageCollect", fcn, action=action);

  dummyEnv <- new.env();
  reg.finalizer(dummyEnv, fcn, onexit=FALSE);
  invisible();
})


############################################################################
# HISTORY:
# 2010-02-16
# o Created.
############################################################################
