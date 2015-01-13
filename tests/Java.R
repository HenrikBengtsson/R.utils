library("R.utils")

pathname <- tempfile()

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Writing
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Open the temporary file for writing
out <- file(pathname, open="wb")
b <- -128:127
Java$writeByte(out, b)
s <- -32768:32767
Java$writeShort(out, s)
i <- c(-2147483648, -2147483647, -1, 0, +1, 2147483646, 2147483647)
Java$writeInt(out, i)
str <- c("This R string was written (using the UTF-8 format) using",
         "the static methods of the Java class in the R.utils package.")
str <- paste(str, collapse="\n")
Java$writeUTF(out, str)
close(out)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Reading
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (as.character in c(TRUE, FALSE)) {
  # Open the temporary file for reading
  inn <- file(pathname, open="rb")

  bfr <- Java$readByte(inn, n=length(b))
  cat("Read ", length(bfr), " bytes.\n", sep="")
  if (!identical(bfr, b))
    throw("Failed to read the same data that was written.")

  bfr <- Java$readShort(inn, n=length(s))
  cat("Read ", length(bfr), " shorts.\n", sep="")
  if (!identical(bfr, s))
    throw("Failed to read the same data that was written.")

  bfr <- Java$readInt(inn, n=length(i))
  cat("Read ", length(bfr), " ints.\n", sep="")
  if (!identical(bfr, i))
    throw("Failed to read the same data that was written.")

  bfr <- Java$readUTF(inn, as.character=TRUE)
  if (is.character(bfr)) {
    cat("Read ", nchar(bfr), " UTF characters:\n", "'", bfr, "'\n", sep="")
  } else {
    cat("Read ", length(bfr), " UTF character bytes:\n", "'", hpaste(bfr), "'\n", sep="")
  }

  # Trying to read more when there isn't anything else available
  bfr <- Java$readUTF(inn, as.character=FALSE)
  cat("Read ", length(bfr), " UTF character bytes:\n", "'", hpaste(bfr), "'\n", sep="")

  close(inn)
} # for (as.character ...)


file.remove(pathname)
