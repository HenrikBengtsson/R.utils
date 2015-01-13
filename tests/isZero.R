library("R.utils")

x <- 0
print(x == 0)      # TRUE
print(isZero(x))   # TRUE

x <- 1
print(x == 0)      # FALSE
print(isZero(x))   # FALSE

x <- .Machine$double.eps
print(x == 0)      # FALSE
print(isZero(x))   # FALSE

x <- 0.9*.Machine$double.eps
print(x == 0)      # FALSE
print(isZero(x))   # TRUE

# From help(Comparisions)
x1 <- 0.5 - 0.3
x2 <- 0.3 - 0.1
print(x1 - x2)
print(x1 == x2)                           # FALSE on most machines
print(identical(all.equal(x1, x2), TRUE)) # TRUE everywhere
print(isZero(x1-x2))                      # TRUE everywhere

# Specifying tolerance by name
print(isZero(x1-x2, eps="double.eps"))
print(isZero(x1-x2, eps="single.eps"))
