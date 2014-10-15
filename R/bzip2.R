# TODO: isBzipped or isBzip2 or ???
# TODO: How to add Peter Hickey as author
#########################################################################/**
# @RdocDefault bzip2
# @alias bunzip2
# @alias bunzip2.default
# @alias isBzipped
#
# @title "Bzip/Bunzip a file"
#
# \usage{
#  @usage bzip2,default
#  @usage bunzip2,default
# }
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
#  \item{temporary}{If @TRUE, the output file is created in a
#    temporary directory.}
#  \item{skip}{If @TRUE and the output file already exists,
#    the output file is returned as is.}
#  \item{overwrite}{If @TRUE and the output file already exists,
#    the file is silently overwritting, otherwise an exception is
#    thrown (unless \code{skip} is @TRUE).}
#  \item{remove}{If @TRUE, the input file is removed afterward,
#    otherwise not.}
#  \item{BFR.SIZE}{The number of bytes read in each chunk.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns the pathname of the output file.
#   The number of bytes processed is returned as an attribute.
#   \code{isBzipped()} returns a @logical.
# }
#
# \details{
#   Internally \code{bzfile()} (see @see "base::connections") is used to
#   read (write) chunks to (from) the bzip2 file.
#   If the process is interrupted before completed, the partially written
#   output file is automatically removed.
# }
#
# \examples{
#   cat(file="foo.txt", "Hello world!")
#   print(isBzipped("foo.txt"))
#   print(isBzipped("foo.txt.bz2"))
#
#   bzip2("foo.txt")
#   print(file.info("foo.txt.bz2"))
#   print(isBzipped("foo.txt"))
#   print(isBzipped("foo.txt.bz2"))
#
#   bunzip2("foo.txt.bz2")
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
setMethodS3("bzip2", "default", function(filename, destname=sprintf("%s.bz2", filename), temporary=FALSE, skip=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  # Argument 'filename':
  if (!file.exists(filename)) {
    stop("No such file: ", filename);
  }
  
  # Argument 'temporary':
  if (temporary) {
    destname <- file.path(tempdir(), basename(destname));
  }
  attr(destname, "temporary") <- temporary;
  
  # Argument 'filename' & 'destname':
  if (filename == destname)
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  
  # Already done?
  if (file.exists(destname)) {
    if (skip) {
      return(destname);
    } else if (!overwrite) {
      stop(sprintf("File already exists: %s", destname));
    }
  }
  
  # Create output directory, iff missing
  destpath <- dirname(destname);
  if (!isDirectory(destpath)) mkdirs(destpath);
  
  # Setup input and output connections
  inn <- file(filename, open="rb");
  on.exit(if (!is.null(inn)) close(inn));
  
  outComplete <- FALSE;
  out <- bzfile(destname, open="wb", ...);
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
  
  invisible(destname);
})




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

setMethodS3("isBzipped", "default", function(filename, method=c("extension", "content"), ...) {
  # Argument 'method':
  method <- match.arg(method);
  
  # Argument 'filename':
  filename <- Arguments$getReadablePathname(filename, mustExist=(method == "content"));
  
  if (method == "extension") {
    res <- (regexpr("[.]bz2$", filename, ignore.case=TRUE) != -1L);
  } else if (method == "content") {
    con <- file(filename);
    on.exit(close(con));
    res <- (summary(con)$class == "bzfile");
  }
  
  res;
})


############################################################################
# HISTORY:
# 2014-10-15
# o Added bzip2() [added by Peter Hickey]
# o Added isBzipped() [added by Peter Hickey]
# 2012-11-04
# o Now bunzip2() creates the directory of destination pathname
#   'destfile', iff missing.
# 2007-08-14
# o Created from gunzip.R.
############################################################################
