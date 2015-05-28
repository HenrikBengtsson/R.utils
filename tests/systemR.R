library("R.utils")

message("*** systemR() ...")

res <- systemR('--slave -e "cat(runif(1))"', intern=TRUE, verbose=TRUE)
cat("A random number: ", res, "\n", sep="")

message("*** systemR() ... DONE")

