intToHex <- function(x) {
  y <- as.integer(x)
  class(y) <- "hexmode"
  y <- as.character(y)
  dim(y) <- dim(x)
  y
}
