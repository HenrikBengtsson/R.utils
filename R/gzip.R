#########################################################################/**
# @RdocDefault gzip
# @alias gunzip
# @alias gunzip.default
# @alias isGzipped
#
# @title "Gzip/Gunzip a file"
#
# \usage{
#  @usage gzip,default
#  @usage gunzip,default
# }
#
# \description{
#  @get "title".
# }
#
# \arguments{
#  \item{filename}{Pathname of input file.}
#  \item{destname}{Pathname of output file.}
#  \item{temporary}{If @TRUE, the output file is created in a
#    temporary directory.}
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
#   Returns the pathname of the output file.
#   The number of output bytes processed is returned as an attribute.
#   \code{isGzipped()} returns a @logical.
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
#   print(isGzipped("foo.txt"))
#   print(isGzipped("foo.txt.gz"))
#
#   gzip("foo.txt")
#   print(file.info("foo.txt.gz"))
#   print(isGzipped("foo.txt"))
#   print(isGzipped("foo.txt.gz"))
#
#   gunzip("foo.txt.gz")
#   print(file.info("foo.txt"))
#
#   file.remove("foo.txt")
# }
#
# @author
#
# @keyword "file"
# @keyword "programming"
#*/#########################################################################
setMethodS3("gzip", "default", function(filename, destname=sprintf("%s.gz", filename), temporary=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  # Argument 'filename':
  if (!file.exists(filename)) {
    stop("No such file: ", filename);
  }

  # Argument 'temporary':
  if (temporary) {
    destname <- file.path(tempdir(), basename(destname));
  }

  # Argument 'filename' & 'destname':
  if (filename == destname)
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  if (!overwrite && file.exists(destname))
    stop(sprintf("File already exists: %s", destname));

  # Create output directory, iff missing
  destpath <- dirname(destname);
  if (!isDirectory(destpath)) mkdirs(destpath);

  # Setup input and output connections
  inn <- file(filename, open="rb");
  on.exit(if (!is.null(inn)) close(inn));

  outComplete <- FALSE;
  out <- gzfile(destname, open="wb", ...);
  on.exit({
    close(out);
    # Was the compression incomplete?
    if (!outComplete) {
      # Remove the incomplete compressed files
      file.remove(destname);
    }
  }, add=TRUE);

  # Compress
  nbytes <- 0L;
  repeat {
    bfr <- readBin(inn, what=raw(0L), size=1L, n=BFR.SIZE);
    n <- length(bfr);
    if (n == 0L)
      break;
    nbytes <- nbytes + n;
    writeBin(bfr, con=out, size=1L);
    bfr <- NULL;  # Not needed anymore
  };
  outComplete <- TRUE;

  # Cleanup
  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }

  # Return the output file
  attr(destname, "nbrOfBytes") <- nbytes;
  attr(destname, "temporary") <- temporary;

  invisible(destname);
})



setMethodS3("gunzip", "default", function(filename, destname=gsub("[.]gz$", "", filename, ignore.case=TRUE), temporary=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  # Argument 'filename':
  if (!file.exists(filename)) {
    stop("No such file: ", filename);
  }

  # Argument 'temporary':
  if (temporary) {
    destname <- file.path(tempdir(), basename(destname));
  }

  # Argument 'filename' & 'destname':
  if (filename == destname) {
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  }

  # Create output directory, iff missing
  destpath <- dirname(destname);
  if (!isDirectory(destpath)) mkdirs(destpath);

  # Setup input and output connections
  inn <- gzfile(filename, open="rb");
  on.exit(if (!is.null(inn)) close(inn));

  outComplete <- FALSE;
  out <- file(destname, open="wb");
  on.exit({
    close(out);
    # Was the decompression incomplete?
    if (!outComplete) {
      # Remove the incomplete compressed files
      file.remove(destname);
    }
  }, add=TRUE);

  # Decompress
  nbytes <- 0L;
  repeat {
    bfr <- readBin(inn, what=raw(0L), size=1L, n=BFR.SIZE);
    n <- length(bfr);
    if (n == 0L)
      break;
    nbytes <- nbytes + n;
    writeBin(bfr, con=out, size=1L);
    bfr <- NULL;  # Not needed anymore
  };
  outComplete <- TRUE;

  # Cleanup
  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }

  # Return the output file
  attr(destname, "nbrOfBytes") <- nbytes;
  attr(destname, "temporary") <- temporary;

  invisible(destname);
})



setMethodS3("isGzipped", "default", function(filename, method=c("extension", "content"), ...) {
  # Argument 'method':
  method <- match.arg(method);

  # Argument 'filename':
  filename <- Arguments$getReadablePathname(filename, mustExist=(method == "content"));

  if (method == "extension") {
    res <- (regexpr("[.]gz$", filename, ignore.case=TRUE) != -1L);
  } else if (method == "content") {
    con <- file(filename);
    on.exit(close(con));
    res <- (summary(con)$class == "gzfile");
  }

  res;
})



############################################################################
# HISTORY:
# 2013-06-27
# o Added argument 'temporary' to gunzip().
# o Now gzip() passes '...' to gzfile().
# o UPDATE: Now gzip()/gunzip() returns the output file (was number of
#   output bytes processed which are now returned as an attribute).
# 2013-06-26
# o Added isGzipped() for testing whether a file is gzipped or not.
# 2012-11-01
# o Now gzip()/gunzip() creates the directory of destination pathname
#   'destfile', iff missing.
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
