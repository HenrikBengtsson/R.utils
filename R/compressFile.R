#########################################################################/**
# @RdocDefault compressFile
# @alias decompressFile
# @alias decompressFile.default
# @alias isCompressedFile
# @alias isCompressedFile.default
# @alias bzip2
# @alias bzip2.default
# @alias bunzip2
# @alias bunzip2.default
# @alias isBzipped
# @alias isBzipped.default
# @alias gzip
# @alias gzip.default
# @alias gunzip
# @alias gunzip.default
# @alias isGzipped
# @alias isGzipped.default
# %% @alias xz
# %% @alias xz.default
# %% @alias unxz
# %% @alias unxz.default
# %% @alias isXzipped
# %% @alias isXzipped.default
#
# @title "Compressing and decompressing files"
#
# \usage{
#  @usage compressFile,default
#  @usage decompressFile,default
#  @usage isCompressedFile,default
#  @usage bzip2,default
#  @usage bunzip2,default
#  @usage gzip,default
#  @usage gunzip,default
# }
#
# \description{
#  @get "title" such as gzip:ed and bzip2:ed files.
#
#  \emph{
#    NOTE: The default (\code{remove=TRUE}) behavior is that
#    the input file is removed after that the output file
#    is fully created and closed.
#  }
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
#  \item{...}{Passed to the underlying function or alternatively not used.}
#  \item{method}{A @character string specifying how to infer whether
#    a file is compressed or not.}
#  \item{ext, fileClass, FUN}{(internal) Filename extension, file class,
#    and a connection @function used to read from/write to file.}
# }
#
# \value{
#   Returns the pathname of the output file.
#   The number of bytes processed is returned as an attribute.
#
#   \code{isCompressedFile()} etc. return a @logical.
# }
#
# \details{
#   Internally \code{bzfile()} and \code{gzfile()}
#   (see @see "base::connections") are used to read (write) files.
#   If the process is interrupted before completed, the partially written
#   output file is automatically removed.
# }
#
# \examples{
#   ## bzip2
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
#   ## gzip
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
#   ## Cleanup
#   file.remove("foo.txt")
# }
#
# @author
#
# @keyword "file"
# @keyword "programming"
#*/#########################################################################
setMethodS3("compressFile", "default", function(filename, destname=sprintf("%s.%s", filename, ext), ext, FUN, temporary=FALSE, skip=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  # Argument 'filename':
  if (!file.exists(filename)) {
    stop("No such file: ", filename);
  }

  # Argument 'ext':
  ext <- as.character(ext);

  # Argument 'FUN':
  if (!is.function(FUN)) {
    stop(sprintf("Argument 'FUN' is not a function: %s", mode(FUN)));
  }

  # Argument 'temporary':
  if (temporary) {
    destname <- file.path(tempdir(), basename(destname));
  }
  attr(destname, "temporary") <- temporary;

  # Argument 'filename' & 'destname':
  if (filename == destname) {
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  }

  # Already done?
  if (file.exists(destname)) {
    if (skip) {
      return(destname)
    } else if (overwrite) {
      file.remove(destname)
    } else {
      stop(sprintf("File already exists: %s", destname))
    }
  }

  ## Compress to temporary file
  destnameT <- pushTemporaryFile(destname)

  # Create output directory, iff missing
  destpath <- dirname(destnameT);
  if (!isDirectory(destpath)) mkdirs(destpath, mustWork=TRUE);

  # Setup input and output connections
  inn <- file(filename, open="rb");
  on.exit(if (!is.null(inn)) close(inn));

  outComplete <- FALSE
  out <- FUN(destnameT, open="wb", ...)
  on.exit({
    if (!is.null(out)) close(out)
    # Remove incomplete file?
    if (!outComplete) file.remove(destnameT)
  }, add=TRUE)

  # Process
  nbytes <- 0
  repeat {
    bfr <- readBin(inn, what=raw(0L), size=1L, n=BFR.SIZE)
    n <- length(bfr)
    if (n == 0L) break;
    nbytes <- nbytes + n
    writeBin(bfr, con=out, size=1L)
    bfr <- NULL  # Not needed anymore
  };
  outComplete <- TRUE
  close(out)
  out <- NULL

  ## Rename to final name
  destname <- popTemporaryFile(destnameT)

  # Return the output file
  attr(destname, "nbrOfBytes") <- nbytes

  # Cleanup
  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }

  invisible(destname);
}) # compressFile()


