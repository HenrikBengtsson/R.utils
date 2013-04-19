###########################################################################/**
# @RdocDefault onSessionExit
#
# @title "Registers a function to be called when the R session finishes"
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
# \details{
#   Functions registered this way are called when @see "finalizeSession" is
#   called.  Moreover, when this package is loaded, the \code{.Last()}
#   function is modified such that \code{finalizeSession()} is called.
#   However, note that \code{.Last()} is \emph{not} guaranteed to be called
#   when the \R session finished.  For instance, the user may quit \R by
#   calling \code{quit(callLast=FALSE)}.
#   Moreover, when \R is run in batch mode, \code{.Last()} is never called.
# }
#
# @author
#
# \examples{\dontrun{
#   onSessionExit(function(...) {
#     message("Bye bye world!");
#   })
#
#   quit()
# }}
#
# \seealso{
#   \code{\link{.Last}()}.
#   @see "finalizeSession".
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("onSessionExit", "default", function(fcn, action = c("prepend", "append", "replace"), ...) {
  # Argument 'fcn':
  if (!is.function(fcn))
    throw("Argument 'fcn' is not a function: ", mode(fcn));

  # Argument 'action':
  action <- match.arg(action);

  setHook("onSessionExit", fcn, action=action);
})


############################################################################
# HISTORY:
# 2005-06-11
# Now onSessionExit() prepends (and appends) hook functions by default.
# 2005-06-10
# o Created. Followed up with a query on r-devel for a better solution.
############################################################################
