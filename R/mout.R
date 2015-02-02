###########################################################################/**
# @RdocFunction mout
# @alias mprint
# @alias mshow
# @alias mcat
# @alias mstr
# @alias mprintf
# @alias cmsg
# @alias cout
# @alias cprint
# @alias cshow
# @alias ccat
# @alias cstr
# @alias cprintf
#
# @title "Miscellaneous functions for outputting via message()"
#
# \description{
#   @get "title".
#   These "m*" methods work analogously to their corresponding "*" methods
#   @see "base::print", @see "base::cat", @see "methods::show",
#   @see "utils::str", and @see "printf" but uses @see "base::message"
#   to output the content, which in turn outputs to standard error.
#   The \code{mout()} method can be used for all other output methods,
#   e.g. \code{mout(write(x, file=stdout()))}.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments passed to the underlying output method.}
#  \item{appendLF}{A @logical specifying whether to append a newline at
#   the end or not.}
# }
#
# \value{
#   Returns what the  @see "base::message" returns.
# }
#
# \examples{
#   print(letters[1:8])
#   mprint(letters[1:8])
#
#   cat(c(letters[1:8], "\n"))
#   mcat(c(letters[1:8], "\n"))
#
#   str(letters[1:8])
#   mstr(letters[1:8])
#
#   printf("x=\%d\n", 1:3)
#   mprintf("x=\%d\n", 1:3)
# }
#
# @author
#
# @keyword utilities
#*/###########################################################################
mout <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(..., envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  message(bfr, appendLF=appendLF)
}

mprint <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(print(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  message(bfr, appendLF=appendLF)
}

mcat <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(cat(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  message(bfr, appendLF=appendLF)
}

mstr <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(str(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  message(bfr, appendLF=appendLF)
}

mshow <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(show(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  message(bfr, appendLF=appendLF)
}

mprintf <- function(..., appendLF=FALSE) {
  bfr <- sprintf(...)
  message(bfr, appendLF=appendLF)
}


cmsg <- function(..., appendLF=FALSE) {
  ## Write output to a temporary file
  ## FIXME: Do we have worry about encoding?!? /HB 2015-02-01
  fh <- tempfile()
  on.exit(file.remove(fh))
  cat(..., file=fh)
  if (appendLF) cat("\n", file=fh, append=TRUE)

  ## Display file such that it cannot be
  ## captured/intercepted by R.
  if (.Platform$OS.type == "windows") {
    file.show(fh, pager="console", header="", title="", delete.file=FALSE)
  } else {
    system(sprintf("cat %s", fh))
  }
  invisible()
}

cout <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(..., envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  cmsg(bfr, appendLF=appendLF)
}

cprint <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(print(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  cmsg(bfr, appendLF=appendLF)
}

ccat <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(cat(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  cmsg(bfr, appendLF=appendLF)
}

cstr <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(str(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  cmsg(bfr, appendLF=appendLF)
}

cshow <- function(..., appendLF=FALSE) {
  bfr <- captureOutput(show(...), envir=parent.frame())
  bfr <- paste(c(bfr, ""), collapse="\n")
  cmsg(bfr, appendLF=appendLF)
}

cprintf <- function(..., appendLF=FALSE) {
  bfr <- sprintf(...)
  cmsg(bfr, appendLF=appendLF)
}



############################################################################
# HISTORY:
# 2015-02-01
# o Added ditto for "console" output.
# 2014-08-24
# o Note, these functions cannot be turned into S3/S4 methods because then
#   the arguments needs to be evaluated before dispatching, which may
#   result in output, e.g. mout(print(1:3)).
# o Created.
############################################################################
