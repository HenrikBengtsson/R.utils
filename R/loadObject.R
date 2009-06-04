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
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns the save object.
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
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setMethodS3("loadObject", "default", function(file, path=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'file':
  if (!inherits(file, "connection")) {
    file <- filePath(path, file, expandLinks="any");
  }

  # Declare variable
  saveLoadReference <- NULL;
 
  # load.default() recognized gzip'ed files too.
  vars <- base::load(file=file);

  if (!"saveLoadReference" %in% vars)
    throw("The file was not save by saveObject(): ", file);

  saveLoadReference;
}) # loadObject()



##############################################################################
# HISTORY:
# 2007-06-09
# o Added explicit "declaration" of 'saveLoadReference'.
# 2007-04-03
# o Moved to R.utils from aroma.affymetrix.
# 2006-11-24
# o Created from Object.R in the R.oo package. This will probably be moved
#   to either R.oo or R.utils later.
##############################################################################
