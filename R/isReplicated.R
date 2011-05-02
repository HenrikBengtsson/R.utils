###########################################################################/**
# @RdocFunction isReplicated
# @alias replicates
#
# @title "Identifies all entries with replicated values"
#
# \description{
#   @get "title", that is, with values that exist more than once.
# }
#
# \usage{
#  isReplicated(x, ...)
#  replicates(x, ...)
# }
#
# \arguments{
#  \item{x}{A @vector of length K.}
#  \item{...}{Additional arguments passed to @see "base::duplicated".}
# }
#
# \value{
#  A @logical @vector of length K,
#  where @TRUE indicates that the value exists elsewhere,
#  otherwise not.
# }
#
# \details{
#  Let \code{reps <- isReplicated(x)}.  Then it always holds that:
#  \itemize{
#   \item \code{reps == rev(isReplicated(rev(x)))}
#   \item \code{reps == duplicated(x) | duplicated(x, fromLast=TRUE)}
#   \item \code{reps == !is.element(x, setdiff(x, unique(x[duplicated(x)])))}
#  }
# }
#
# @examples "../incl/isReplicated.Rex"
#
# @author
#
# \seealso{
#  Internally @see "base::duplicated" is used.
#  See also @see "isSingle".
# }
#*/########################################################################### 
isReplicated <- function(x, ...) {
  dupsF <- duplicated(x, ...);
  dupsR <- duplicated(x, ..., fromLast=TRUE);
  (dupsF | dupsR);
}

replicates <- function(x, ...) {
  x[isReplicated(x, ...)];
}


############################################################################
# HISTORY:
# 2011-04-30 [HB] 
# o Added isReplicated(), and replicates() as well as corresponding
#   isSingle(), and singles().
# o Created.
############################################################################
