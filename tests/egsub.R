library("R.utils")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing expression
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
expr <- expression(x[,1])
expr2 <- egsub("foo", "bar", expr)
stopifnot(identical(expr2, expr))

