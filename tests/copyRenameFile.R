library("R.utils")

# Create file
cat("Hello", file="hello.txt")
stopifnot(isFile("hello.txt"))

# Copy file
copyFile("hello.txt", "hello2.txt")
stopifnot(isFile("hello2.txt"))

# Copy file by overwriting existing file
copyFile("hello.txt", "hello2.txt", overwrite=TRUE)
stopifnot(isFile("hello2.txt"))

# Rename file
renameFile("hello2.txt", "hello3.txt")
stopifnot(!isFile("hello2.txt"))
stopifnot(isFile("hello3.txt"))

# Rename file by overwriting existing file
renameFile("hello3.txt", "hello.txt", overwrite=TRUE)
stopifnot(!isFile("hello3.txt"))
stopifnot(isFile("hello.txt"))

# Cleanup
file.remove("hello.txt")

