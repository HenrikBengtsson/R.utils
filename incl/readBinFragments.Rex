# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Create a data file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
data <- 1:255
size <- 2
pathname <- tempfile("exampleReadBinFragments")
writeBin(con=pathname, data, size=size)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Read and write using index vectors
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Read every 16:th byte in the file
idxs <- seq(from=1, to=255, by=16)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
stopifnot(identical(x, data[idxs]))
print(x)

# Update every 16:th byte in the file
x0 <- x
idxs <- seq(from=1, to=255, by=16)
writeBinFragments(pathname, idxs=idxs, rev(x), size=size)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
print(x)
stopifnot(identical(rev(x0), x))

# Update every 16:th byte in the file
idxs <- seq(from=1, to=255, by=16)
writeBinFragments(pathname, idxs=idxs, rev(x), size=size)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
print(x)
stopifnot(identical(x0, x))

# Read the complete file
x <- readBin(pathname, what="integer", size=size, signed=FALSE, n=length(data))
stopifnot(identical(x, data))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# Clean up
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
file.remove(pathname)
