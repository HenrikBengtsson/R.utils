###########################################################################/**
# @RdocDefault loadToEnv
#
# @title "Method to load objects to a new environment"
#
# \description{
#   @get "title" for objects previously stored by @see "base::save".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @see "base::load".}
# }
#
# \value{
#  Returns an @environment containing all loaded objects.
# }
#
# @author
#
# \seealso{
#   Internally @see "base::load" is used.
#   See also @see "loadObject".
# }
#
# @keyword IO
# @keyword internal
#*/###########################################################################
setMethodS3("loadToEnv", "default", function(...) {
  env <- new.env();
  base::load(..., env=env);
  env;
}, private=TRUE) # loadToEnv()


##############################################################################
# HISTORY:
# 2007-03-24
# o Moved to R.utils from aroma.affymetrix.
# 2006-11-24
# o Created from Object.R in the R.oo package. This will probably be moved
#   to either R.oo or R.utils later.
##############################################################################
