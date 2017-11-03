library("R.utils")

x <- -3:3
print(x)

y <- intToHex(x)
y_truth <- c("fffffffd", "fffffffe", "ffffffff",
             "00000000", "00000001", "00000002", "00000003")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))

y <- intToOct(x)
y_truth <- c("37777777775", "37777777776", "37777777777",
             "00000000000", "00000000001", "00000000002", "00000000003")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))

y <- intToBin(x)
print(y)
stopifnot(is.character(y), all(!is.na(y)))



x <- 2^31

## Not overflow
y <- intToBin(x)
print(y)
stopifnot(y == "10000000000000000000000000000000")

## Overflow
y <- intToHex(x)
print(y)
stopifnot(is.character(y), is.na(y))

## Overflow
y <- intToOct(x)
print(y)
stopifnot(is.character(y), is.na(y))
