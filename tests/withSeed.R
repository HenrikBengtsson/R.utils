library("R.utils")

# Reset seed
if (exists(".Random.seed", envir=globalenv())) {
  rm(list=".Random.seed", envir=globalenv())
}

# Generate a random number
y0 <- runif(1)
print(y0)

# Generate a random number using the same seed over and over
yp <- NULL
for (ii in 1:10) {
  y <- withSeed({
    runif(1)
  }, seed=0x42)
  print(y)
  # Assert identical
  if (!is.null(yp)) stopifnot(identical(y, yp))
  yp <- y
}

# Generate a random number
y <- runif(1)
print(y)

