library("R.utils")

x <- 1:5
y <- resample(x)
print(y)
stopifnot(length(y) == length(x))

x <- 5
y <- resample(x)
print(y)
stopifnot(length(y) == length(x))
