library("R.utils")

res <- systemR("--slave -e cat(runif(1))", intern=TRUE, verbose=TRUE)
cat("A random number: ", res, "\n", sep="")
