
# Create a 3x2x3 array
dim <- c(3,2,3)
ndim <- length(dim)
dimnames <- list()
for (kk in 1:ndim)
  dimnames[[kk]] <- sprintf("%s%d", letters[kk], 1:dim[kk])
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
dim <- sample(1:maxdim, size=sample(2:maxdim, size=1))
ndim <- length(dim)
dimnames <- list()
for (kk in 1:ndim)
  dimnames[[kk]] <- sprintf("%s%d", letters[kk], 1:dim[kk])
x2 <- 1:prod(dim)
x2 <- array(x, dim=dim, dimnames=dimnames)

cat("\nArray 'x2':\n")
print(x)

# Number of dimensions of wrapped array
ndim2 <- sample(1:(ndim-1), size=1)

# Create a random map for joining dimensions
splits <- NULL
if (ndim > 2)
  splits <- sort(sample(2:(ndim-1), size=ndim2-1))
splits <- c(0, splits, ndim)
map <- list()
for (kk in 1:ndim2)
  map[[kk]] <- (splits[kk]+1):splits[kk+1]

cat("\nRandom 'map':\n")
print(map)

cat("\nArray 'y2':\n")
y2 <- wrap(x2, map=map)
print(y2)

cat("\nArray 'x2':\n")
z2 <- unwrap(y2)
print(z2)

stopifnot(identical(z2,x2))
