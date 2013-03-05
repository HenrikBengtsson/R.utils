%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  wrap.array.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{wrap.array}
\alias{wrap.array}
 \alias{wrap.matrix}
 \alias{wrap.data.frame}

 \title{Reshape an array or a matrix by permuting and/or joining dimensions}

 \description{
   Reshape an array or a matrix by permuting and/or joining dimensions.
 
   A useful application of this is to reshape a multidimensional \code{\link[base]{array}}
   to a \code{\link[base]{matrix}}, which then can be saved to file using for instance
   \code{write.table()}.
 }

 \usage{
\method{wrap}{array}(x, map=list(NA), sep=".", ...)
}

 \arguments{
  \item{x}{An \code{\link[base]{array}} or a \code{\link[base]{matrix}}.}
  \item{map}{A \code{\link[base]{list}} of length equal to the number of dimensions in the
    reshaped array.  Each element should be an \code{\link[base]{integer}} \code{\link[base]{vector}}s specifying
    the dimensions to be joined in corresponding new dimension.
    One element may equal \code{\link[base]{NA}} to indicate that that dimension should be
    a join of all non-specified (remaining) dimensions.
    Default is to wrap everything into a \code{\link[base]{vector}}.
  }
  \item{sep}{A \code{\link[base]{character}} pasting joined dimension names.}
  \item{...}{Not used.}
 }

 \value{
   Returns an \code{\link[base]{array}} of \code{length(map)} dimensions, where the first
   dimension is of size \code{prod(map[[1]])}, the second
   \code{prod(map[[2]])}, and so on.
 }

 \details{
   If the indicies in \code{unlist(map)} is in a non-increasing order,
   \link[base:aperm]{aperm()} will be called, which requires reshuffling
   of array elements in memory.  In all other cases, the reshaping of the
   array does not require this, but only fast modifications of
   attributes \code{dim} and \code{dimnames}.
 }

 \examples{

# Create a 3x2x3 array
dim <- c(3,2,3)
ndim <- length(dim)
dimnames <- list()
for (kk in 1:ndim)
  dimnames[[kk]] <- sprintf("\%s\%d", letters[kk], 1:dim[kk])
x <- 1:prod(dim)
x <- array(x, dim=dim, dimnames=dimnames)


cat("Array 'x':\n")
print(x)


cat("\nReshape 'x' to its identity:\n")
y <- wrap(x, map=list(1, 2, 3))
print(y)
# Assert correctness of reshaping
stopifnot(identical(y, x))


cat("\nReshape 'x' by swapping dimensions 2 and 3, i.e. aperm(x, perm=c(1,3,2)):\n")
y <- wrap(x, map=list(1, 3, 2))
print(y)
# Assert correctness of reshaping
stopifnot(identical(y, aperm(x, perm=c(1,3,2))))


cat("\nWrap 'x' to a matrix 'y' by keeping dimension 1 and joining the others:\n")
y <- wrap(x, map=list(1, NA))
print(y)
# Assert correctness of reshaping
for (aa in dimnames(x)[[1]]) {
  for (bb in dimnames(x)[[2]]) {
    for (cc in dimnames(x)[[3]]) {
      tt <- paste(bb, cc, sep=".")
      stopifnot(identical(y[aa,tt], x[aa,bb,cc]))
    }
  }
}


cat("\nUnwrap matrix 'y' back to array 'x':\n")
z <- unwrap(y)
print(z)
stopifnot(identical(z,x))


cat("\nWrap a matrix 'y' to a vector and back again:\n")
x <- matrix(1:8, nrow=2, dimnames=list(letters[1:2], 1:4))
y <- wrap(x)
z <- unwrap(y)
print(z)
stopifnot(identical(z,x))


cat("\nWrap and unwrap a randomly sized and shaped array 'x2':\n")
maxdim <- 5
dim <- sample(1:maxdim, size=sample(2:maxdim))
ndim <- length(dim)
dimnames <- list()
for (kk in 1:ndim)
  dimnames[[kk]] <- sprintf("\%s\%d", letters[kk], 1:dim[kk])
x2 <- 1:prod(dim)
x2 <- array(x, dim=dim, dimnames=dimnames)

cat("\nArray 'x2':\n")
print(x)

# Number of dimensions of wrapped array
ndim2 <- sample(1:(ndim-1), size=1)

# Create a random map for joining dimensions
splits <- NULL;
if (ndim > 2)
  splits <- sort(sample(2:(ndim-1), size=ndim2-1))
splits <- c(0, splits, ndim);
map <- list();
for (kk in 1:ndim2)
  map[[kk]] <- (splits[kk]+1):splits[kk+1];

cat("\nRandom 'map':\n")
print(map)

cat("\nArray 'y2':\n")
y2 <- wrap(x2, map=map)
print(y2)

cat("\nArray 'x2':\n")
z2 <- unwrap(y2)
print(z2)

stopifnot(identical(z2,x2))
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:unwrap.array]{*unwrap}()}.
   See \link[base:aperm]{aperm()}.
 }


\keyword{methods}
\keyword{programming}
