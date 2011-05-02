###########################################################################/**
# @RdocFunction isSingle
# @alias singles
#
# @title "Identifies all entries that exists exactly ones"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  isSingle(x, ...)
#  singles(x, ...)
# }
#
# \arguments{
#  \item{x}{A @vector of length K.}
#  \item{...}{Additional arguments passed to @see "isReplicated".}
# }
#
# \value{
#  A @logical @vector of length K, 
#  indicating whether the value is unique or not.
# }
#
# @author
#
# \seealso{
#  Internally @see "isReplicated" is used.
# }
#*/########################################################################### 
isSingle <- function(x, ...) {
  !isReplicated(x, ...);
}

singles <- function(x, ...) {
  x[isSingle(x, ...)];
}


############################################################################
# HISTORY:
# 2011-04-30 [HB] 
# o Added isReplicated(), and replicates() as well as corresponding
#   isSingle(), and singles().
# o Created.
############################################################################
