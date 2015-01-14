library("R.utils")

file <- tempfile()

x <- 1:10
print(x)
str(x)
saveObject(x, file=file)

x2 <- loadObject(file)
print(x2)
str(x2)
stopifnot(all.equal(x2, x))

file.remove(file)
