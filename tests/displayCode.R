library("R.utils")

opager <- options(pager=mpager)

file <- system.file("DESCRIPTION", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file)

file <- system.file("NEWS", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file, numerate=FALSE, lines=100:110, wrap=65)

file <- system.file("NEWS", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file, lines=100:110, wrap=65, highlight=c(101,104:108))

con <- file(file)
displayCode(con, lines=1:10)

displayCode(file, lines=1:10, pager=mpager)
displayCode(file, lines=1:10, pager="mpager")


## Exception handling
res <- try(displayCode(file, lines=-10:110), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(displayCode(file, wrap=integer(0)), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(displayCode(file, wrap=55:66), silent=TRUE)
stopifnot(inherits(res, "try-error"))

res <- try(displayCode(2L), silent=TRUE)
stopifnot(inherits(res, "try-error"))

options(opager)
