library("R.utils")


# Insert NAs (default) between all values
y <- c(a=1, b=2, c=3)
print(y)
x <- insert(y, ats=2:length(y))
Ex <- c(y[1], NA_real_, y[2], NA_real_, y[3])
print(x)
stopifnot(identical(x,Ex))

# Insert at first position
y <- c(a=1, b=2, c=3)
print(y)
x <- insert(y, ats=1, values=rep(NA_real_, 2))
Ex <- c(NA_real_,NA_real_,y)
print(x)
stopifnot(identical(x,Ex))

x <- insert(y, ats=1, values=rep(NA_real_,2), useNames=FALSE)
print(x)

# Insert at last position (names of 'values' are ignored
# because input vector has no names)
x <- insert(1:3, ats=4, values=c(d=2, e=1))
Ex <- c(1:3,2,1)
print(x)
stopifnot(identical(x,Ex))


# Insert in the middle of a vector
x <- insert(c(1,3,2,1), ats=2, values=2)
print(x)
stopifnot(identical(as.double(x),as.double(Ex)))


# Insert multiple vectors at multiple indices at once
x0 <- c(1:4, 8:11, 13:15)

x <- insert(x0, at=c(5,9), values=list(5:7,12))
print(x)
Ex <- 1:max(x)
stopifnot(identical(as.double(x),as.double(Ex)))

x <- insert(x0, at=c(5,9,12), values=list(5:7,12,16:18))
print(x)
Ex <- 1:max(x)
stopifnot(identical(as.double(x),as.double(Ex)))


# Insert missing indices
Ex <- 1:20
missing <- setdiff(Ex, x0)
x <- x0
for (m in missing)
  x <- insert(x, ats=m, values=m)
print(x)
stopifnot(identical(as.double(x),as.double(Ex)))


## Exception handling
x <- 1:10
res <- try(y <- insert(x, ats=1:2, values=1:3), silent=TRUE)
stopifnot(inherits(res, "try-error"))


