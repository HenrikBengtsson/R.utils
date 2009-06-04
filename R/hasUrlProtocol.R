###########################################################################/**
# @RdocDefault hasUrlProtocol
#
# @title "Checks if one or several pathnames has a URL protocol"
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
setMethodS3("hasUrlProtocol", "default", function(pathname, ...) {
  pattern <- "^([abcdefghijklmnopqrstuvwxyz]+)(://.*)";
  (regexpr(pattern, pathname) != -1);
})


###########################################################################
# HISTORY: 
# 2005-07-21
# o Created.
###########################################################################
