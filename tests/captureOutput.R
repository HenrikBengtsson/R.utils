library("R.utils")

# captureOutput() is much faster than capture.output()
# for large outputs when capturing to a string.
for (n in c(10e3, 40e3, 80e3)) {
  printf("n=%d\n", n)

  x <- rnorm(n)

  t0 <- system.time({
    bfr0 <- capture.output(print(x))
  })
  print(t0)

  t1 <- system.time({
    bfr <- captureOutput(print(x))
  })
  print(t1)
  print(t1/t0)

  stopifnot(identical(bfr, bfr0))
} # for (n ...)

