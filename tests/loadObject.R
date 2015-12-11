library("R.utils")

x <- 1:10
str(x)

file <- tempfile(fileext="")

file1 <- saveObject(x, file=file)
print(file1)
x1 <- loadObject(file1)
str(x1)
stopifnot(all.equal(x1, x))
file.remove(file1)

file2 <- saveObject(x, file=sprintf("%s.xdr", file))
print(file2)
x2 <- loadObject(file2)
str(x2)
stopifnot(all.equal(x2, x))
file.remove(file2)

file3 <- saveObject(x, file=sprintf("%s.rds", file))
print(file3)
x3 <- loadObject(file3, format="rds")
str(x3)
stopifnot(all.equal(x3, x))
file.remove(file3)

file4 <- saveObject(x, file=sprintf("%s.Rbin", file))
print(file4)
x4 <- loadObject(file4)
str(x4)
stopifnot(all.equal(x4, x))
file.remove(file4)

if (isPackageInstalled("digest")) {
  file <- saveObject(x)
  print(file)
  file.remove(file)
}

