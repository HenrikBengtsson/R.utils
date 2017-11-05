library("R.utils")

print(withCapture({
 n <- 3
 n

 for (kk in 1:3) {
   printf("Iteration #%d\n", kk)
 }

 print(Sys.time())

 type <- "horse"
 type
}))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Assert correct capture of code and output
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
bfr <- withCapture({
 x <- 1
 x
}, newline=TRUE)
print(bfr)
stopifnot(bfr == "> x <- 1\n> x\n[1] 1\n")

bfr <- withCapture({
 x <- 1
 x
}, code=TRUE, output=FALSE, newline=TRUE)
print(bfr)
stopifnot(bfr == "> x <- 1\n> x\n")

bfr <- withCapture({
 x <- 1
 x
}, code=FALSE, output=TRUE, newline=TRUE)
print(bfr)
stopifnot(bfr == "[1] 1\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Fixed substitutions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
bfr <- withCapture({ x <- a }, replace=list(a="abc"))
print(bfr)
stopifnot(bfr == '> x <- "abc"\n')

bfr <- withCapture({ x <- a }, substitute=list(a="abc"))
print(bfr)
stopifnot(bfr == '> x <- "abc"\n')


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With automatic variable substitute
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
a <- 2
bfr <- withCapture({
 x <- .a.
 x
}, newline=TRUE)
print(bfr)
stopifnot(bfr == "> x <- 2\n> x\n[1] 2\n")


# Make sure not to substitute parts of variable names
# or expressions
foo.bar.yaa <- function(x) x
a <- 2
b.c <- 3
bfr <- withCapture({
  res <- foo.bar.yaa(3.14)
  R.utils::use("R.utils")
  x <- .a.
  y <- .b.c.
})
print(bfr)
## ODD: Different results when sourcing and R CMD check:ing
## this test script. /HB 2014-08-12
## stopifnot(bfr ==""> res <- foo.bar.yaa(3.14)\n> R.utils::use(\"R.utils\")\n> x <- 2\n> y <- 3\n")


# Make sure '...' is not substituted
bfr <- withCapture({
  benchmark <- function(fcn, n, len=100L, ...) {
    x <- lineBuffer(n, len=len, ...)
    foo(...)
    system.time({
      fcn(cat(x))
    }, gcFirst=TRUE)[[3]]
 } # benchmark()
})
print(bfr)
## ODD: Different results when sourcing and R CMD check:ing
## this test script. /HB 2014-08-12
## stopifnot(bfr == "> benchmark <- function(fcn, n, len = 100L, ...) {\n+     x <- lineBuffer(n, len = len, ...)\n+     foo(...)\n+     system.time({\n+         fcn(cat(x))\n+     }, gcFirst = TRUE)[[3]]\n+ }\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# BUG TEST: if-else statements
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
bfr <- withCapture(if (TRUE) 1 else 2)
print(bfr)
stopifnot(bfr == "> if (TRUE) 1 else 2\n[1] 1\n")

bfr <- withCapture({if (TRUE) 1 else 2 })
print(bfr)
## ODD: Different results when sourcing and R CMD check:ing
## this test script. /HB 2014-08-12
## stopifnot(bfr == "> if (TRUE) \n+     1 else 2\n[1] 1\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Empty
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
bfr <- withCapture({})
print(bfr)
stopifnot(length(bfr) == 0L)
