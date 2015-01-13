library("R.utils")

path <- "C:/Users/JohnDoe/"
parent0 <- dirname(path)
parent <- getParent(path)
stopifnot(identical(parent, parent0))
