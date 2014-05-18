# Original expression
expr <- substitute({
  res <- foo.bar.yaa(2)
  print(res)
  R.utils::use("R.oo")
  x <- .b.
})

# Some predefined objects
foo.bar.yaa <- function(x) str(x)
a <- 2
b <- a

# Substitute with variable name
expr2 <- egsub("^[.]([a-zA-Z0-9_.]+)[.]$", "\\\\1", expr, value=FALSE)
print(expr2)
## {
##     res <- foo.bar.yaa(2)
##     print(res)
##     R.utils::use("R.oo")
##     x <- b
## }

# Substitute with variable value
expr3 <- egsub("^[.]([a-zA-Z0-9_.]+)[.]$", "\\\\1", expr, value=TRUE)
print(expr3)
## {
##     res <- foo.bar.yaa(2)
##     print(res)
##     R.utils::use("R.oo")
##     x <- 2
## }
# Substitute the body of a function
warnifnot <- egsub("stop", "warning", stopifnot, value=FALSE)
print(warnifnot)
warnifnot(pi == 3.14)
