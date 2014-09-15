library("R.utils")

mfile <- function(file, ...) {
  mprintf("\n%s:\n", file)
  mcat("-------------------------------------------------\n")
  mcat(readLines(pathname), sep="\n")
  mcat("-------------------------------------------------\n")
} # mfile()

cons0 <- showConnections()

# Divert standard output
pathname <- tempfile(fileext=".output.txt")
res <- withSink(file=pathname, {
  print(letters)
  NULL
})
mfile(pathname)
mprint(warnings())


# Divert standard error/messages
pathname <- tempfile(fileext=".message.txt")
res <- withSink(file=pathname, type="message", {
  mprint(letters)
  NULL
})
mfile(pathname)
mprint(warnings())


# Divert standard output (and make sure to close any other sinks opened)
pathname <- tempfile(fileext=".output2.txt")
res <- withSink(file=pathname, {
  print(letters)
  pathnameT <- tempfile(fileext=".output3.txt")
  sink(pathnameT, type="output")
  print(LETTERS)
  mstr(1:10)
}, append=TRUE)
mfile(pathname)
mprint(warnings())

# Assert that all connections opened were closed
cons1 <- showConnections()
mprint(cons0)
mprint(cons1)
stopifnot(all.equal(cons1, cons0))
