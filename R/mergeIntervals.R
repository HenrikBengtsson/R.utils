########################################################################/**
# @set "class=numeric"
# @RdocMethod mergeIntervals
#
# @title "Merges intervals"
#
# @synopsis
#
# \description{
#  @get "title" by returning an index @vector specifying the (first)
#  interval that each value maps to, if any.
# }
#
# \arguments{
#   \item{intervals}{The N intervals to be merged.
#      If an Nx2 @numeric @matrix, the first column should be the lower
#      bounds and the second column the upper bounds of each interval.
#      If a @numeric @vector of length 2N, each consecutive pair should
#      be the lower and upper bounds of an interval.
#   }
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @matrix (or a @vector) of M intervals, where M <= N.
#   The intervals are ordered by their lower bounds.
#   The @mode of the returned intervals is the same as the mode of
#   the input intervals.
# }
#
# \details{
#   The upper and lower bounds are considered to be inclusive, that is,
#   all intervals are interpreted to be of form [a,b].
#   There is currently no way to specify intervals with open bounds,
#   e.g. (a,b].
#
#   Furthermore, the bounds are currently treated as real values.
#   For instance, merging [0,1] and [2,3] will return the same intervals.
#   Note, if integer intervals were treated specially, we would merge
#   these intervals to integer interval [0,3] == \{0,1,2,3\}.
# }
#
# @author
#
# \seealso{
#  @see "inAnyInterval".
#  @see "base::match".
# }
#
# @keyword "utilities"
# @keyword "programming"
#*/#########################################################################
setMethodS3("mergeIntervals", "numeric", function(intervals, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'intervals':
  if (length(intervals) %% 2 != 0) {
    throw("Argument 'intervals' does not contain an even number of values: ",
                                                          length(intervals));
  }
  asMatrix <- is.matrix(intervals);
  if (!asMatrix) {
    intervals <- matrix(intervals, ncol=2, byrow=TRUE);
  } else if (ncol(intervals) != 2) {
    throw("Argument 'intervals' is not a matrix with two columns: ",
                                                        ncol(intervals));
  }


  # Sort intervals by the lower bounds
  o <- order(intervals[,1]);
  intervals <- intervals[o,,drop=FALSE];
  rownames(intervals) <- NULL;
  # Not needed anymore
  o <- NULL;

  # Merge intervals (assuming already ordered)
  intervals2 <- matrix(as.integer(0), nrow=0, ncol=2);
  colnames(intervals2) <- colnames(intervals);
  currInterval <- intervals[1,,drop=FALSE];
  for (kk in seq(from=2, to=nrow(intervals))) {
    nextInterval <- intervals[kk,];

    # Does the next interval overlap with the current one?
    if (nextInterval[1] <= currInterval[2]) {
      # Does it stretch beyond the current one?
      if (nextInterval[2] > currInterval[2]) {
        # Then merge the two
        currInterval[2] <- nextInterval[2];
        nextInterval <- NULL;
      } else {
        # Drop the next interval because it is fully
        # included in the current one.
        nextInterval <- NULL;
      }
    } else {
      # The next and current intervals are disjoint.
      intervals2 <- rbind(intervals2, currInterval);
      currInterval <- nextInterval;
    }
  } # for (kk ...)
  intervals2 <- rbind(intervals2, currInterval);
  rownames(intervals2) <- NULL;

  # Return intervals a vector of paired intervals
  if (!asMatrix) {
    intervals2 <- t(intervals2);
    intervals2 <- as.vector(intervals2);
  }

  intervals2;
}) # mergeIntervals()


###########################################################################
# HISTORY:
# 2008-09-20
# o Created from old mergeRegions() function.
###########################################################################
