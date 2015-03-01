library("R.utils")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A symbol
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1L
y <- 2L
symb <- as.symbol("x")
print(symb)
expr <- egsub("x", "y", symb, value=FALSE)
print(expr)

expr2 <- egsub("x", "y", symb, value=TRUE)
print(expr2)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing expression
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
expr <- expression(x[,1])
print(expr)
expr2 <- egsub("foo", "bar", expr)
print(expr2)
stopifnot(identical(expr2, expr))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# NULLs in expression
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# An expression containing a function definition for a
# function without arguments.
expr <- substitute(y <- function() 0)
print(expr)
# Don't replace anything
expr2 <- egsub("x", "x", expr)
print(expr2)
stopifnot(identical(expr2, expr))
