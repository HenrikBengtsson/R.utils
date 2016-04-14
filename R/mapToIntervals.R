########################################################################/**
# @set "class=numeric"
# @RdocMethod mapToIntervals
#
# @title "Maps values to intervals"
#
# @synopsis
#
# \description{
#  @get "title" by returning an index @vector specifying the (first)
#  interval that each value maps to, if any.
# }
#
# \arguments{
#   \item{x}{A @numeric @vector of K values to be matched.}
#   \item{intervals}{The N intervals to be matched against.
#      If an Nx2 @numeric @matrix, the first column should be the lower
#      bounds and the second column the upper bounds of each interval.
#      If a @numeric @vector of length 2N, each consecutive pair should
#      be the lower and upper bounds of an interval.
#   }
#   \item{includeLower, includeUpper}{If @TRUE, the lower (upper) bound
#      of \emph{each} interval is included in the test, otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector of length K.
#   Values that do not map to any interval have return value @NA.
# }
#
# @author
#
# \seealso{
#  @see "inAnyInterval".
#  @see "base::match".
#  @see "base::findInterval".
#  @see "base::cut".
# }
#
# @keyword "utilities"
# @keyword "programming"
#*/#########################################################################
setMethodS3("mapToIntervals", "numeric", function(x, intervals, includeLower=TRUE, includeUpper=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x)) {
    throw("Argument 'x' is not numeric: ", mode(x)[1]);
  }

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


  # Setup test function
  if (includeLower && includeUpper) {
    isInside <- function(x, interval, ...) {
      (interval[1] <= x & x <= interval[2]);
    }
  } else if (includeLower && !includeUpper) {
    isInside <- function(x, interval, ...) {
      (interval[1] <= x & x < interval[2]);
    }
  } else if (!includeLower && includeUpper) {
    isInside <- function(x, interval, ...) {
      (interval[1] < x & x <= interval[2]);
    }
  } else if (!includeLower && !includeUpper) {
    isInside <- function(x, interval, ...) {
      (interval[1] < x & x < interval[2]);
    }
  }

  map <- rep(NA_integer_, times=length(x));
  nbrOfIntervals <- nrow(intervals);
  for (kk in seq_len(nbrOfIntervals)) {
    rr <- (nbrOfIntervals - kk + 1L);
    ll <- isInside(x, intervals[rr,]);
    map[ll] <- rr;
  }

  map;
}) # mapToIntervals()


###########################################################################
# HISTORY:
# 2008-09-20
# o Created.
###########################################################################
