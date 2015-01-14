library("R.utils")

# Creates a progress bar (of length 100) that displays it self as a file.
pb <- FileProgressBar("~/progress.simulation")
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  if (interactive()) Sys.sleep(0.1)
  Sys.sleep(0.01)
}

cleanup(pb)
