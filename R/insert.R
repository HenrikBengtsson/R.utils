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
#   @see "base::append" takes argument \code{after} (a scalar).  For example,
#   \code{append(x, y, after=after) == insert(x, values=y, ats=after+1)}.
#   Contrary to \code{append()}, \code{insert()} accepts a vector of insert indices.
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
##     fromto <- matrix(c(from, to), ncol=2)
##     colnames(fromto) <- c("from", "to")
##     idx <- apply(fromto, MARGIN=1, FUN=function(i) seqToHumanReadable(i[1]:i[2]))
##     xidx <- apply(fromto, MARGIN=1, FUN=function(i) paste(x[i[1]:i[2]], collapse=","))
##     print(data.frame(from=from, to=to, idx=idx, x.=xidx))
##   }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.vector(x))
    throw("Argument 'x' is not a vector: ", class(x))

  len <- length(x)
  if (any(ats < 1 | ats > len+1))
    throw("Argument 'ats' contains indices out of range: ", paste(ats, collapse=", "))

  if (!is.vector(values) && !is.list(values))
    throw("Argument 'values' is not a vector or a list: ", class(values))

  alen <- length(ats)
  vlen <- length(values)
  if (vlen != alen && alen > 1L && vlen > 1L) {
    throw("Argument 'ats' and argument 'values' are of different lengths: ",
          alen, " != ", vlen)
  }

  # Argument 'useNames':
  useNames <- as.logical(useNames)

  # Deal with the names attribute too?
  if (useNames) {
    names <- names(x)
    useNames <- (!is.null(names))
  }

  # Group 'ats'?
  dups <- duplicated(ats)
  if (any(dups)) {
    uats <- ats[!dups]
    alen <- length(uats)
    t <- vector("list", length = alen)
    for (kk in seq_len(alen)) {
      at <- uats[[kk]]
      t[[kk]] <- values[which(at == ats)]
    }
    ats <- uats
    values <- t
    at <- t <- uats <- NULL
    vlen <- length(values)
    if (vlen != alen) {
      throw("Argument 'ats' and argument 'values' are of different lengths: ",
            alen, " != ", vlen)
    }
  }
  dups <- NULL

  if (!is.list(values)) {
    if (alen == 1L) {
      values <- list(values)
      vlen <- 1L
    } else {
      values <- as.list(values)
    }
  }

  if (alen != vlen) {
    if (vlen == 1L) {
      values <- rep(values, length.out=alen)
      vlen <- alen
    } else {
      throw("Argument 'ats' and argument 'values' are of different lengths: ",
            alen, " != ", vlen)
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Setup
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Sort the 'ats' indicies
  o <- order(ats)
  ats <- ats[o]
  values <- values[o]

  nvalues <- unlist(lapply(values, FUN=length))

  # Allocate the result vector
  n2 <- length(x) + sum(nvalues)
  x2 <- vector(mode=mode(x), length=n2)
  storage.mode(x2) <- storage.mode(x)
  if (useNames)
    names2 <- character(n2)

  # 'ats' positions in the result vector
  n <- length(ats)
  ats2 <- ats + c(0, cumsum(nvalues[-n]))

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Assign inserted values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (kk in 1:length(ats2)) {
    idx2 <- ats2[kk] + 0:(nvalues[kk]-1)
    valuesKK <- values[[kk]]
    x2[idx2] <- valuesKK
    if (useNames) {
      valueNames <- names(valuesKK)
      if (is.null(valueNames))
        valueNames <- character(length(valuesKK))
      names2[idx2] <- valueNames
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Assign original values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  froms <- c(1, ats)
  tos <- c(ats-1, length(x))
  froms2 <- c(1, ats2+nvalues)

  if (ats[1] == 1) {
    froms <- froms[-1]
    tos <- tos[-1]
    froms2 <- froms2[-1]
  }

  if (ats[n] > length(x)) {
    froms <- froms[-length(froms)]
    tos <- tos[-length(tos)]
    froms2 <- froms2[-length(froms2)]
  }

  ns <- tos-froms+1
  tos2 <- froms2 + ns - 1

  for (kk in seq_along(froms2)) {
    from <- froms[kk]
    to <- tos[kk]
    from2 <- froms2[kk]
    to2 <- tos2[kk]
    idx <- from:to
    idx2 <- from2:to2
    x2[idx2] <- x[idx]
    if (useNames)
      names2[idx2] <- names[idx]
  }

  if (useNames)
    names(x2) <- names2

  x2
})
