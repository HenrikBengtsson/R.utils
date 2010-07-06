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
# @examples "../incl/arrayIndex.Rex"
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
#*/########################################################################### 
setMethodS3("arrayIndex", "default", function(i, dim, ...) {
  ndim <- length(dim);       # number of dimension
  dim <- as.integer(dim);
  pi <- cumprod(c(1L,dim));  # base

  # Allocate return matrix
  naValue <- as.integer(NA);
  j <- matrix(naValue, nrow=length(i), ncol=ndim);

  i <- (i-1);
  for (kk in 1:ndim) {
    j[,kk] <- as.integer(floor((i %% pi[kk+1])/pi[kk]));
  }
  j <- j + 1L;

  j;
})

############################################################################
# HISTORY:
# 2010-07-05
# o Now arrayIndex() returns an @integer @matrix.
# o Added an Rd link to base::arrayInd.
# 2006-03-07
# o Created as an answer to R-help thread "[R] returning the largest element
#   in an array/matrix?" on 2006-03-07.
############################################################################
