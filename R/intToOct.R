intToOct <- function(x) {
  y <- as.integer(x)
  class(y) <- "octmode"
  y <- as.character(y)
  dim(y) <- dim(x)
  y
}
