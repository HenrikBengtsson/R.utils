library("R.utils")

message("*** captureOutput() == capture.output()")
for (n in c(0, 1, 10, 100, 1000)) {
  printf("n=%d\n", n)
  x <- rnorm(n)
  str(x)

  bfr0 <- capture.output(print(x))
  bfr <- captureOutput(print(x))
  stopifnot(nchar(bfr) == nchar(bfr0))

  stopifnot(identical(bfr, bfr0))
} # for (n ...)

message("*** captureOutput(..., collapse=ch)")
x <- c("abc", "123", "def\n456")
for (ch in list(NULL, "\n", "\r", "\n\r", "\r\n", ";\n", "")) {
  bfr0 <- paste(capture.output(cat(x)), collapse=ch)
  bfr <- captureOutput(cat(x), collapse=ch)
  str(list(bfr0=bfr0, bfr=bfr))
  stopifnot(identical(bfr0, bfr))
}
