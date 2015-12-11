###########################################################################/**
# @RdocDefault saveObject
#
# @title "Saves an object to a file or a connection"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{object}{The object to be saved.}
#  \item{file}{A filename or @connection where the object should be saved.
#    If @NULL, the filename will be the hash code of the object plus ".xdr".}
#  \item{path}{Optional path, if \code{file} is a filename.}
#  \item{format}{File format.}
#  \item{compress}{If @TRUE, the file is compressed to, otherwise not.}
#  \item{...}{Other arguments accepted by \code{save()} in the base package.}
#  \item{safe}{If @TRUE and \code{file} is a file, then, in order to lower
#    the risk for incomplete files, the object is first written to a
#    temporary file, which is then renamed to the final name.}
# }
#
# \value{
#  Returns (invisibly) the pathname or the @connection.
# }
#
# @author
#
# \seealso{
#   @see "loadObject" to load an object from file.
#   @see "digest::digest" for how hash codes are calculated from an object.
#   See also @see "base::saveRDS".
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setMethodS3("saveObject", "default", function(object, file=NULL, path=NULL, format=c("auto", "xdr", "rds"), compress=TRUE, ..., safe=TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'format':
  format <- match.arg(format)

  # Infer 'format' from filename extension?  Default is "xdr"
  if (format == "auto") {
    format <- tools::file_ext(file)
    format <- tolower(format)
    ## Here 'format' can be character(0L) or nchar(format) >= 0L
    if (!isTRUE(is.element(format, c("xdr", "rds")))) format <- "xdr"
  }

  # Argument 'file':
  if (is.null(file)) {
    requireNamespace("digest") || throw("Package not loaded: digest")
    file <- digest::digest(as.list(object))  # Might be slow.
    file <- sprintf("%s.%s", file, format)
  }

  saveToFile <- (!inherits(file, "connection"))
  if (saveToFile) {
    file <- filePath(path, file, expandLinks="any")
  }

  # Write to a temporary file?
  if (safe && saveToFile) {
    # Final pathname
    pathname <- file
    # Temporary pathname
    pathnameT <- sprintf("%s.tmp", pathname)
    if (file.exists(pathnameT)) {
      throw("Cannot save to file. Temporary file already exists: ", pathnameT)
    }
    # Write to a temporary file
    file <- pathnameT
    on.exit({
      if (!is.null(pathnameT) && file.exists(pathnameT)) {
        file.remove(pathnameT)
      }
    }, add=TRUE)
  }


  if (format == "xdr") {
    saveLoadReference <- object
    base::save(saveLoadReference, file=file, ..., compress=compress, ascii=FALSE)
  } else if (format == "rds") {
    saveRDS(object, file=file, ascii=FALSE, compress=compress, ...)
  }


  # Rename temporary file?
  if (safe && saveToFile) {
    file.rename(pathnameT, pathname)
    if (!file.exists(pathname) || file.exists(pathnameT)) {
      throw("Failed to rename temporary file: ", pathnameT, " -> ", pathname)
    }
    pathnameT <- NULL
    file <- pathname
  }

  invisible(file)
}) # saveObject()



##############################################################################
# HISTORY:
# 2009-10-30
# o ROBUSTIFICATION: Added argument 'safe=TRUE' to saveObject().
# 2007-06-09
# o Replaced digest() with digest::digest().
# 2007-04-03
# o Moved to R.utils from aroma.affymetrix.
# 2006-11-24
# o Created from Object.R in the R.oo package. This will probably be moved
#   to either R.oo or R.utils later.
##############################################################################
