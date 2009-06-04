
# Creates a progress bar (of length 100) that displays it self as a file.
pb <- FileProgressBar("~/progress.simulation")
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  Sys.sleep(0.01)
}
