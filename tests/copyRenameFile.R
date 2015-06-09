library("R.utils")

# Create file
cat("Hello", file="hello.txt")
stopifnot(isFile("hello.txt"))

# Copy file
copyFile("hello.txt", "hello2.txt", verbose=TRUE)
stopifnot(isFile("hello2.txt"))

# Copy file
stopifnot(all(isFile(c("hello.txt", "hello2.txt"))))

# Copy file by overwriting existing file
copyFile("hello.txt", "hello2.txt", overwrite=TRUE)
stopifnot(isFile("hello2.txt"))

# Copy file to directory
pathD <- tempdir()
copyFile("hello.txt", pathD)
pathnameD <- file.path(pathD, "hello.txt")
stopifnot(isFile(pathnameD))
file.remove(pathnameD)

# Rename file
renameFile("hello2.txt", "hello3.txt", verbose=TRUE)
stopifnot(!isFile("hello2.txt"))
stopifnot(isFile("hello3.txt"))

# Rename file by overwriting existing file
renameFile("hello3.txt", "hello.txt", overwrite=TRUE)
stopifnot(!isFile("hello3.txt"))
stopifnot(isFile("hello.txt"))


# Move file to directory (and back)
# NOTE: We are not moving file to tempdir() just in case
# that is on a different file system which in case we
# risk getting error "cannot rename file reason 'Invalid
# cross-device link' (some Unix problem)
pathD <- "foo"
mkdirs(pathD)
renameFile("hello.txt", pathD)
pathnameD <- file.path(pathD, "hello.txt")
stopifnot(isFile(pathnameD))
renameFile(pathnameD, ".")


## Exception handling
res <- try(copyFile("hello.txt", "hello.txt"), silent=TRUE)
stopifnot(inherits(res, "try-error"))


# Cleanup
removeDirectory("foo")
file.remove("hello.txt")
