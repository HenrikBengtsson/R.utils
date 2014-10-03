library("R.utils")

pathname <- tempfile()

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
writeString <- function(s, file) {
  raw <- charToRaw(s)
  writeBin(raw, con=file)
  if (is.character(file)) {
    # Sanity check
    stopifnot(file.info(file)$size == length(raw))
  }
} # writeString()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Empty file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("", file=pathname)
# Sanity check
stopifnot(file.info(pathname)$size == 0L)

n <- countLines(pathname)
stopifnot(n == 0L)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# File with one line
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# File: Ending with a new line
writeString("Hello world!\n", file=pathname)
n <- countLines(pathname)
stopifnot(n == 1L)

# File: Last line does not end with a new line
writeString("Hello world!", file=pathname)
n <- countLines(pathname)
stopifnot(n == 1L)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Files with multiple lines
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
bfr <- letters[1:9]

# File: All lines ending with a new line
writeString(paste(c(bfr, ""), collapse="\n"), file=pathname)
n <- countLines(pathname)
stopifnot(n == length(bfr))

# File: Last line does not end with a new line
writeString(paste(bfr, collapse="\n"), file=pathname)
n <- countLines(pathname)
stopifnot(n == length(bfr))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Counting either CR, LF, or CRLF
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (newline in c("\r", "\n", "\r\n")) {
  cat("Newline sequence:\n")
  str(newline)
  writeString(paste(bfr, collapse=newline), file=pathname)

  # Reading from file
  n <- countLines(pathname)
  stopifnot(n == length(bfr))

  # Reading from connection
  con <- file(pathname, open="rb")
  n <- countLines(con)
  close(con)
  stopifnot(n == length(bfr))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Compressed files
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pathnameGZ <- sprintf("%s.gz", pathname)
for (newline in c("\r", "\n", "\r\n")) {
  cat("Newline sequence:\n")
  str(newline)

  con <- gzfile(pathnameGZ, open="wb")
  writeString(paste(bfr, collapse=newline), file=con)
  close(con)

  # Reading from file
  n <- countLines(pathnameGZ)
  stopifnot(n == length(bfr))
  print(n)

  # Reading from connection
  con <- gzfile(pathname, open="rb")
  n <- countLines(con)
  close(con)
  print(n)
  stopifnot(n == length(bfr))
}

# Cleanup
file.remove(pathnameGZ)
file.remove(pathname)
