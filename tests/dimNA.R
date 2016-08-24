library("R.utils")

x <- 1:12
dimNA(x) <- c(2,NA_real_,3)
stopifnot(dim(x) == as.integer(c(2,2,3)))

dimNA(x) <- NULL
stopifnot(is.null(dim(x)))


## Exception handling
x <- 1:12
res <- try(dimNA(x) <- c(4,NA_real_,4), silent=TRUE)
stopifnot(inherits(res, "try-error"))

