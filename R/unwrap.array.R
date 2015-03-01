###########################################################################/**
# @set "class=array"
# @RdocMethod unwrap
# @alias unwrap.matrix
# @alias unwrap.data.frame
# @alias unwrap.default
#
# @title "Unwrap an array, matrix or a vector to an array of more dimensions"
#
# \description{
#   @get "title".  This is done by splitting up each dimension into several
#   dimension based on the names of that dimension.
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{An @array or a @matrix.}
#  \item{split}{A @list or a @character @vector.
#    If a @list, it should contain @functions that takes a @character
#    @vector as the first argument and optional \code{...} arguments.
#    Each function should split the @vector into a @list of same length
#    and where all elements contains the same number of parts.
#    If a @character @vector, each element \code{split[i]} is replaced by
#    a @function call
#    \code{function(names, ...) strsplit(names, split=split[i])}.
#  }
#  \item{drop}{If @TRUE, dimensions of of length one are dropped, otherwise not.}
#  \item{...}{Arguments passed to the \code{split} @functions.}
# }
#
# \value{
#   Returns an @array.
# }
#
# \details{
#   Although not tested thoroughly, \code{unwrap()} should be the inverse
#   of \code{wrap()} such that \code{identical(unwrap(wrap(x)), x)} holds.
# }
#
# \examples{\dontrun{See ?wrap.array for an example}}
#
# @author
#
# \seealso{
#   @seemethod "wrap".
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("unwrap", "array", function(x, split=rep("[.]", length(dim(x))), drop=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.array(x) && !is.matrix(x))
    throw("Argument 'x' is not an array or a matrix: ", class(x)[1]);
  dim <- dim(x);
  ndims <- length(dim);

  # Argument 'split':
  if (is.character(split)) {
    split <- unlist(lapply(split, FUN=function(s) {
      Arguments$getRegularExpression(s);
    }));

    # Create split functions
    split <- lapply(split, FUN=function(s) {
      function(names, ...) strsplit(names, split=s, ...);
    })
  } else if (is.list(split)) {
    if (length(split) != ndims) {
      throw("Length of argument 'split' (a list) does not match the number of dimensions of argument 'x': ", length(split), " != ", ndims);
    }
    for (fcn in split) {
      if (!is.function(fcn) && !is.null(fcn))
        throw("Argument 'split' is a list, but does not contain functions.");
    }
  } else {
    throw("Argument 'split' is not an array: ", class(split)[1]);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get the new dimension names
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  dimnames <- dimnames(x);

  dimnames2 <- list();
  for (kk in 1:ndims) {
    fcn <- split[[kk]];

    dnames <- dimnames[[kk]];
    if (is.null(dnames))
      throw("Can not unwrap arrays with missing dimension names: dimension #", kk);

    if (is.function(fcn)) {
      snames <- fcn(dnames, ...);
    } else if (is.null(fcn)) {
      snames <- dnames;
    }

    if (is.character(snames) && is.vector(snames)) {
      snames <- matrix(snames, ncol=1);
      ulen <- ncol(snames);
    } else if (is.matrix(snames)) {
      ulen <- ncol(snames);
    } else if (is.list(snames)) {
      len <- unlist(lapply(snames, FUN=length));
      ulen <- unique(len);
      if (length(ulen) != 1) {
        throw("Failed to split names for dimension ", kk, ", because it resulted in unequal number of parts: ", snames);
      }
      snames <- unlist(snames);
      snames <- matrix(snames, nrow=length(snames), ncol=ulen, byrow=TRUE);
    } else {
      throw("Failed to split names for dimension ", kk, ", because split function returned an unsupported data type: ", class(snames)[1]);
    }

    dnames <- list();
    for (ll in 1:ulen)
      dnames[[ll]] <- unique(snames[,ll]);

    dimnames2 <- append(dimnames2, dnames);
  }

  dim2 <- unlist(lapply(dimnames2, FUN=length));

  # Drop dimensions of length one?
  if (drop) {
    keep <- (dim2 > 1);
    dim2 <- dim2[keep];
    dimnames2 <- dimnames2[keep];
  }

  # Now, reshape the array
  dim(x) <- dim2;
  dimnames(x) <- dimnames2;

  x;
})

setMethodS3("unwrap", "matrix", function(x, ...) {
  unwrap.array(x, ...);
})

setMethodS3("unwrap", "data.frame", function(x, ...) {
  ncol <- ncol(x)
  x <- as.matrix(x)

  # Special case
  if (ncol == 1L) {
    names <- rownames(x)
    x <- x[,1L]
    dim(x) <- length(x)
    dimnames(x) <- list(names)
  }

  unwrap(x, ...)
})

setMethodS3("unwrap", "default", function(x, ...) {
  if (is.vector(x) && !is.list(x)) {
    dim <- c(length(x), 1);
    dimnames <- list(names(x), "dummy");
    dim(x) <- dim;
    dimnames(x) <- dimnames;
    # Not needed anymore
    dim <- dimnames <- NULL;
    unwrap(x, ...);
  } else {
    throw("Do not know how to unwrap object: ", class(x)[1]);
  }
})



############################################################################
# HISTORY:
# 2005-12-05
# o Added unwrap() for data frames.
# 2005-11-23
# o Added a default unwrap() to unwrap vector too.
# 2005-11-12
# o Created.
############################################################################
