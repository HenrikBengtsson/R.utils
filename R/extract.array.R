###########################################################################/**
# @set "class=array"
# @RdocMethod extract
# @alias extract.matrix
# @alias extract.default
#
# @title "Extract a subset of an array, matrix or a vector with unknown dimensions"
#
# \description{
#   @get "title".
#
#   This method is useful when you do not know the number of dimensions
#   of the object your wish to extract values from, cf. example.
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{An @array or a @matrix.}
#  \item{...}{These arguments are by default put into the
#     \code{indices} @list.}
#  \item{indices}{A @list of index @vectors to be extracted.}
#  \item{dims}{An @vector of dimensions - one per element
#     in \code{indices} - which will be coerced to @integers.
#     If @NULL, it will default to \code{seq_along(indices)}.}
#  \item{drop}{If @TRUE, dimensions of length one are dropped,
#     otherwise not.}
# }
#
# \value{
#   Returns an @array.
# }
#
# @examples "../incl/extract.array.Rex"
#
# @author
#
# \seealso{
#   @see "base::slice.index"
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("extract", "array", function(x, ..., indices=list(...), dims=names(indices), drop=FALSE) {
  # Argument 'indices':
  nindices <- length(indices);
  if (nindices == 0L) {
    throw("Argument 'indices' is empty.");
  }

  # Argument 'dims':
  if (is.null(dims)) {
    dims <- seq_len(nindices);
  } else {
    # (i) Try to match to dimnames(x)
    dimnames <- dimnames(x);
    if (!is.null(dimnames)) {
      dimsT <- match(dims, names(dimnames));
      if (!all(is.na(dimsT))) {
        dims <- dimsT;
      }
    }
    if (!is.integer(dims)) {
      dims <- as.integer(dims);
    }
  }

  ndim <- length(dim(x));
  if (any(dims < 1L | dims > ndim)) {
    throw("Argument 'dims' is out of bounds [1,", ndim, "]: ",
                                                paste(dims, collapse=", "));
  }

  if (is.null(ndim))
    throw("Argument 'x' is not an array: ", class(x)[1L]);

  args <- rep("", times=ndim);
  for (kk in seq_along(indices)) {
    dd <- dims[kk];
    args[dd] <- sprintf("indices[[%d]]", kk);
  }
  if (ndim > 1L)
    args <- c(args, sprintf("drop=%s", drop));
  args <- paste(args, collapse=",");
  code <- paste("x[", args, "]", sep="");
  expr <- parse(text=code);
  eval(expr);
})


setMethodS3("extract", "matrix", function(x, ...) {
  extract.array(x, ...);
})

setMethodS3("extract", "default", function(x, ...) {
  if (is.vector(x) && !is.list(x)) {
    dim <- c(length(x), 1L);
    dimnames <- list(names(x), "");
    dim(x) <- dim;
    dimnames(x) <- dimnames;
    # Not needed anymore
    dim <- dimnames <- NULL;
    x <- extract(x, ...);
    names <- dimnames(x)[[1L]];
    x <- as.vector(x);
    names(x) <- names;
    x;
  } else {
    throw("Do not know how to unwrap object: ", class(x)[1L]);
  }
})



############################################################################
# HISTORY:
# 2013-06-17
# o Now argument 'dims' of extract() can also be dimension names.
# o Now using integer constants.
# 2011-11-01
# o Added argument 'dims' to extract() for arrays.
# o Moved argument 'drop' to the end/.
# 2005-11-23
# o Created.
############################################################################
