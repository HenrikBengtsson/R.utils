###########################################################################/**
# @set "class=array"
# @RdocMethod wrap
# @alias wrap.matrix
# @alias wrap.data.frame
#
# @title "Reshape an array or a matrix by permuting and/or joining dimensions"
#
# \description{
#   @get "title".
#   
#   A useful application of this is to reshape a multidimensional @array
#   to a @matrix, which then can be saved to file using for instance
#   \code{write.table()}.
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{An @array or a @matrix.}
#  \item{map}{A @list of length equal to the number of dimensions in the
#    reshaped array.  Each element should be an @integer @vectors specifying 
#    the dimensions to be joined in corresponding new dimension.  
#    One element may equal @NA to indicate that that dimension should be
#    a join of all non-specified (remaining) dimensions.
#    Default is to wrap everything into a @vector.
#  }
#  \item{sep}{A @character pasting joined dimension names.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @array of \code{length(map)} dimensions, where the first
#   dimension is of size \code{prod(map[[1]])}, the second 
#   \code{prod(map[[2]])}, and so on.
# }
#
# \details{
#   If the indicies in \code{unlist(map)} is in a non-increasing order, 
#   \link[base:aperm]{aperm()} will be called, which requires reshuffling
#   of array elements in memory.  In all other cases, the reshaping of the
#   array does not require this, but only fast modifications of
#   attributes \code{dim} and \code{dimnames}.
# }
#
# @examples "../incl/wrap.array.Rex"
#
# @author
#
# \seealso{
#   @seemethod "unwrap".
#   See \link[base:aperm]{aperm()}.
# }
#
# @keyword programming
#*/########################################################################### 
setMethodS3("wrap", "array", function(x, map=list(NA), sep=".", ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.array(x) && !is.matrix(x))
    throw("Argument 'x' is not an array or a matrix: ", class(x)[1]);

  if (!is.list(map))
    throw("Argument 'map' is not a list: ", class(map)[1]);

  umap <- unlist(map);
  if (any(duplicated(umap))) {
    throw("Argument 'map' contains duplicated dimension indices: ", 
                        paste(umap[duplicated(umap)], collapse=", "));
  }

  # Extract information
  dim <- dim(x);
  ndims <- length(dim);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate dimension map
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Look for missing dimension indices
  missingDims <- setdiff(1:ndims, umap);
  if (length(missingDims) > 0) {
    wildcard <- is.na(map);
    if (any(wildcard)) {
      map[[which(wildcard)]] <- missingDims;
      umap <- unlist(map);
    } else {
      throw("Argument 'map' miss some dimensions: ", 
                                        paste(missingDims, collapse=", "));
    }
  }
  
  # Look for non-existing dimension indices
  falseDims <- setdiff(umap, 1:ndims);
  if (length(falseDims) > 0) {
    throw("Argument 'map' contains non-existing dimensions: ", 
                                          paste(falseDims, collapse=", "));
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Permute dimensions?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (any(diff(umap) < 0)) {
    # Permute dimensions
    perm <- umap;
    x <- aperm(x, perm=perm);

    # Remap old dimension indices to the new ones for the map
    map <- lapply(map, FUN=function(ii) match(ii, perm));
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Reshape array
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Calculate the dimension sizes of the new array
  dim <- dim(x);
  dim2 <- lapply(map, FUN=function(ii) prod(dim[ii]));

  # Generate the new dimension names.
  # Note that the values in array 'x' are stored such that the *leftmost*
  # subscript moves fastest.  When we change the reshape the array by
  # changing the dimensions, the dimension names must be consistent with
  # this rule.
  dimnames <- dimnames(x);
  dimnames2 <- lapply(map, FUN=function(iis) {
    names <- NULL;
    for (ii in iis) {
      if (is.null(names)) {
        names <- dimnames[[ii]];
      } else {
        names <- paste(names, rep(dimnames[[ii]], each=length(names)), sep=sep);
      }
    }
    names;
  })

  # Now, reshape the array
  dim(x) <- dim2;
  dimnames(x) <- dimnames2;

  x;
})


setMethodS3("wrap", "matrix", function(x, ...) {
  wrap.array(x, ...);
})

setMethodS3("wrap", "data.frame", function(x, ...) {
  wrap(as.matrix(x), ...);
})


############################################################################
# HISTORY:
# 2005-11-23
# o Added default argument 'map=list(NA)'.
# 2005-11-14
# o BUG FIX: Missing object 'ndim'; should be 'ndims'.
# 2005-11-12
# o Created.
############################################################################  
