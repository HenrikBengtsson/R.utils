###########################################################################/**
# @RdocDefault finalizeSession
#
# @title "Function to call for finalizing the R session"
#
# \description{
#   @get "title".  When called, all registered "onSessionExit" hooks 
#   (functions) are called.  To define such hooks, use the 
#   @see "onSessionExit" function.
#
#   This method should not be used by the user.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the hooks successfully called.
# }
#
# @author
#
# \seealso{
#   @see "onSessionExit".
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("finalizeSession", "default", function(...) {
  callHooks("onSessionExit", removeCalledHooks=TRUE);
}, private=TRUE)



############################################################################
# HISTORY:
# 2005-06-10
# o Created. Followed up with a query on r-devel for a better solution.
############################################################################
