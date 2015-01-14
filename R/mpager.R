###########################################################################/**
# @RdocFunction mpager
#
# @title "A \"pager\" function that outputs to standard error"
#
# \description{
#   @get "title" and is compatible with @see "base::file.show".
# }
#
# @synopsis
#
# \arguments{
#  \item{files}{A @character @vector of K pathnames.}
#  \item{header}{A @character @vector of K headers.}
#  \item{title}{A @character string.}
#  \item{delete.file}{If @TRUE, the files are deleted after displayed,
#   otherwise not.}
# }
#
# \value{
#  Returns nothing.
# }
#
# @author
#
# \seealso{
#   @see "base::file.show" and argument \code{pager}.
# }
#
# @keyword programming
# @keyword IO
# @keyword file
#*/###########################################################################
mpager <- function(files, header=NULL, title="R Information", delete.file=FALSE) {
  mbar <- function(ch="-", width=getOption("width")-1L) {
    mprintf("%s\n", paste(rep(ch, times=width), collapse=""))
  }

  if (length(title) > 0L && is.character(title) && nchar(title) > 0L) {
    mbar("=")
    mprintf("%s\n", title)
    mbar("=")
    mcat("\n")
  }

    for (ii in seq_along(files)) {
    file <- files[ii]
    hdr <- header[ii]
    if (length(hdr) > 0L && is.character(hdr) && nchar(hdr) > 0L) {
      if (ii > 1L) mcat("\n")
      mbar("-")
      mprintf("%s\n", hdr)
      mbar("-")
    }
    bfr <- readLines(file)
    mcat(bfr, sep="\n", collapse="\n")

    if (delete.file) {
      file.remove(file)
    }
  }
} # mpager()


############################################################################
# HISTORY:
# 2015-01-12
# o Created.
############################################################################
