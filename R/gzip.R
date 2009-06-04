#########################################################################/**
# @RdocDefault gzip
# @alias gunzip
#
# @title "Gzip/Gunzip a file"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#  \item{filename}{Pathname of input file.}
#  \item{destname}{Pathname of output file.}
#  \item{overwrite}{If the output file already exists, then if 
#    \code{overwrite} is @TRUE the file is silently overwritting, 
#    otherwise an exception is thrown.}
#  \item{remove}{If @TRUE, the input file is removed afterward, 
#    otherwise not.}
#  \item{BFR.SIZE}{The number of bytes read in each chunk.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns the number of (input) bytes read.
# }
#
# \details{
#   Internally \code{gzfile()} (see @see "base::connections") is used to
#   read (write) chunks to (from) the gzip file.
#   If the process is interrupted before completed, the partially written
#   output file is automatically removed.
# }
#
# \examples{
#   cat(file="foo.txt", "Hello world!")
#   gzip("foo.txt")
#   print(file.info("foo.txt.gz"))
#   gunzip("foo.txt.gz")
#   print(file.info("foo.txt"))
#   file.remove("foo.txt")
# }
#
# @author
#
# @keyword "file"
# @keyword "programming"
#*/######################################################################### 
setMethodS3("gzip", "default", function(filename, destname=sprintf("%s.gz", filename), overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  if (filename == destname) 
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  if (!overwrite && file.exists(destname))
    stop(sprintf("File already exists: %s", destname));

  inn <- file(filename, "rb");
  on.exit(if (!is.null(inn)) close(inn));

  outComplete <- FALSE;
  out <- gzfile(destname, "wb"); 
  on.exit({
    close(out);
    # Was the compression incomplete?
    if (!outComplete) {
      # Remove the incomplete compressed files
      file.remove(destname);
    }
  }, add=TRUE);

  nbytes <- 0;
  repeat { 
    bfr <- readBin(inn, what=raw(0), size=1, n=BFR.SIZE);
    n <- length(bfr);
    if (n == 0)
      break;
    nbytes <- nbytes + n;
    writeBin(bfr, con=out, size=1); 
  };
  outComplete <- TRUE;

  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }
    
  invisible(nbytes);
})



setMethodS3("gunzip", "default", function(filename, destname=gsub("[.]gz$", "", filename), overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  if (filename == destname) 
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  if (!overwrite && file.exists(destname))
    stop(sprintf("File already exists: %s", destname));

  inn <- gzfile(filename, "rb");
  on.exit(if (!is.null(inn)) close(inn));

  outComplete <- FALSE;
  out <- file(destname, "wb"); 
  on.exit({
    close(out);
    # Was the decompression incomplete?
    if (!outComplete) {
      # Remove the incomplete compressed files
      file.remove(destname);
    }
  }, add=TRUE);

  nbytes <- 0;
  repeat { 
    bfr <- readBin(inn, what=raw(0), size=1, n=BFR.SIZE);
    n <- length(bfr);
    if (n == 0)
      break;
    nbytes <- nbytes + n;
    writeBin(bfr, con=out, size=1); 
  };
  outComplete <- TRUE;

  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }
    
  invisible(nbytes);
})


############################################################################
# HISTORY:
# 2008-11-03
# o Now gzip() and gunzip() removes the partially written output file if
#   the process is interrupted.
# 2008-05-15
# o Added gzip().
# 2007-08-14
# o Increased the BFR.SIZE 10 times.
# o Added argument 'remove'.
# o Updated the regular expression for generating the output filename.
# o Now the data is read as a raw buffer (and not as integers anymore).
# 2005-02-20
# o Now using setMethodS3() and added '...' to please R CMD check.
# 2004-02-12
# o Made into a default function.
# 2003-12-31
# o Copied from the com.braju.sma package and made independent of R.oo.
# 2003-10-29
# o BUG FIX: The 2nd on.exit() in gunzip() was overwriting the first one
#   with the result that the open input gzfile() connection was never
#   closed. We ran out of connections after a while.
############################################################################
