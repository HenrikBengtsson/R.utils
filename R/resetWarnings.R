###########################################################################/**
# @RdocDefault resetWarnings
#
# @title "Resets recorded warnings"
#
# \description{
#  @get "title".
#  \emph{This function only worked with R (< 2.4.0) and is now defunct.}
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
  .Defunct(msg="R.utils::resetWarnings() only works prior to R v2.4.0. There are no known alternatives.")
}, deprecated=TRUE)
