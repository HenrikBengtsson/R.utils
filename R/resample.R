###########################################################################/**
# @RdocDefault resample
#
# @title "Sample values from a set of elements"
#
# \description{
#  @get "title".
#  Contrary to @see "base::sample", this function also works as
#  expected when there is only one element in the set to be sampled, cf. [1].
#  This function originates from the example code of @see "base::sample"
#  as of R v2.12.0.
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{A @vector of any length and data type.}
#   \item{...}{Additional arguments passed to @see "base::sample.int".}
# }
#
# \value{
#  Returns a sampled @vector of the same data types as argument \code{x}.
# }
#
# @author
#
# \seealso{
#   Internally @see "base::sample.int" is used.
# }
#
# \references{
#   [1] Henrik Bengtsson,
#       \emph{Using sample() to sample one value from a single value?},
#       R-devel mailing list, 2010-11-03.\cr
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("resample", "default", function(x, ...) {
  x[sample.int(length(x), ...)];
})


###########################################################################
# HISTORY:
# 2010-11-03
# o Created from example("sample") in R v2.12.0.  See R-devel thread
#   'Using sample() to sample one value from a single value?' by
#   Henrik Bengtsson on 2010-11-03.
###########################################################################
