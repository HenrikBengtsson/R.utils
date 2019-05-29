library("R.utils")

x = 1

# Test that modifiedOnly works for recursive subdirectories

sourceDirectory('tests/sourceDirectoryDir/', modifiedOnly = F)
stopifnot(identical(x, 2))

sourceDirectory('tests/sourceDirectoryDir/', modifiedOnly = F)
stopifnot(identical(x, 3))