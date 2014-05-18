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
#stopifnot(bfr ==""> res <- foo.bar.yaa(3.14)\n> R.utils::use(\"R.utils\")\n> x <- 2\n> y <- 3\n")
