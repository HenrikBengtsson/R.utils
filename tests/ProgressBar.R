library("R.utils")

# A progress bar with default step length one.
pb <- ProgressBar(max=42)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  if (interactive()) Sys.sleep(0.02)
}
cat("\n")

# A "faster" progress bar with default step length 1.4.
pb <- ProgressBar(max=42, stepLength=1.4)
reset(pb)
while (!isDone(pb)) {
  x <- rnorm(3e4)
  increase(pb)
  # Emulate a slow process
  if (interactive()) Sys.sleep(0.02)
}

cat("\n")


## Odds and ends
print(pb)
print(setStepLength(pb, 1L))
print(setMaxValue(pb, 100L))
print(setProgress(pb, 0.3))
print(setTicks(pb, 10L))

