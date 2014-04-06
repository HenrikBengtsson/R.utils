########################################################################/**
# @class character
# @RdocMethod isOpen
#
# @title "Checks if there is an open connection to a file"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#   \item{pathname}{An @character @vector.}
#   \item{rw}{A @character @vector.
#     If \code{"read"}, a file is considered to be open if there exist an
#     open connection that can read from that file.
#     If \code{"write"}, a file is considered to be open if there exist an
#     open connection that can write to that file.
#     Both these values may be specified.
#   }
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @logical @vector indicating for each file whether there
#   exists an open file @connection or not.
# }
#
# @author
#
# \seealso{
#   See \code{isOpen()} in @see "base::connections".
#   @see "base::showConnections".
# }
#
# @keyword "IO"
# @keyword "utilities"
#*/#########################################################################
setMethodS3("isOpen", "character", function(pathname, rw=c("read", "write"), ...) {
  # Arguments 'pathname':
  pathname <- as.character(pathname);
  nPathnames <- length(pathname);

  # Arguments 'rw':
  if (!all(rw %in% c("read", "write"))) {
    throw("Argument 'rw' contains unknown values: ", paste(rw, collapse=", "));
  }

  # Nothing to do?
  if (nPathnames == 0L) return(logical(0L));

  # Multiple pathnames?
  if (nPathnames > 1L) {
    res <- sapply(pathname, FUN=isOpen, rw=rw, ...);
##    names(res) <- pathname;
    return(res);
  }


  # Check single pathname
  pathname <- getAbsolutePath(pathname);

  # Get all (user) connections
  cons <- getAllConnections();
  cons <- cons[cons > 2];

  for (cc in cons) {
    info <- summary.connection(cc);
    # Look only for file connections
    if (!info$class %in% c("file"))
      next;
    # Is is open?
    if (!info$opened %in% c("opened"))
      next;
    # Is is open for reading?
    if (("read" %in% rw) && !(info[["can read"]] %in% c("yes")))
      next;
    # Is is open for writing?
    if (("write" %in% rw) && !(info[["can write"]] %in% c("yes")))
      next;
    # Is it opened to the same file?
    filename <- getAbsolutePath(info$description);
    if (identical(filename, pathname))
      return(TRUE);
  }

  FALSE;
})



############################################################################
# HISTORY:
# 2014-04-06
# o Vectorized isOpen().
# 2006-08-21
# o Created.
############################################################################
