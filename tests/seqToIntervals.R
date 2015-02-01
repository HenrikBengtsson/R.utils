library("R.utils")

x <- 1:10
y <- seqToIntervals(x)
print(y)  # [1 10]

x <- c(1:10, 15:18, 20)
y <- seqToIntervals(x)
print(y)  # [1 10; 15 18; 20 20]

z <- intervalsToSeq(y)
print(z)
stopifnot(all.equal(x,z))

y <- matrix(c(5,11, 1,10), ncol=2L, byrow=TRUE)
z <- intervalsToSeq(y, unique=FALSE)
print(z)
z <- intervalsToSeq(y, unique=TRUE)
print(z)
z <- intervalsToSeq(y, sort=TRUE)
print(z)
z <- intervalsToSeq(y, unique=TRUE, sort=TRUE)
print(z)

## Corner cases
x <- integer(0)
y <- seqToIntervals(x)
print(y)
str(y)
stopifnot(all.equal(dim(y), c(0,2)))
