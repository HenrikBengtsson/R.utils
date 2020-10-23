res <- systemR(paste("--slave -e", shQuote("cat(runif(1))")), intern=TRUE)
cat("A random number: ", res, "\n", sep="")
