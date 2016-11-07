library("R.utils")

mfile <- function(file, ...) {
  mprintf("\n%s:\n", file)
  mcat("-------------------------------------------------\n")
  mcat(readLines(pathname), sep="\n")
  mcat("-------------------------------------------------\n")
} # mfile()


# Display warnings as they occur
oopts <- options(warn=1L)

cons0 <- showConnections()

# Divert standard output
pathname <- tempfile(fileext=".output.txt")
mprint(pathname)
res <- withSink(file=pathname, {
  print(letters)
  NULL
})
mfile(pathname)
mprint(warnings())


# Divert standard error/messages
pathname <- tempfile(fileext=".message.txt")
mprint(pathname)
res <- withSink(file=pathname, type="message", {
  mprint(letters)
  NULL
})
mfile(pathname)
mprint(warnings())


# Divert standard output (and make sure to close any other sinks opened)
pathname <- tempfile(fileext=".output2.txt")
mprint(pathname)
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

# Reset how warnings are displayed
options(oopts)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Visibility
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pathname <- tempfile(fileext=".output.txt")
res <- withVisible({
  withSink({ print(1); 1 }, file=pathname)
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(res$visible)

x <- 0
res <- withVisible({
  withSink({ print(1); x <- 1 }, file=pathname)
})
str(res)
stopifnot(all.equal(res$value, 1))
stopifnot(!res$visible)
stopifnot(all.equal(x, 1))
