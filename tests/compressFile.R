library("R.utils")

x0 <- runif(10e3)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# bzip2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
writeBin(x0, con = "foo.txt")
print(isBzipped("foo.txt"))
print(isBzipped("foo.txt.bz2"))

bzip2("foo.txt")
stopifnot(utils::file_test("-f", "foo.txt.bz2"))
print(file.info("foo.txt.bz2"))
print(isBzipped("foo.txt"))
print(isBzipped("foo.txt.bz2"))

bunzip2("foo.txt.bz2")
stopifnot(utils::file_test("-f", "foo.txt"))
print(file.info("foo.txt"))
x <- readBin("foo.txt", what = storage.mode(x0), n = length(x0))
stopifnot(identical(x, x0))

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# gzip
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
writeBin(x0, con = "foo.txt")
print(isGzipped("foo.txt"))
print(isGzipped("foo.txt.gz"))

gzip("foo.txt")
stopifnot(utils::file_test("-f", "foo.txt.gz"))
print(file.info("foo.txt.gz"))
print(isGzipped("foo.txt"))
print(isGzipped("foo.txt.gz"))

gunzip("foo.txt.gz")
stopifnot(utils::file_test("-f", "foo.txt"))
print(file.info("foo.txt"))
x <- readBin("foo.txt", what = storage.mode(x0), n = length(x0))
stopifnot(identical(x, x0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# xz
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
writeBin(x0, con = "foo.txt")
print(isXzipped("foo.txt"))
print(isXzipped("foo.txt.xz"))

xz("foo.txt")
stopifnot(utils::file_test("-f", "foo.txt.xz"))
print(file.info("foo.txt.xz"))
print(isXzipped("foo.txt"))
print(isXzipped("foo.txt.xz"))

unxz("foo.txt.xz")
stopifnot(utils::file_test("-f", "foo.txt"))
print(file.info("foo.txt"))
x <- readBin("foo.txt", what = storage.mode(x0), n = length(x0))
stopifnot(identical(x, x0))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Skipping and overwriting
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat(file="foo.txt", "Hello world!")
gzip("foo.txt", remove=FALSE)

res <- try(gzip("foo.txt", remove=FALSE, skip=FALSE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

gzip("foo.txt", remove=FALSE, overwrite=TRUE)
gzip("foo.txt", remove=FALSE, skip=TRUE)
res <- try(gzip("foo.txt", remove=FALSE, skip=FALSE), silent=TRUE)
stopifnot(inherits(res, "try-error"))

gunzip("foo.txt.gz", remove=FALSE, overwrite=TRUE)
res <- try(gunzip("foo.txt.gz", remove=FALSE, skip=FALSE), silent=TRUE)
stopifnot(inherits(res, "try-error"))
gunzip("foo.txt.gz", overwrite=TRUE)


## Cleanup
file.remove("foo.txt")
