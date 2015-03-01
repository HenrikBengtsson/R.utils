library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example using an array with a random number of dimensions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
maxdim <- 4
dim <- sample(3:maxdim, size=sample(2:maxdim, size=1), replace=TRUE)
ndim <- length(dim)
dimnames <- list()
for (kk in 1:ndim)
  dimnames[[kk]] <- sprintf("%s%d", letters[kk], 1:dim[kk])
x <- 1:prod(dim)
x <- array(x, dim=dim, dimnames=dimnames)

cat("\nArray 'x':\n")
print(x)


cat("\nExtract 'x[2:3,...]':\n")
print(extract(x, "1"=2:3))

cat("\nExtract 'x[3,2:3,...]':\n")
print(extract(x, "1"=3,"2"=2:3))

cat("\nExtract 'x[...,2:3]':\n")
print(extract(x, indices=2:3, dims=length(dim(x))))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Assertions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
y <- array(1:24, dim=c(2,3,4))
yA <- y[,,2:3]
yB <- extract(y, indices=list(2:3), dims=length(dim(y)))
stopifnot(identical(yB, yA))

yA <- y[,2:3,2]
yB <- extract(y, indices=list(2:3,2), dims=c(2,3), drop=TRUE)
stopifnot(identical(yB, yA))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
y <- matrix(1:24, nrow=6, ncol=4)
yA <- y[,2:3]
yB <- extract(y, indices=list(2:3), dims=length(dim(y)))
stopifnot(identical(yB, yA))
