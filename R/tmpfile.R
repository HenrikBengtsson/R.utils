###########################################################################/**
# @RdocFunction tmpfile
#
# @title "Creates a temporary file with content"
#
# \description{
#  @get "title" that will auto delete as soon as there is no longer
#  any references to it.
# }
#
# @synopsis
#
# \arguments{
#   \item{content}{A @character string to be written to the file.}
#   \item{...}{Optional arguments passed to @see "base::tempfile".}
# }
#
# \value{
#  The absolute pathname to the temporary file.
# }
#
# \examples{
#   md5 <- tools::md5sum(tmpfile("Hello world!"))
#   print(md5)
# }
#
# @author
#
# \seealso{
#  @see "base::tempfile".
# }
#
# @keyword programming
# @keyword file
# @keyword internal
#*/###########################################################################
tmpfile <- function(content=NULL, ...) {
  pathname <- tempfile(...)
  cat(content, file=pathname)
  env <- new.env(parent=emptyenv())
  env$pathname <- pathname
  reg.finalizer(env, function(e) file.remove(e$pathname), onexit=TRUE)
  attr(pathname, "gc") <- env
  pathname
}
