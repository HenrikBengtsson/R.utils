########################################################################/**
# @set "class=numeric"
# @RdocMethod inAnyInterval
#
# @title "Checks if a set of values are inside one or more intervals"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#   \item{...}{Arguments passed to @seemethod "mapToIntervals".}
# }
#
# \value{
#   Returns a @logical @vector.
# }
#
# @author
# 
# \seealso{
#  @see "mapToIntervals".
# }
#
# @keyword "utilities" 
# @keyword "programming"
#*/#########################################################################  
setMethodS3("inAnyInterval", "numeric", function(...) {
  idxs <- mapToIntervals(...);
  idxs <- is.finite(idxs);
  idxs;
}) # inAnyInterval()


###########################################################################
# HISTORY:
# 2008-09-20
# o Created.
###########################################################################
