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
#   \item{envir}{The @environment to load the objects to.}
# }
#
# \value{
#  Returns @environment \code{envir} containing all loaded objects.
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
setMethodS3("loadToEnv", "default", function(file, ..., envir = new.env()) {
  tryCatch({
    base::load(file = file, envir = envir, ...)
  }, error = function(ex) {
    if (is.character(file)) {
      msg <- sprintf("Failed to load file %s.", sQuote(file))
    } else {
      msg <- sprintf("Failed to load from %s.", sQuote(class(file)[1]))
    }
    msg <- sprintf("%s The reason was: %s", msg, conditionMessage(ex))
    throw(msg)
  })
  envir
}, private=TRUE) # loadToEnv()
