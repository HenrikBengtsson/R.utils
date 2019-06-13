library("R.utils")

## Create a test folder with R scripts
path <- file.path(tempdir(), "R.utils")
dir.create(path, recursive = TRUE, showWarnings = FALSE)

pathname <- file.path(path, "increment_x.R")
cat(file = pathname, "x <- x + 1L\n")

x <- 0L

source(pathname)
message("x = ", x)
stopifnot(x == 1L)

source(pathname)
message("x = ", x)
stopifnot(x == 2L)

for (kk in 1:2) {
  sourceTo(pathname, modifiedOnly = TRUE)
  message("x = ", x)
  stopifnot(x == 3L)
}

Sys.sleep(1)
touchFile(pathname)

for (kk in 1:2) {
  sourceTo(pathname, modifiedOnly = TRUE)
  message("x = ", x)
  stopifnot(x == 4L)
}

sourceTo(pathname, modifiedOnly = FALSE)
message("x = ", x)
stopifnot(x == 5L)

for (kk in 1:2) {
  sourceDirectory(path, modifiedOnly = TRUE)
  message("x = ", x)
  stopifnot(x == 5L)
}

sourceDirectory(path, modifiedOnly = FALSE)
message("x = ", x)
stopifnot(x == 6L)

sourceDirectory(path, modifiedOnly = TRUE)
message("x = ", x)
stopifnot(x == 6L)

Sys.sleep(1)
touchFile(pathname)

for (kk in 1:2) {
  sourceDirectory(path, modifiedOnly = TRUE)
  message("x = ", x)
  stopifnot(x == 7L)
}


## Cleanup
#unlink(path, recursive = TRUE)
