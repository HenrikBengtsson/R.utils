###########################################################################/**
# @RdocDefault gstring
# @alias gstring.GString
#
# @title "Parses and evaluates a GString into a regular string"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{@character strings.}
#   \item{file, path}{Alternatively, a file, a URL or a @connection from
#      with the strings are read.
#      If a file, the \code{path} is prepended to the file, iff given.}
#  \item{envir}{The @environment in which the @see "GString" is evaluated.}
# }
#
# \value{
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @see "gcat".
# }
#*/###########################################################################
setMethodS3("gstring", "GString", function(s, envir=parent.frame(), ...) {
  evaluate(s, envir=envir, ...);
})

setMethodS3("gstring", "default", function(..., file=NULL, path=NULL, envir=parent.frame()) {
  # Argument 'file' & 'path':
  if (inherits(file, "connection")) {
  } else if (is.character(file)) {
    if (!is.null(path)) {
      file <- file.path(path, file);
    }
    if (!isUrl(file)) {
      file <- Arguments$getReadablePathname(file, absolute=TRUE);
    }
  }

  if (is.null(file)) {
    s <- GString(...);
  } else {
    s <- readLines(file, warn=FALSE);
    s <- GString(s);
  }

  gstring(s, envir=envir);
})
