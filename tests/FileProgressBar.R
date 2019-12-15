library("R.utils")

# Creates a progress bar (of length 100) that displays it self as a file.
pb <- FileProgressBar(file.path(tempdir(), "progress.simulation"))
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  Sys.sleep(0.001)
}

cleanup(pb)
