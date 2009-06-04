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
#  \item{compress}{If @TRUE, the file is compressed to, otherwise not.}
#  \item{...}{Other arguments accepted by \code{save()} in the base package.}
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
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setMethodS3("saveObject", "default", function(object, file=NULL, path=NULL, compress=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'file':
  if (is.null(file)) {
    require("digest") || throw("Package not loaded: digest");
    file <- digest::digest(as.list(object));  # Might be slow.
    file <- sprintf("%s.xdr", file);
  } 
  if (!inherits(file, "connection")) {
    file <- filePath(path, file, expandLinks="any");
  }

  saveLoadReference <- object;
  base::save(saveLoadReference, file=file, ..., compress=compress, ascii=FALSE);

  invisible(file);
}) # saveObject()



##############################################################################
# HISTORY:
# 2007-06-09
# o Replaced digest() with digest::digest().
# 2007-04-03
# o Moved to R.utils from aroma.affymetrix.
# 2006-11-24
# o Created from Object.R in the R.oo package. This will probably be moved
#   to either R.oo or R.utils later.
##############################################################################
