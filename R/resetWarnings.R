###########################################################################/**
# @RdocDefault resetWarnings
#
# @title "Resets recorded warnings"
#
# \description{
#  @get "title".
#  \emph{This function only worked with R (< 2.4.0) and is now deprecated.}
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
# @keyword internal
#*/###########################################################################
setMethodS3("resetWarnings", "default", function(...) {
  if (getRversion() >= "2.4.0") {
    .Deprecated(msg="R.utils::resetWarnings() only works prior to R v2.4.0. There are no known alternatives.")
  }

  if (exists("last.warning", envir=.GlobalEnv)) {
    lw <- get("last.warning", envir=.GlobalEnv);
    count <- length(lw);
    rm(list="last.warning", envir=.GlobalEnv);
  } else {
    count <- 0;
  }

  invisible(as.integer(count));
}, deprecated=TRUE)



############################################################################
# HISTORY:
# 2007-06-09
# o Using rm(list="last.warning") instead of rm(last.warning) in
#   resetWarnings().
# 2005-07-07
# o Created.
############################################################################
