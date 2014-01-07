library("R.utils")

# Create a target file
pathname <- "foo.txt"
cat("Hello", file=pathname)

# Create a symbolic link
pathnameL <- sprintf("link-to-%s", pathname)
file.symlink(pathname, pathnameL)

# Read contents (directly and via link)
bfr <- readChar(pathname, n=1e6)
bfrL <- readChar(pathnameL, n=1e6)
# Should be identical content
stopifnot(identical(bfrL, bfr))

# Retrieve file information (directly and via link)
fi <- file.info(pathname)
printf("*** file.info('%s'):\n", pathname)
print(fi)
fiL <- file.info2(pathnameL)
printf("*** file.info2('%s'):\n", pathnameL)
print(fiL)
# Should be equal file information except the filenames
stopifnot(all.equal(fiL, fi, check.attributes=FALSE))

# Note that file.info() does not follow links on Windows
if (.Platform$OS == "windows") {
  fiLx <- file.info(pathnameL)
  printf("*** file.info('%s'):\n", pathnameL)
  print(fiLx)
  res <- all.equal(fiLx, fi, check.attributes=FALSE)
}
