###########################################################################/**
# @RdocDefault dataFrame
#
# @title "Allocates a data frame with given column classes"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#  \item{colClasses}{A @character @vector of column classes,
#    cf. @see "utils::read.table".}
#  \item{nrow}{An @integer specifying the number of rows of the
#    allocated data frame.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns an NxK @data.frame where N equals \code{nrow} and
#  K equals \code{length(colClasses)}.
# }
#
# \examples{
#   df <- dataFrame(colClasses=c(a="integer", b="double"), nrow=10)
#   df[,1] <- sample(1:nrow(df))
#   df[,2] <- rnorm(nrow(df))
#   print(df)
# }
#
# \seealso{
#   @data.frame.
# }
#
# @keyword manip
# @keyword utilities
#*/###########################################################################
setMethodS3("dataFrame", "default", function(colClasses, nrow=1, ...) {
  df <- vector("list", length=length(colClasses));
  names(df) <- names(colClasses);
  for (kk in seq_along(df)) {
    df[[kk]] <- vector(colClasses[kk], length=nrow);
  }

  attr(df, "row.names") <- seq_len(nrow);
  class(df) <- "data.frame";
  df;
}, private=TRUE)

##############################################################################
# HISTORY:
# 2007-11-25
# o Added Rdoc comments.
# 2006-11-22
# o Created.
##############################################################################
