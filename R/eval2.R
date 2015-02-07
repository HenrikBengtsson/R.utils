## eval() that preserves "visibility", cf. R-devel thread
## 'WISH: eval() to preserve the "visibility" (now value
## is always visible)' on 2015-02-07
## https://stat.ethz.ch/pipermail/r-devel/2015-February/070611.html
.eval2 <- function(expr, envir=parent.frame(), ...) {
  expr2 <- substitute(withVisible(x), list(x=expr))
  res <- eval(expr2, envir=envir, ...)
  value <- res$value
  if (res$visible) value else invisible(value)
} # .eval2()


############################################################################
# HISTORY:
# 2015-02-07
# o Created.
############################################################################

