library("R.utils")

x <- list()

x$case1 <- env({
 # Cut'n'pasted from elsewhere
 a <- 1
 b <- 2
})

x$case2 <- env({
 # Cut'n'pasted from elsewhere
 foo <- function(x) x^2
 a <- foo(2)
 b <- 1
 rm(foo) # Not needed anymore
})

# Turn into a list of lists
x <- lapply(x, FUN=as.list)

str(x)
