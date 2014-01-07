library("R.utils")

filename <- "foo.txt"
paths <- list(".", tempdir())

for (path in paths) {
  pathname <- file.path(path, filename)
  # WORKAROUND: file.symlink() does not translate forward slashes for you!
  pathname <- gsub("/", "\\", pathname, fixed=TRUE)

  # Create a target file
  cat("Hello", file=pathname)

  # Create a symbolic link
  pathnameL <- file.path(path, sprintf("link-to-%s", filename))
  file.symlink(pathname, pathnameL)

  # Get target pathname
  pathnameT <- Sys.readlink2(pathnameL)
  # Should be equal
  #stopifnot(pathnameT == pathname)

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
} # for (path in ...)
