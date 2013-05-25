#########################################################################/**
# @RdocDefault bunzip2
#
# @title "Bunzip a file"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#  \item{filename}{Pathname of (bzip2'ed) input file to be bunzip2'ed.}
#  \item{destname}{Pathname of output file.}
#  \item{overwrite}{If the output file already exists, then if
#    \code{overwrite} is @TRUE the file is silently overwritting, otherwise
#    an exception is thrown.}
#  \item{remove}{If @TRUE, the input file is removed afterward,
#    otherwise not.}
#  \item{BFR.SIZE}{The number of bytes read in each chunk.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns the number of (input/compressed) bytes read.
# }
#
# \details{
#   Internally \code{bzfile()} (see @see "base::connections") is used to
#   read chunks of the bzip2'ed file, which are then written to the output
#   file.
# }
#
# @author
#
# @keyword "file"
# @keyword "programming"
#*/#########################################################################
setMethodS3("bunzip2", "default", function(filename, destname=gsub("[.]bz2$", "", filename), overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  if (filename == destname)
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  if (!overwrite && file.exists(destname))
    stop(sprintf("File already exists: %s", destname));

  destpath <- dirname(destname);
  if (!isDirectory(destpath)) mkdirs(destpath);

  inn <- bzfile(filename, "rb");
  on.exit(if (!is.null(inn)) close(inn));

  out <- file(destname, "wb");
  on.exit(close(out), add=TRUE);

  nbytes <- 0L;
  repeat {
    bfr <- readBin(inn, what=raw(0L), n=BFR.SIZE);
    n <- length(bfr);
    if (n == 0L)
      break;
    nbytes <- nbytes + n;
    writeBin(bfr, con=out, size=1L);
    # Not needed anymore
    bfr <- NULL;
  };

  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }

  invisible(nbytes);
})


############################################################################
# HISTORY:
# 2012-11-04
# o Now bunzip2() creates the directory of destination pathname
#   'destfile', iff missing.
# 2007-08-14
# o Created from gunzip.R.
############################################################################