setMethodS3("decompressFile", "default", function(filename, destname=gsub(sprintf("[.]%s$", ext), "", filename, ignore.case=TRUE), ext, FUN, temporary=FALSE, skip=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e7, ...) {
  # Argument 'filename':
  if (!file.exists(filename)) {
    stop("No such file: ", filename);
  }

  # Argument 'ext':
  ext <- as.character(ext);

  # Argument 'FUN':
  if (!is.function(FUN)) {
    stop(sprintf("Argument 'FUN' is not a function: %s", mode(FUN)));
  }

  # Argument 'temporary':
  if (temporary) {
    destname <- file.path(tempdir(), basename(destname));
  }
  attr(destname, "temporary") <- temporary;

  # Argument 'filename' & 'destname':
  if (filename == destname) {
    stop(sprintf("Argument 'filename' and 'destname' are identical: %s", filename));
  }

  # Already done?
  if (file.exists(destname)) {
    if (skip) {
      return(destname)
    } else if (overwrite) {
      file.remove(destname)
    } else {
      stop(sprintf("File already exists: %s", destname))
    }
  }

  ## Compress to temporary file
  destnameT <- pushTemporaryFile(destname)

  # Create output directory, iff missing
  destpath <- dirname(destname);
  if (!isDirectory(destpath)) mkdirs(destpath, mustWork=TRUE);

  # Setup input and output connections
  inn <- FUN(filename, open="rb");
  on.exit(if (!is.null(inn)) close(inn));

  outComplete <- FALSE
  out <- file(destnameT, open="wb", ...)
  on.exit({
    if (!is.null(out)) close(out)
    # Remove incomplete file?
    if (!outComplete) file.remove(destnameT)
  }, add=TRUE)

  # Process
  nbytes <- 0
  repeat {
    bfr <- readBin(inn, what=raw(0L), size=1L, n=BFR.SIZE)
    n <- length(bfr)
    if (n == 0L) break;
    nbytes <- nbytes + n
    writeBin(bfr, con=out, size=1L)
    bfr <- NULL  # Not needed anymore
  };
  outComplete <- TRUE
  close(out)
  out <- NULL

  ## Rename to final name
  destname <- popTemporaryFile(destnameT)

  # Return the output file
  attr(destname, "nbrOfBytes") <- nbytes

  # Cleanup
  if (remove) {
    close(inn);
    inn <- NULL;
    file.remove(filename);
  }

  invisible(destname);
}) # decompressFile()


setMethodS3("isCompressedFile", "default", function(filename, method=c("extension", "content"), ext, fileClass, ...) {
  # Argument 'method':
  method <- match.arg(method)

  # Argument 'ext':
  ext <- as.character(ext)

  # Argument 'fileClass':
  fileClass <- as.character(fileClass)

  # Argument 'filename':
  filename <- Arguments$getReadablePathname(filename, mustExist=(method == "content"))

  if (method == "extension") {
    res <- (regexpr(sprintf("[.]%s$", ext), filename, ignore.case=TRUE) != -1L)
  } else if (method == "content") {
    con <- file(filename)
    on.exit(close(con))
    res <- (summary(con)$class == fileClass)
  }

  res
}) # isCompressedFile()



setMethodS3("bzip2", "default", function(filename, ..., ext="bz2", FUN=bzfile) {
  compressFile(filename=filename, ..., ext=ext, FUN=FUN)
})

setMethodS3("gzip", "default", function(filename, ..., ext="gz", FUN=gzfile) {
  compressFile(filename=filename, ..., ext=ext, FUN=FUN)
})

## NOTE: Let's wait with and xz()/unxz(), because tests on Windows gives
## "Warning message: In readBin(inn, what = raw(0L), size = 1L, n = BFR.SIZE) :
##  lzma decoder format error". /HB 2015-02-01

## setMethodS3("xz", "default", function(filename, ..., ext="xz", FUN=bzfile) {
##   compressFile(filename=filename, ..., ext=ext, FUN=FUN)
## })


setMethodS3("bunzip2", "default", function(filename, ..., ext="bz2", FUN=bzfile) {
  decompressFile(filename=filename, ..., ext=ext, FUN=FUN)
})

setMethodS3("gunzip", "default", function(filename, ..., ext="gz", FUN=gzfile) {
  decompressFile(filename=filename, ..., ext=ext, FUN=FUN)
})

## setMethodS3("unxz", "default", function(filename, ..., ext="xz", FUN=xzfile) {
##   decompressFile(filename=filename, ..., ext=ext, FUN=FUN)
## })


setMethodS3("isBzipped", "default", function(..., ext="bz2", fileClass="bzfile") {
  isCompressedFile(..., ext=ext, fileClass=fileClass)
})

setMethodS3("isGzipped", "default", function(..., ext="gz", fileClass="gzfile") {
  isCompressedFile(..., ext=ext, fileClass=fileClass)
})

## setMethodS3("isXzipped", "default", function(..., ext="xz", fileClass="xzfile") {
##   isCompressedFile(..., ext=ext, fileClass=fileClass)
## })


############################################################################
# HISTORY:
# 2015-02-01
# o Added compressFile(), decompressFile() and isCompressedFile() methods,
#   which gzip()/gunzip() and the new bzip2()/bunzip2() now use.
#   Thanks to Peter Hickey for pushing for this.
# 2013-07-27
# o Added argument 'skip' to gzip() and gunzip().
# o BUG FIX: gunzip() would ignore argument 'overwrite'.
# 2013-06-27
# o Added argument 'temporary' to gzip() and gunzip().
# o Now gzip() passes '...' to gzfile().
# o UPDATE: Now gzip()/gunzip() returns the output file (was number of
#   output bytes processed which are now returned as an attribute).
# 2013-06-26
# o Added isGzipped() for testing whether a file is gzipped or not.
# 2012-11-04
# o Now bunzip2() creates the directory of destination pathname
#   'destfile', iff missing.
# 2012-11-01
# o Now gzip()/gunzip() creates the directory of destination pathname
#   'destfile', iff missing.
# 2008-11-03
# o Now gzip() and gunzip() removes the partially written output file if
#   the process is interrupted.
# 2008-05-15
# o Added gzip().
# 2007-08-14
# o Added bunzip2() from gunzip().
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
