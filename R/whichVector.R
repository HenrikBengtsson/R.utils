###########################################################################/**
# @set "class=logical"
# @RdocMethod whichVector
# @alias whichVector.matrix
#
# @title "Identifies TRUE elements in a logical vector"
#
# \description{
#   @get "title".
#
#   \emph{NOTE: @see "base::which" should be used instead of this method}
##  unless you are running R (< 2.11.0), for which this method is faster 
#   than @see "base::which" for @logical @vectors, especially when there
#   are no missing values.
# }
# 
# @synopsis
#
# \arguments{
#   \item{x}{A @logical @vector of length N.}
#   \item{na.rm}{If @TRUE, missing values are treated as @FALSE,
#      otherwise they are returned as @NA.}
#   \item{use.names}{If @TRUE, the names attribute is preserved, 
#      otherwise it is not return.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns an @integer @vector of length less or equal to N.
# }
#
# \section{Benchmarking}{
#   In R v2.11.0 @see "base::which" was made approx. 10 times
#   faster via a native implementation.  Because of this, this
#   method is of little use and approximately 3 times slower.
#   However, for earlier version of R, this method is still 
#   significantly faster.  For example,
#   simple comparison on R v2.7.1 on Windows XP, show that
#   this implementation can be more than twice as fast as
#   @see "base::which", especially when there are no missing
#   value (and \code{na.rm=FALSE}) is used.
# }
#
# \examples{\dontrun{
#  @include "../incl/whichVector.Rex"
# }}
#
# @author
#
# \seealso{
#   @see "base::which"
# }
#
# @keyword programming
# @keyword internal
#*/########################################################################### 
setMethodS3("whichVector", "logical", function(x, na.rm=TRUE, use.names=TRUE, ...) {
  if (!is.vector(x)) {
    stop("Argument 'x' is not a vector: ", class(x)[1]);
  }

  idxs <- seq_along(x);

  # Identify TRUE and NA elements
  idxs <- idxs[x];

  # Remove missing values?
  if (na.rm) {
    idxs <- idxs[!is.na(idxs)]; 
  }

  # Use names
  if (use.names) {
    names(idxs) <- names(x)[idxs];
  }

  idxs;
}, private=TRUE) # whichVector()


setMethodS3("whichVector", "matrix", function(x, ...) {
  x <- as.vector(x);
  whichVector(x, ...);
}, private=TRUE)


############################################################################
# HISTORY:
# 2012-10-26
# o Update help("whichVector") to mention that base::which() is favorable
#   to whichVector() since R v2.11.0.  Removed the methods from the help
#   index of the package.
# 2008-07-10
# o Created.
############################################################################
