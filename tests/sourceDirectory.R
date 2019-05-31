library("R.utils")

x <- 1

# Test that modifiedOnly works for recursive subdirectories

sourceDirectory('sourceDirectoryDir/', modifiedOnly = FALSE)
stopifnot(identical(x, 2))

sourceDirectory('sourceDirectoryDir/', modifiedOnly = FALSE)
stopifnot(identical(x, 3))