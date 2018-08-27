#########################################################################/**
# @RdocDefault seqToIntervals
#
# @title "Gets all contiguous intervals of a vector of indices"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{idx}{A @vector of N @integer indices.}
#   \item{...}{Not used.}
# }
#
# \value{
#   An Nx2 @integer @matrix.
# }
#
# @author
#
# @examples "../incl/seqToIntervals.Rex"
#
# \seealso{
#   @set "class=matrix"
#   @seemethod "intervalsToSeq".
#   To identify sequences of \emph{equal} values, see @see "base::rle".
# }
#
# @keyword "attribute"
#*/#########################################################################t
setMethodS3("seqToIntervals", "default", function(idx, ...) {
  # Clean up sequence
  idx <- as.integer(idx)
  idx <- unique(idx)
  idx <- sort(idx)

  n <- length(idx)
  if (n == 0L) {
    res <- matrix(NA_integer_, nrow=0L, ncol=2L)
    colnames(res) <- c("from", "to")
    return(res)
  }


  # Identify end points of intervals
  d <- diff(idx)
  d <- (d > 1)
  d <- which(d)
  nbrOfIntervals <- length(d) + 1

  # Allocate return matrix
  res <- matrix(NA_integer_, nrow=nbrOfIntervals, ncol=2L)
  colnames(res) <- c("from", "to")

  fromValue <- idx[1]
  toValue <- fromValue-1
  lastValue <- fromValue

  count <- 1
  for (kk in seq_along(idx)) {
    value <- idx[kk]
    if (value - lastValue > 1) {
      toValue <- lastValue
      res[count,] <- c(fromValue, toValue)
      fromValue <- value
      count <- count + 1
    }
    lastValue <- value
  }

  if (toValue < fromValue) {
    toValue <- lastValue
    res[count,] <- c(fromValue, toValue)
  }

  res
})
