library("R.utils")

# Create files
pathnames <- sapply(1:3, FUN=function(x) {
  pathname <- tempfile()
  cat(file=pathname, "Hello world!")
  pathname
})

# Record checksums
md5a <- sapply(pathnames, FUN=digest::digest, file=TRUE)

# Record current time stamps
ta <- file.info(pathnames)$mtime
print(ta)

# Wait a bit...
Sys.sleep(1.2)

# Touch zero files
stopifnot(is.null(touchFile(NULL)))
stopifnot(is.null(touchFile(character(0L))))

# Touch multiple files
ta0 <- touchFile(pathnames)
tb <- file.info(pathnames)$mtime
print(tb)

# Verify return value
stopifnot(identical(ta0, ta))

# Verify that the timestamps got updated
stopifnot(tb > ta)

# Touch a single file
ta0 <- touchFile(pathnames[2L])
tb <- file.info(pathnames[2L])$mtime
print(tb)

# Verify that the timestamps got updated
stopifnot(tb > ta[2L])

# Verify that the content did not change
md5b <- sapply(pathnames, FUN=digest::digest, file=TRUE)
stopifnot(identical(md5a, md5b))
