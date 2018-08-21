#########################################################################/**
# @RdocFunction nullfile
# @alias nullcon
#
# @title "Gets the pathname or a connection to the NULL device on the current platform"
#
# \description{
#  @get "title".
# }
#
# \usage{
#   @usage nullfile
#   @usage nullcon
# }
#
# \value{
#   \code{nullfile()} returns a @character string, which is \code{"/dev/null"}
#   except on Windows where it is \code{"NUL"}.
#   \code{nullcon()} returns a (binary) @connection to the NULL device.
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

nullcon <- local({
  nullfile <- nullfile()
  function() file(nullfile, open = "wb")
})

