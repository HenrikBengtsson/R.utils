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



