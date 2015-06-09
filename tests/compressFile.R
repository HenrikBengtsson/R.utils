library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# bzip2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat(file="foo.txt", "Hello world!")
print(isBzipped("foo.txt"))
print(isBzipped("foo.txt.bz2"))

bzip2("foo.txt")
print(file.info("foo.txt.bz2"))
print(isBzipped("foo.txt"))
print(isBzipped("foo.txt.bz2"))

bunzip2("foo.txt.bz2")
print(file.info("foo.txt"))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# gzip
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat(file="foo.txt", "Hello world!")
print(isGzipped("foo.txt"))
print(isGzipped("foo.txt.gz"))

gzip("foo.txt")
print(file.info("foo.txt.gz"))
print(isGzipped("foo.txt"))
print(isGzipped("foo.txt.gz"))

gunzip("foo.txt.gz")
print(file.info("foo.txt"))



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
