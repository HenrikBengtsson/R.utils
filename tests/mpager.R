library("R.utils")

file <- tempfile()
cat("Hello world!\n", file=file)
mpager(file, header=file, title="Example for mpager()", delete.file=TRUE)

