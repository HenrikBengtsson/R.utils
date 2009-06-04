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
#  Returns a @logical @vector.
# }
#
# @author
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("isUrl", "default", function(pathname, ...) {
  hasUrlProtocol(pathname, ...);
})


###########################################################################
# HISTORY: 
# 2005-07-21
# o Created.
###########################################################################
