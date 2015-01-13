library("R.utils")

x <- 1:12
dimNA(x) <- c(2,NA,3)
stopifnot(dim(x) == as.integer(c(2,2,3)))

dimNA(x) <- NULL
stopifnot(is.null(dim(x)))

