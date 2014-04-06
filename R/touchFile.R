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
#  \item{pathname}{A @character @vector specifying files to be updated.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns (invisibly) a @vector of the old timestamps.
# }
#
# @examples "../incl/touchFile.Rex"
#
# @author
#
# \seealso{
#   Internally, @see "base::Sys.setFileTime" (iff available) and
#   @see "base::file.info" are utilized.
# }
#
# \references{
#   [1] R-devel mailing list thread
#       \emph{Unix-like touch to update modification timestamp of file?},
#       started on 2008-02-26.
#       \url{http://stat.ethz.ch/pipermail/r-devel/2008-February/048542.html}\cr
# }
#
# @keyword programming
# @keyword IO
# @keyword file
#*/###########################################################################
setMethodS3("touchFile", "default", function(pathname, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Sys.setFileTime() exists in R (>= 2.14.0)
  if (!exists("Sys.setFileTime", mode="function")) {
    Sys.setFileTime <- function(path, ...) {
      info <- file.info(pathname);
      if (info$isdir) {
        stop(sprintf("In R v%s, it is not possible to change the timestamp of a directory: %s", getRversion(), pathname));
      }

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
        bfr <- readBin(con=con, what=raw(), n=1);
        seek(con=con, where=0, origin="start", rw="write");
        writeBin(con=con, bfr);
      }

      invisible(TRUE);
    } # Sys.setFileTime()
  } # if (!exists("Sys.setFileTime", ...))


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  pathname <- as.character(pathname);
  nPathnames <- length(pathname);

  # Nothing to do?
  if (nPathnames == 0L) return(invisible(NULL));

  # Multiple files?
  if (nPathnames > 1L) {
    res <- lapply(pathname, FUN=touchFile, ...);
    res <- Reduce(c, res);
    return(invisible(res));
  }

  # Sanity check
  if (!file.exists(pathname))
    stop("No such file: ", pathname);

  info <- file.info(pathname);
  oldTimestamp <- info$mtime;

  if (!Sys.setFileTime(pathname, time=Sys.time())) {
    stop("Failed to set timestamp: ", pathname);
  }

  invisible(oldTimestamp);
})


############################################################################
# HISTORY:
# 2014-04-06
# o Vectorized touchFile().
# 2013-07-03
# o Now touchFile() utilizes base::Sys.setFileTime(), iff available.
# 2008-02-27
# o NOTE: From r-devel thread 'Unix-like touch to update modification
#   timestamp of file?' on 2008-02-26, we learn that on Windows one can do
#   shell("copy /B /V file.foo +,, >nul"), on Windows with Rtools installed
#   system("touch file.foo"), which should also work on most Unix systems.
# 2008-02-26
# o Created.
############################################################################
