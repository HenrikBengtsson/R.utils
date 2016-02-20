#########################################################################/**
# @set "class=matrix"
# @RdocMethod intervalsToSeq
#
# @title "Generates a vector of indices from a matrix of intervals"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{fromTo}{An Nx2 @integer @matrix.}
#   \item{sort}{If @TRUE, the returned indices are ordered.}
#   \item{unique}{If @TRUE, the returned indices are unique.}
#   \item{...}{Not used.}
# }
#
# @author
#
# \examples{\dontrun{See example(seqToIntervals)}}
#
# \seealso{
#   @see "seqToIntervals".
# }
#
# @keyword "attribute"
#*/#########################################################################t
setMethodS3("intervalsToSeq", "matrix", function(fromTo, sort=FALSE, unique=FALSE, ...) {
  # Argument 'fromTo':
  if (ncol(fromTo) != 2) {
    throw("Argument 'fromTo' is not a two-column matrix: ", ncol(fromTo));
  }
  if (!is.numeric(fromTo)) {
    throw("Argument 'fromTo' is not a numeric matrix: ", mode(fromTo));
  }


  # Pre-allocate result vector
  ns <- fromTo[,2] - fromTo[,1] + as.integer(1);
  n <- sum(ns);
  res <- vector("integer", n);

  offset <- as.integer(0);
  for (rr in seq_len(nrow(fromTo))) {
    # Sequence for current interval
    idxs <- offset + 1:ns[rr];
    res[idxs] <- fromTo[rr,1]:fromTo[rr,2];
    # Not needed anymore
    idxs <- NULL;

    # Next interval
    offset <- offset + ns[rr];
  }

  # Return unique indices?
  if (unique) {
    res <- unique(res);
  }

  # Return sorted indices?
  if (sort) {
    res <- sort(res);
  }

  res;
})


###########################################################################
# HISTORY:
# 2008-07-01
# o Created.
###########################################################################
