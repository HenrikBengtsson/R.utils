library("R.utils")

x <- c(7, 8, 15, 16)
print(x)

y <- intToHex(x)
y_truth <- c("07", "08", "0f", "10")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))

y <- intToOct(x)
y_truth <- c("07", "10", "17", "20")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))

y <- intToBin(x)
y_truth <- c("00111", "01000", "01111", "10000")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))


x <- -3:3
print(x)

y <- intToHex(x)
y_truth <- c("fffffffd", "fffffffe", "ffffffff",
             "00000000",
             "00000001", "00000002", "00000003")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))

y <- intToOct(x)
y_truth <- c("37777777775", "37777777776", "37777777777",
             "00000000000",
             "00000000001", "00000000002", "00000000003")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))

y <- intToBin(x)
y_truth <- c("1111111111111111111111111111101",
             "1111111111111111111111111111110",
             "1111111111111111111111111111111",
             "0000000000000000000000000000000",
             "0000000000000000000000000000001",
             "0000000000000000000000000000010",
             "0000000000000000000000000000011")
print(y)
stopifnot(is.character(y), all(!is.na(y)), identical(y, y_truth))


## Integer out of range
x <- 2^31

y <- intToBin(x)
print(y)
stopifnot(is.character(y), is.na(y))

y <- intToHex(x)
print(y)
stopifnot(is.character(y), is.na(y))

y <- intToOct(x)
print(y)
stopifnot(is.character(y), is.na(y))
