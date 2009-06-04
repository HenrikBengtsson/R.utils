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
#  \item{indices}{A @list of index @vectors to be extracted. 
#     The names (coerced to integers) of the list elements are the
#     dimension indices for each of the index vectors.}
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
setMethodS3("extract", "array", function(x, ..., drop=FALSE, indices=list(...)) { 
  nindices <- length(indices);
  if (nindices == 0)
    throw("Argument 'indices' is empty.");

  dims <- names(indices);
  if (is.null(dims)) {
    dims <- seq(length=nindices);
  } else {
    dims <- as.integer(dims);
  }

  ndim <- length(dim(x));
  if (any(dims < 1 | dims > ndim)) {
    throw("Argument 'dims' is out of bounds [1,", ndim, "]: ", 
                                                paste(dims, collapse=", "));
  }

  if (is.null(ndim))
    throw("Argument 'x' is not an array: ", class(x)[1]);

  args <- rep("", ndim);
  for (kk in seq(length=length(indices))) {
    dd <- dims[kk];
    ii <- sprintf("indices[[%d]]", kk);
    args[dd] <- ii;
  }
  if (ndim > 1)
    args <- c(args,"drop=drop");
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
    dim <- c(length(x), 1);
    dimnames <- list(names(x), "");
    dim(x) <- dim;
    dimnames(x) <- dimnames;
    rm(dim, dimnames);
    x <- extract(x, ...);
    names <- dimnames(x)[[1]];
    x <- as.vector(x);
    names(x) <- names;
    x;
  } else {
    throw("Do not know how to unwrap object: ", class(x)[1]);
  }
})



############################################################################
# HISTORY:
# 2005-11-23
# o Created.
############################################################################  
