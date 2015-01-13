library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Simulate two large named logical vectors,
# one with missing values one without
# - - - - - - - - - - - - - - - - - - - - - - - - - -
N <- 1e6

# Vector #1
x <- sample(c(TRUE, FALSE), size=N, replace=TRUE)
names(x) <- seq_along(x)

# Vector #2
y <- x
y[sample(N, size=0.1*N)] <- NA


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Validate consistency
# - - - - - - - - - - - - - - - - - - - - - - - - - -
stopifnot(identical(which(x), whichVector(x)))
stopifnot(identical(which(y), whichVector(y)))


