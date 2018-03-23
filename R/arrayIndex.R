###########################################################################/**
# @RdocDefault arrayIndex
#
# @title "Converts vector indices to array indices"
#
# @synopsis
#
# \description{
#  @get "title" assuming last array dimension to "move fastest", e.g.
#  matrices are stored column by column.
# }
#
# \arguments{
#  \item{i}{A @vector of vector indices to be converted to array 
#    indices.}
#  \item{dim}{A non-empty @numeric @vector specifying the dimension of 
#    the array.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns an @integer @matrix of \code{length(i)} rows and 
#  \code{length(dim)} columns.
# }
#
# \examples{\donttest{
# @include "../incl/arrayIndex.Rex"
# }}
#
# \references{
#  [1] H. Bengtsson, \emph{Bayesian Networks - a self-contained 
#      introduction with implementation remarks}, Master's Thesis in 
#      Computer Science, Mathematical Statistics, Lund Institute of 
#      Technology, 1999.\cr
# }
#
# \seealso{
#   From R v2.11.0 there is @see "base::arrayInd", which does
#   the same thing as this method.
#   @see "base::which" with argument \code{arr.ind=TRUE}.
# }
#
# @keyword manip
# @keyword utilities
# @keyword internal
#*/########################################################################### 
setMethodS3("arrayIndex", "default", function(i, dim, ...) {
  .Defunct(msg = "R.utils::arrayIndex() is defunct. Instead, use base::arrayInd().")
})
