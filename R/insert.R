#########################################################################/**
# @RdocDefault insert
#
# @title "Insert values to a vector at certain positions"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{The @vector of data values.}
#   \item{ats}{The indices of \code{x} where the values should be inserted.}
#   \item{values}{A @list or a @vector of the values to be inserted.
#      Should be of same length as \code{ats}, unless if a single value
#      when it is automatically extended without a warning.}
#   \item{useNames}{If @FALSE, the names attribute is dropped/ignored,
#      otherwise not.  Only applied if argument \code{x} is named.}
#   \item{...}{Not used.}
# }
#
# @examples "../incl/insert.Rex"
#
# \seealso{
#   @see "base::append".
# }
#
# @author
#
# @keyword "manip"
#*/#########################################################################t
setMethodS3("insert", "default", function(x, ats, values=NA, useNames=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # For debug only!
##   printFromTo <- function(from, to, x) {
##     fromto <- matrix(c(from, to), ncol=2);
##     colnames(fromto) <- c("from", "to");
##     idx <- apply(fromto, MARGIN=1, FUN=function(i) seqToHumanReadable(i[1]:i[2]));
##     xidx <- apply(fromto, MARGIN=1, FUN=function(i) paste(x[i[1]:i[2]], collapse=","));
##     print(data.frame(from=from, to=to, idx=idx, x.=xidx))
##   }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.vector(x))
    throw("Argument 'x' is not a vector: ", class(x));

  len <- length(x);
  if (any(ats < 1 | ats > len+1))
    throw("Argument 'ats' contains indices out of range: ", paste(ats, collapse=", "));

  if (any(duplicated(ats)))
    throw("Argument 'ats' contains duplicated indices: ", paste(ats, collapse=", "));

  if (!is.vector(values))
    throw("Argument 'values' is not a vector: ", class(values));

  # Argument 'useNames':
  useNames <- as.logical(useNames);

  # Deal with the names attribute too?
  if (useNames) {
    names <- names(x);
    useNames <- (!is.null(names));
  }

  if (!is.list(values)) {
    if (length(ats) == 1) {
      values <- list(values);
    } else {
      values <- as.list(values);
    }
  }

  if (length(ats) != length(values)) {
    if (length(values) == 1) {
      values <- rep(values, length.out=length(ats));
    } else {
      throw("Argument 'ats' and argument 'values' has different lengths: ",
                                       length(ats), " != ", length(values));
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Setup
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Sort the 'ats' indicies
  o <- order(ats);
  ats <- ats[o];
  values <- values[o];

  nvalues <- unlist(lapply(values, FUN=length));

  # Allocate the result vector
  n2 <- length(x) + sum(nvalues);
  x2 <- vector(mode=mode(x), length=n2);
  storage.mode(x2) <- storage.mode(x);
  if (useNames)
    names2 <- character(n2);

  # 'ats' positions in the result vector
  n <- length(ats);
  ats2 <- ats + c(0, cumsum(nvalues[-n]));

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Assign inserted values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (kk in 1:length(ats2)) {
    idx2 <- ats2[kk] + 0:(nvalues[kk]-1);
    valuesKK <- values[[kk]];
    x2[idx2] <- valuesKK;
    if (useNames) {
      valueNames <- names(valuesKK);
      if (is.null(valueNames))
        valueNames <- character(length(valuesKK));
      names2[idx2] <- valueNames;
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Assign original values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  froms <- c(1, ats);
  tos <- c(ats-1, length(x));
  froms2 <- c(1, ats2+nvalues);

  if (ats[1] == 1) {
    froms <- froms[-1];
    tos <- tos[-1];
    froms2 <- froms2[-1];
  }

  if (ats[n] > length(x)) {
    froms <- froms[-length(froms)];
    tos <- tos[-length(tos)];
    froms2 <- froms2[-length(froms2)];
  }

  ns <- tos-froms+1;
  tos2 <- froms2 + ns - 1;

  for (kk in seq_along(froms2)) {
    from <- froms[kk];
    to <- tos[kk];
    from2 <- froms2[kk];
    to2 <- tos2[kk];
    idx <- from:to;
    idx2 <- from2:to2;
    x2[idx2] <- x[idx];
    if (useNames)
      names2[idx2] <- names[idx];
  }

  if (useNames)
    names(x2) <- names2;

  x2;
})


############################################################################
# HISTORY:
# 2012-09-21
# o Now insert() silently expands 'values' to be of the same length
#   as 'ats', iff length(values) == 1.
# 2008-12-27
# o Added argument 'useNames' to insert(), which is now aware of names
#   of the input object.
# 2008-03-31
# o BUG FIX: If 'x' in insert(x, ...) was zero length, an "Error in from:to
#   : NA/NaN argument" was thrown.
# 2008-02-21
# o BUG FIX: When 'values' was a non-list its values were placed in a
#   single-element list.  Should have been as.list().
# 2005-06-12
# o Updated a lot! Wrote a rather large example.
# 2005-02-20
# o Now using setMethodS3() and added '...' to please R CMD check.
# 2001-11-24
# o Created.
############################################################################
