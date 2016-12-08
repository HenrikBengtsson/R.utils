#########################################################################/**
# @RdocFunction nullfile
#
# @title "Gets the pathname of the NULL device on the current platform"
#
# \description{
#  @get "title".  On Windows, it returns \code{"NUL"}.  On all other
#  platforms include Unix and macOS it returns \code{"/dev/null"}.
# }
#
# \usage{
#   @usage nullfile
# }
#
# \value{
#   Returns a @character string.
# }
#
# @author
#
# @keyword "programming"
# @keyword "file"
#*/#########################################################################
nullfile <- function() {
  switch(.Platform$OS.type,
    windows="NUL",
    "/dev/null"
  )
}
