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
cprint(x)

print(y)
cprint(y)

cat("mcat():\n")
cat(x, "\n")
ccat(x, "\n")

cat(x2)
ccat(x2)

cat(x3, sep=",")
ccat(x3, sep=",")

cat(x3, sep="\n")
ccat(x3, sep="\n")


cat("mstr():\n")
str(x)
cstr(x)

str(y)
cstr(y)

cat("mshow():\n")
show(x)
cshow(x)

show(y)
cshow(y)

cat("mprintf():\n")
printf("x=%d\n", 1:3)
cprintf("x=%d\n", 1:3)

cat("mout():\n")
writeLines(x)
cout(writeLines(x))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Tests related to closure
# - - - - - - - - - - - -- - - - - - - - - - - - - - - - - -
cfoo <- function(a=1) {
  cprintf("a=%s\n", a)
}

cbar <- function(...) {
  cfoo(...)
}

a <- 2
cfoo(a)
cfoo(3)

cbar(a)
cbar(3)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Assert that "console" messages cannot be captured/sunk
# via neither stdout nor stderr
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
res <- captureOutput({ ccat("Hello") })
str(res)
stopifnot(length(res) == 0L)

withSink({ ccat("Hello") }, file="foo.txt", type="message")
res <- readLines("foo.txt")
str(res)
stopifnot(length(res) == 0L)
