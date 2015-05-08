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
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("isEof", "connection", function(con, ...) {
  # Remember position
  offset <- seek(con, rw="read");

  # Try to read next byte
  bfr <- readChar(con, nchars=1);

  # Reposition
  seek(con, where=offset, rw="read");

  # No more bytes?
  (nchar(bfr) == 0);
}) # isEof()


############################################################################
# HISTORY:
# 2007-11-26
# o Added Rdoc comments.
# 2007-04-01
# o Created.
############################################################################
