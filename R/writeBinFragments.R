########################################################################/**
# @RdocDefault writeBinFragments
#
# @title "Writes binary data to disjoint sections of a connection or a file"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#   \item{con}{A @connection or the pathname of an existing file.}
#   \item{object}{A @vector of objects to be written.}
#   \item{idxs}{A @vector of (non-duplicated) indices or a Nx2 @matrix
#     of N from-to index intervals specifying the elements to be read.
#     Positions are always relative to the start of the file/connection.}
#   \item{size}{The size of the data type to be read. If @NA, the natural
#    size of the data type is used.}
#   \item{...}{Additional arguments passed to
#    \code{\link[base:readBin]{writeBin}()}.}
# }
#
# \value{
#   Returns nothing.
# }
#
# \examples{\dontrun{# See example(readBinFragments.connection)}}
#
# @author
#
# \seealso{
#  @see "readBinFragments".
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("writeBinFragments", "default", function(con, object, idxs, size=NA, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'con':
  if (is.character(con)) {
    pathname <- con;
    pathname <- Arguments$getReadablePathname(pathname);

    con <- file(pathname, open="r+b");
    on.exit({
      if (!is.null(con)) {
        close(con);
        con <- NULL;
      }
    });
  } else if (inherits(con, "connection")) {
    if (!isSeekable(con)) {
      t <- summary(con)
      t <- paste(sprintf("%s: %s", names(t), t), collapse=", ")
      msg <- sprintf("Argument 'con' is not a seekable connection: %s", t)
      action <- getOption("R.utils::onNonSeekable", "error")
      if (action == "warning") {
        warning(msg)
      } else {
        throw(msg)
      }
    }
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
  if (any(idxs < 0)) {
    throw("Argument 'idxs' contains negative indices: ", paste(head(idxs[idxs < 0]), collapse=", "));
  }

  # Argument 'size':
  if (length(size) != 1) {
    stop("Argument 'size' must be a single value: ", length(size));
  }
  if (is.na(size)) {
    # Calculating the natural size
    size <- as.integer(object.size(rep(object, length.out=1e4))/1e4);
  } else if (!is.numeric(size)) {
    stop("Argument 'size' must be numeric or NA: ", class(size)[1]);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Identify index intervals
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.matrix(idxs)) {
    oSeqs <- idxs;

    # Sanity checks
    ## For now, we assume that non-overlapping intervals. /HB 2008-06-16

    # Calculate lengths of intervals
    ns <- oSeqs[,2] - oSeqs[,1] + as.integer(1);

    nAll <- sum(ns);
  } else {
    # Number of elements to be written
    nAll <- length(idxs);

    # Order the indices
    o <- order(idxs);
    oIdxs <- as.integer(idxs)[o];

    # Reorder the input vector accordingly
    object <- object[o];
    # Not needed anymore
    o <- NULL;

    # Identify contiguous fragments
    oSeqs <- seqToIntervals(oIdxs);

    # Calculate their lengths
    ns <- oSeqs[,2] - oSeqs[,1] + as.integer(1);

    # Sanity check
    if (nAll != sum(ns)) {
      stop("Argument 'idxs' does most likely contain replicated indices, which is currently not supported.");
    }
  }

  # Sanity check
  if (nAll != length(object)) {
    stop("The number of elements specified by argument 'idxs' does not match the number of objects written: ", nAll, " != ", size*length(object));
  }


  # Starting positions (double in order to address larger vectors!)
  offset <- seek(con=con, origin="start", rw="write"); # Get current file offset
  froms <- as.double(oSeqs[,1])*size + (offset - size);

  # Not needed anymore
  oSeqs <- NULL;

  outOffset <- 0;
  for (kk in seq_along(froms)) {
    n <- ns[kk];
    idx <- outOffset + 1:n;
    seek(con=con, where=froms[kk], origin="start", rw="write");
#    print(list(idx=idx, where=froms[kk], n=n, values=object[idx]));
    writeBin(object[idx], con=con, size=size, ...);
    outOffset <- outOffset + n;
  } # for (rr ...)

  invisible(NULL);
}) # writeBinFragments()



############################################################################
# HISTORY:
# 2010-11-07
# o ROBUSTNESS: Asserts that argument 'idxs' contains non-negative indices.
# 2008-06-16
# o Now argument 'idxs' can also be an matrix of index intervals.
# o Added Rdoc comments.
# 2007-08-22
# o Created.
############################################################################
