########################################################################/**
# @RdocDefault readBinFragments
#
# @title "Reads binary data from disjoint sections of a connection or a file"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#   \item{con}{A @connection or the pathname of an existing file.}
#   \item{what}{A @character string or an object specifying the the 
#     data type (@see "base::mode") to be read.}
#   \item{idxs}{A @vector of (non-duplicated) indices or a Nx2 @matrix
#     of N from-to index intervals specifying the elements to be read.}
#   \item{size}{The size of the data type to be read. If @NA, the natural
#    size of the data type is used.}
#   \item{...}{Additional arguments passed to @see "base::readBin".}
#   \item{verbose}{A @logical or a @see "Verbose" object.}
# }
#
# \value{
#   Returns a @vector of the requested @see "base::mode".
# }
#
# @examples "../incl/readBinFragments.Rex"
#
# @author
# 
# \seealso{
#  @see "writeBinFragments".
# }
#
# @keyword IO
#*/#########################################################################   
setMethodS3("readBinFragments", "default", function(con, what, idxs=1, size=NA, ..., verbose=FALSE) {
  # Argument 'con':
  if (is.character(con)) {
    pathname <- con;
    pathname <- Arguments$getReadablePathname(pathname);

    con <- file(pathname, open="rb");
    on.exit({
      if (!is.null(con)) {
        close(con);
        con <- NULL;
      }
    });
  } else if (inherits(con, "connection")) {
    if (!isSeekable(con))
      throw("Argument 'con' is a non-seekable connection.");
  }

  # Argument 'what':
  if (!is.character(what) || length(what) != 1 || !(what %in% c("numeric", "double", "integer", "int", "logical", "complex", "character", "raw"))) {
     what <- typeof(what);
  }

  # Argument 'idxs':
  if (is.matrix(idxs) || is.data.frame(idxs)) {
    if (ncol(idxs) != 2) {
      throw("When argument 'idxs' is a data frame, it must have exactly two columns: ", ncol(idxs));
    }
    idxs <- as.matrix(idxs);
  }
  if (!is.numeric(idxs)) {
    stop("Argument 'idxs' must be numeric: ", class(idxs)[1]);
  }

  # Argument 'size':
  if (length(size) != 1) {
    stop("Argument 'size' must be a single value: ", length(size));
  }
  if (is.na(size)) {
    # Calculating the natural size
    size <- as.integer(object.size(vector(mode=what, length=1e4))/1e4);
  } else if (!is.numeric(size)) {
    stop("Argument 'size' must be numeric or NA: ", class(size)[1]);
  }

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose), add=TRUE);
  }


  # Intervals to index sequence?
  if (is.matrix(idxs)) {
    idxs <- intervalsToSeq(idxs);
  }

  # Allocate return vector
  nAll <- length(idxs);

  # Order the indices
  o <- order(idxs);
  idxs <- as.integer(idxs)[o];

  # Allocate return vector
  res <- vector(mode=what, length=nAll);

  CHUNK.SIZE <- floor(1024e3/size);
  destOffset <- srcOffset <- as.integer(0);
  while(length(idxs) > 0) {
    # Skip to first element to be read
    if (idxs[1] > 1) {
      skip <- idxs[1]-as.integer(1);
      verbose && cat(verbose, "Number of elements skipped: ", skip);
      seek(con=con, where=skip*size, origin="current", rw="read");
      idxs <- idxs - skip;
    }

    verbose && cat(verbose, "Remaining indices (relative to current position):");
    verbose && str(verbose, idxs);

    # Read data
    bfr <- readBin(con=con, what=what, n=CHUNK.SIZE, size=size, ...);
    n <- length(bfr);
    if (n == 0)
      break;

    # The file offset of the next element to be read
    srcOffset <- n;

    verbose && cat(verbose, "Data read:");
    verbose && str(verbose, bfr);

    # Keep only the indices requested
    keep <- match(idxs, 1:n);
    keep <- keep[is.finite(keep)];
    bfr <- bfr[keep];
    rm(keep);

    # Store the results
    n <- length(bfr);
    idx <- 1:n;
    res[destOffset+idx] <- bfr;
    destOffset <- destOffset + n;
    rm(bfr);

    # Next chunk of elements
    idxs <- idxs[-idx];
    idxs <- idxs - srcOffset;
    rm(idx);
  }

  if (!is.null(o)) {
    # order(o) can be optimized, cf. affxparser::invertMap(). /HB 2007-08-22
    res <- res[order(o)];
  }

  res;
}) # readBinFragments()


############################################################################
# HISTORY:
# 2008-07-01
# o SPEED UP: Made readBinFragments() by having it read data in chunks and
#   ignoring non-requested elements.
# 2008-06-16
# o Now argument 'idxs' can also be an matrix of index intervals.
# o Added Rdoc comments.
# 2007-08-22
# o Created.
############################################################################ 
