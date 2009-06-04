###########################################################################/**
# @set "class=matrix"
# @RdocMethod rowMedians
#
# @title "Calculates the median for each row in a matrix"
#
# \description{
#   @get "title". 
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{A @matrix.}
#  \item{na.rm}{If @TRUE, @NAs are excluded before calculating the medians,
#    otherwise not.}
#  \item{...}{Not use.}
# }
#
# \value{
#   Returns a @vector of length equal to number of rows in \code{x}.
# }
#
# \details{
#   If package \code{R.native} is available then its \code{rowMedians()} 
#   implemented in native code is used instead!
# }
#
# @examples "../incl/rowMedians.matrix.Rex"
#
# @author
#
# \seealso{
#   @see "base::rowMeans".
#   @see "base::rowSum".
# }
#
# @keyword programming
#*/########################################################################### 
setMethodS3("rowMedians", "matrix", function(x, na.rm=FALSE, ...) { 
  # If possible, use the native code version of rowMedians() in R.native.
  if (require(R.native)) {
    fcn <- get("rowMedians.matrix", mode="function", envir=getEnvironment(R.native));
    return(fcn(x, na.rm=TRUE));
  }

  if (na.rm) {
    if (!any(is.na(x)))
      na.rm <- FALSE;
  }

  if (na.rm) {
    .median <- function(x) {
      x <- x[!is.na(x)];
      n <- length(x);
      if (n == 0)
        return(NA);
      half <- (n + 1)/2;
      if (n%%2 == 1) {
        sort(x, partial = half)[half]
      } else {
        mids <- c(half, half+1);
        sum(sort(x, partial=mids)[mids])/2;
      }
    }
    y <- apply(x, MARGIN=1, FUN=.median);
  } else {
    # Find rows that contains NAs and there for will return NAs
    n <- ncol(x);
    nas <- rep(FALSE, length=nrow(x));
    for (kk in seq(length=n))
      nas <- nas | is.na(x[,kk]);

    # Same number of data points for all rows
    half <- (n + 1)/2;
    mids <- c(half, half+1);
  
    if (n%%2 == 1) {
      .median <- function(x) {
         sort(x, partial=half)[half];
      }
    } else {
      .median <- function(x) {
         sum(sort(x, partial=mids)[mids])/2;
      }
    }

    y <- rep(NA, length=nrow(x));
    y[!nas] <- apply(x[!nas,,drop=FALSE], MARGIN=1, FUN=.median);
  }

  y;
})



############################################################################
# HISTORY:
# 2005-11-24
# o Created.
############################################################################  
