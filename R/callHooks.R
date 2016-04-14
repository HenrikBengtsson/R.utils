###########################################################################/**
# @RdocDefault callHooks
#
# @title "Call hook functions by hook name"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{hookName}{A @character string of the hook name.}
#  \item{...}{Argument passed to each hook function.}
#  \item{removeCalledHooks}{If @TRUE, called hook functions are removed,
#     otherwise not.}
# }
#
# \value{
#   Returns (invisibly) whatever @see "callHooks.list" returns.
# }
#
# @examples "../incl/callHooks.Rex"
#
# @author
#
# \seealso{
#   Internally, after retriving hook functions, @see "callHooks.list" is
#   called.
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("callHooks", "default", function(hookName, ..., removeCalledHooks=FALSE) {
  # Argument 'hookName':
  hookName <- as.character(hookName);
  if (length(hookName) != 1) {
    throw("Argument 'hookName' must be a single character string: ",
                                                            length(hookName));
  }

  # Argument 'removeCalledHooks':
  removeCalledHooks <- as.logical(removeCalledHooks);

  hooks <- getHook(hookName);
  if (length(hooks) == 0)
    return();

  if (!is.list(hooks))
    hooks <- list(hooks);

  if (removeCalledHooks) {
    on.exit(setHook(hookName, hooks[failedHooks], action="replace"));
  }

  res <- callHooks(hooks, ...);
  failedHooks <- attr(res, "failedHooks");

  invisible(res);
})



###########################################################################/**
# @class "function"
# @RdocMethod callHooks
# @alias callHooks.list
#
# @title "Call hook functions"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{hooks}{A @function or a @list of hook @functions or names of such.}
#  \item{...}{Argument passed to each hook function.}
# }
#
# \value{
#   Returns (invisibly) a @list that is named with hook names, if possible.
#   Each element in the list is in turn a @list with three element:
#   \code{fcn} is the hook function called, \code{result} is its return
#   value, and \code{exception} is the exception caught or @NULL.
# }
#
# @author
#
# \seealso{
#   See @see "callHooks" to call hook function by name.
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("callHooks", "list", function(hooks, ...) {
  # Argument 'hooks':
  nhooks <- length(hooks);
  if (nhooks == 0)
    return();

  res <- vector(nhooks, mode="list");

  failedHooks <- rep(TRUE, times=nhooks);
  hookNames <- character(nhooks);
  for (kk in seq_len(nhooks)) {
    # Get the hook function
    fcn <- hooks[[kk]];
    tmp <- list(fcn=fcn, result=NULL, exception=NULL);
    if (is.character(fcn)) {
      hookNames[[kk]] <- fcn;
      tryCatch({
        fcn <- get(fcn, mode="function");
      }, error = function(ex) {
        tmp[["fcn"]] <<- NA;
        tmp[["exception"]] <<- ex;
      })
    }

    # Try to call the hook function
    if (!is.null(fcn)) {
      tryCatch({
        result <- fcn(...);
        tmp[["result"]] <- result;
        failedHooks[kk] <- FALSE;
      }, error = function(ex) {
        tmp[["exception"]] <<- ex;
      })
    }
    res[[kk]] <- tmp;
  }

  names(res) <- hookNames;
  attr(res, "failedHooks") <- failedHooks;

  invisible(res);
})


setMethodS3("callHooks", "function", function(hooks, ...) {
  callHooks(list(hooks), ...);
})


############################################################################
# HISTORY:
# 2006-04-13
# o Added callHooks() for lists.  This way hook functions can be pre-fetched
#   by name once if called multiple times.
# 2005-06-15
# o Now callHooks() returns a detailed list of hooks called, their return
#   values and any exceptions caught.
# o Added arguments '...', which are passed to the hook function.
# 2005-06-10
# o Created.
############################################################################
