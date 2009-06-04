###########################################################################/**
# @RdocDefault resetWarnings
#
# @title "Resets recorded warnings"
#
# \description{
#  @get "title". 
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns (invisibly) the number of warnings removed.
# }
#
# 
#
# @author
#
# \seealso{
#   @see "base::warnings"
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("resetWarnings", "default", function(...) {
  if (exists("last.warning", envir=.GlobalEnv)) {
    lw <- get("last.warning", envir=.GlobalEnv);
    count <- length(lw);
    rm(list="last.warning", envir=.GlobalEnv);
  } else {
    count <- 0;
  }

  invisible(as.integer(count));
})



############################################################################
# HISTORY: 
# 2007-06-09
# o Using rm(list="last.warning") instead of rm(last.warning) in 
#   resetWarnings().
# 2005-07-07
# o Created.
############################################################################
