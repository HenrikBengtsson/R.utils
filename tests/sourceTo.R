library("R.utils")

opager <- options(pager=mpager)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("=== Example 1 ================================================\n")

foo <- function(file, ...) {
  cat("Local objects before calling sourceTo():\n")
  print(ls())

  res <- sourceTo(file, ...)

  cat("Local objects after calling sourceTo():\n")
  print(ls())
}

cat("Global objects before calling foo():\n")
lsBefore <- NA
lsBefore <- ls()
foo(file=textConnection(c('a <- 1', 'b <- 2')))

cat("Global objects after calling foo():\n")
stopifnot(length(setdiff(ls(), lsBefore)) == 0)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 2 - with VComments preprocessor
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("=== Example 2 ================================================\n")

preprocessor <- function(lines, ...) {
  cat("-----------------------------------------\n")
  cat("Source code before preprocessing:\n")
  displayCode(code=lines)
  cat("-----------------------------------------\n")
  cat("Source code after preprocessing:\n")
  lines <- VComments$compile(lines)
  displayCode(code=lines)
  cat("-----------------------------------------\n")
  lines
}

oldHooks <- getHook("sourceTo/onPreprocess")
setHook("sourceTo/onPreprocess", preprocessor, action="replace")
code <- c(
 'x <- 2',
 '#V1# threshold=-1',
 '#Vc# A v-comment log message',
 'print("Hello world")'
)
fh <- textConnection(code)
sourceTo(fh)
setHook("sourceTo/onPreprocess", oldHooks, action="replace")

options(opager)
