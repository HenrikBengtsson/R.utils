###########################################################################/**
# @RdocDefault touchFile
#
# @title "Updates the timestamp of a file"
#
# \description{
#   @get "title".  
#   Currently, it is only possible to change the timestamp specifying when
#   the file was last modified, and time can only be set to the current time.
# }
#
# @synopsis
#
# \arguments{
#  \item{pathname}{A @character specifying the file to be updated.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns (invisibly) the old timestamp.
# }
#
# @examples "../incl/touchFile.Rex"
#
# @author
#
# \seealso{
#   @see "base::file.info".
# }
#
# @keyword programming
# @keyword IO
# @keyword file
#*/###########################################################################
setMethodS3("touchFile", "default", function(pathname, ...) {
  # Argument 'pathname':
  if (!file.exists(pathname))
    stop("No such file: ", pathname);

  info <- file.info(pathname);
  if (info$isdir)
    stop("Cannot change the timestamp of a directory: ", pathname);

  oldTimestamp <- info$mtime;

  con <- NULL;
  on.exit({
    if (!is.null(con))
      close(con);
  });

  # Zero-sized files have to be treated specially
  if (info$size == 0) {
    con <- file(pathname, open="w");
  } else {
    con <- file(pathname, open="r+b");
    seek(con=con, where=0, origin="start", rw="read");
    bfr <- readBin(con=con, what="raw", n=1);
    seek(con=con, where=0, origin="start", rw="write");
    writeBin(con=con, bfr);
  }

  invisible(oldTimestamp);
})

############################################################################
# HISTORY:
# 2008-02-27
# o NOTE: From r-devel thread 'Unix-like touch to update modification
#   timestamp of file?' on 2008-02-26, we learn that on Windows one can do
#   shell("copy /B /V file.foo +,, >nul"), on Windows with Rtools installed
#   system("touch file.foo"), which should also work on most Unix systems.
# 2008-02-26
# o Created.
############################################################################
