if (!exists("dimNA<-", mode="function")) {
  "dimNA<-" <- function(x, value) {
    UseMethod("dimNA<-")
  }
}



###########################################################################/**
# @RdocDefault "dimNA<-"
# \alias{dimNA<-}
# \alias{dimNA<-.default}
#
# @title "Sets the dimension of an object with the option to infer one dimension autmatically"
#
# \description{
#  @get "title".
#  If one of the elements in the dimension @vector is @NA, then its value
#  is inferred from the length of the object and the other elements in the
#  dimension vector.  If the inferred dimension is not an @integer, an
#  error is thrown.
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{An R object.}
#   \item{value}{@NULL of a positive @numeric @vector with one optional @NA.}
# }
#
# \value{
#   Returns (invisibly) what \code{dim<-()} returns
#   (see @see "base::dim" for more details).
# }
#
# \examples{
#   x <- 1:12
#   dimNA(x) <- c(2,NA,3)
#   stopifnot(dim(x) == as.integer(c(2,2,3)))
# }
#
# @author
#
# \seealso{
#  @see "base::dim".
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("dimNA<-", "default", function(x, value) {
  # Argument 'x':
  n <- length(x);

  # Argument 'value':
  if (!is.null(value)) {
    value <- as.integer(value);
    dimStr <- sprintf("c(%s)", paste(value, collapse=", "));

    # Infer one dimension automatically?
    nas <- which(is.na(value));
    if (length(nas) > 0) {
      if (length(nas) > 1) {
        throw("Argument 'value' may only have one NA: ", dimStr);
      }
      value[nas] <- as.integer(n / prod(value[-nas]));
    }

    # Validate the new dimension is compatible with the number of elements
    if (prod(value) != n) {
      stop("Argument 'dim' does not match the number of elements: ",
           "prod(", dimStr, ") == ", prod(value), " does not equal ", n);
    }
  }

  dim(x) <- value;

  invisible(x);
}) # dimNA<-()



############################################################################
# HISTORY:
# 2013-09-15
# o TYPO: An error message of dimNA<-() was referring to 'files' rather
#   than to 'elements.
# 2009-06-08
# o Added Rdoc comments.
# o The generic function automatically created for dimNA<-() has arguments
#   '...', which is not valid (anymore?) for replacement functions.
# 2009-06-03
# o Created.
############################################################################
