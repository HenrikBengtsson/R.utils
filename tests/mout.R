library("R.utils")
show <- methods::show

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# General tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- letters[1:8]
x2 <- c(x[-1], "\n")
x3 <- x2[-1]
y <- as.list(x[1:3])

cat("mprint():\n")
print(x)
mprint(x)

print(y)
mprint(y)

cat("mcat():\n")
cat(x, "\n")
mcat(x, "\n")

cat(x2)
mcat(x2)

cat(x3, sep=",")
mcat(x3, sep=",")

cat(x3, sep="\n")
mcat(x3, sep="\n")


cat("mstr():\n")
str(x)
mstr(x)

str(y)
mstr(y)

cat("mshow():\n")
show(x)
mshow(x)

show(y)
mshow(y)

cat("mprintf():\n")
printf("x=%d\n", 1:3)
mprintf("x=%d\n", 1:3)

cat("mout():\n")
writeLines(x)
mout(writeLines(x))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Tests related to closure
# - - - - - - - - - - - -- - - - - - - - - - - - - - - - - -
mfoo <- function(a=1) {
  mprintf("a=%s\n", a)
}

mbar <- function(...) {
  mfoo(...)
}

a <- 2
mfoo(a)
mfoo(3)

mbar(a)
mbar(3)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Assert that "console" messages can be captured/sunk
# via stderr but not stdout
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res <- captureOutput({ mcat("Hello") })
str(res)
stopifnot(length(res) == 0L)

withSink({ mcat("Hello") }, file="foo.txt", type="message")
res <- readLines("foo.txt")
str(res)
stopifnot(length(res) > 0L)
