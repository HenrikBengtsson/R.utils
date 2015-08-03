###########################################################################/**
# @RdocDefault loadObject
#
# @title "Method to load object from a file or a connection"
#
# \description{
#   @get "title", which previously have been saved using @see "saveObject".
# }
#
# @synopsis
#
# \arguments{
#  \item{file}{A filename or @connection to read the object from.}
#  \item{path}{The path where the file exists.}
#  \item{format}{File format.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns the saved object.
# }
#
# \details{
#   The main difference from this method and @see "base::load" in the
#   \pkg{base} package, is that this one returns the object read rather
#   than storing it in the global environment by its default name.
#   This makes it possible to load objects back using any variable name.
# }
#
# @author
#
# \seealso{
#   @see "saveObject" to save an object to file.
#   Internally @see "base::load" is used.
#   See also @see "loadToEnv".
#   See also @see "base::saveRDS".
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setMethodS3("loadObject", "default", function(file, path=NULL, format=c("auto", "xdr", "rds"), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'file':
  if (!inherits(file, "connection")) {
    file <- Arguments$getReadablePathname(file, path=path, mustExist=TRUE)
  }

  # Argument 'format':
  format <- match.arg(format)

  # Infer 'format' from filename extension?  Default is "xdr"
  if (format == "auto") {
    format <- tools::file_ext(file)
    format <- tolower(format)
    ## Here 'format' can be character(0L) or nchar(format) >= 0L
    if (!isTRUE(is.element(format, c("xdr", "rds")))) format <- "xdr"
  }

  if (format == "xdr") {
    # Declare variable
    saveLoadReference <- NULL

    # load.default() recognized gzip'ed files too.
    vars <- base::load(file=file)

    if (!"saveLoadReference" %in% vars)
      throw("The file was not saved by saveObject(): ", file)

    res <- saveLoadReference
  } else if (format == "rds") {
    res <- readRDS(file)
  }

  res
}) # loadObject()



##############################################################################
# HISTORY:
# 2010-11-21
# o ROBUSTNESS: Now loadObject() asserts that the file exists.  If file
#   doesn't exist, an informative error message is thrown.
# 2007-06-09
# o Added explicit "declaration" of 'saveLoadReference'.
# 2007-04-03
# o Moved to R.utils from aroma.affymetrix.
# 2006-11-24
# o Created from Object.R in the R.oo package. This will probably be moved
#   to either R.oo or R.utils later.
##############################################################################
