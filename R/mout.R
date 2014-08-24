###########################################################################/**
# @RdocDefault mout
# @aliasmethod mprint
# @alias mprint
# @aliasmethod mshow
# @alias mshow
# @aliasmethod mcat
# @alias mcat
# @aliasmethod mstr
# @alias mstr
# @aliasmethod mprintf
# @alias mprintf
#
# @title "Miscellaneous methods for outputting via message()"
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
#   Returns what @see "base::message" returns.
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
setMethodS3("mout", "default", function(..., appendLF=FALSE) {
  bfr <- captureOutput(...)
  bfr <- paste(c(bfr, ""), collapse="\n")
  message(bfr, appendLF=appendLF)
})

setMethodS3("mprintf", "default", function(..., appendLF=FALSE) {
  bfr <- sprintf(...)
  message(bfr, appendLF=appendLF)
})

setMethodS3("mcat", "default", function(..., appendLF=FALSE) {
  mout(cat(...))
})

setMethodS3("mprint", "default", function(..., appendLF=TRUE) {
  mout(print(...))
})

setMethodS3("mshow", "default", function(..., appendLF=TRUE) {
  mout(show(...))
})

setMethodS3("mstr", "default", function(..., appendLF=TRUE) {
  mout(str(...))
})


############################################################################
# HISTORY:
# 2014-08-24
# o Created.
############################################################################
