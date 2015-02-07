###########################################################################/**
# @RdocDefault isUrl
#
# @title "Checks if one or several pathnames is URLs"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character @vector.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @logical @vector of either @TRUE or @FALSE.
# }
#
# @author
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("isUrl", "default", function(pathname, ...) {
  res <- hasUrlProtocol(pathname, ...)
  res[is.na(res)] <- FALSE
  res
})


###########################################################################
# HISTORY:
# 2015-02-06
# o Now isUrl(NA) returns FALSE (instead of NA).
# 2005-07-21
# o Created.
###########################################################################
