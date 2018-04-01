###########################################################################/**
# @set "class=connection"
# @RdocMethod isEof
#
# @title "Checks if the current file position for a connection is at the 'End of File'"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{con}{A @connection.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @logical.
# }
#
# \details{
# Internally @see base::seek is used, which according to to the \R help
# is discouraged on Windows.  However, after many years of large-scale
# testing on various Windows versions and file systems we have yet to
# experience issues with using \code{seek()} on Windows.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("isEof", "connection", function(con, ...) {
  # Remember position
  offset <- seek(con, rw="read")

  # Try to read next byte
  bfr <- readChar(con, nchars=1)

  # Reposition
  seek(con, where=offset, rw="read")

  # No more bytes?
  (nchar(bfr) == 0)
}) # isEof()
