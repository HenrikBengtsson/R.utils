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
#   except on Windows where it is \code{"nul:"}.
#   \code{nullcon()} returns a \emph{newly opened} (binary) @connection to
#   the NULL device - make sure to close it when no longer needed.
# }
#
# \seealso{
#   In R (>= 3.6.0), there exists \code{base::nullfile()}, which is
#   identical to \code{R.utils::nullfile()}.
# }
#
# @author
#
# @keyword "programming"
# @keyword "file"
#*/#########################################################################
nullfile <- function() {
  switch(.Platform$OS.type,
    windows="nul:",
    "/dev/null"
  )
}

nullcon <- local({
  nullfile <- nullfile()
  function() file(nullfile, open = "wb")
})

