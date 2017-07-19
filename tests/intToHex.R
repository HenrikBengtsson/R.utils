library("R.utils")

x <- 1:10
print(x)
y <- intToHex(x)
print(y)
stopifnot(is.character(y), all(!is.na(y)))
y <- intToBin(x)
print(y)
stopifnot(is.character(y), all(!is.na(y)))
y <- intToOct(x)
print(y)
stopifnot(is.character(y), all(!is.na(y)))


x <- 2^31
y <- intToBin(x)
print(y)
stopifnot(y == "10000000000000000000000000000000")

y <- intToHex(x)
print(y)
stopifnot(is.character(y), is.na(y))

y <- intToOct(x)
print(y)
stopifnot(is.character(y), is.na(y))
