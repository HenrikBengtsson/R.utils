
# Creates a progress bar (of length 100) that displays it self as a file.

pb <- FileProgressBar(file.path(tempdir(), "progress.simulation"), max = 10L)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  if (interactive()) Sys.sleep(0.1)
  cat(sprintf("File size: %d bytes\n", file.info(pb$pathname)$size))
  Sys.sleep(0.01)
}
