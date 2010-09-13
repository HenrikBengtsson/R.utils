#########################################################################/**
# @RdocDefault capitalize
# @alias decapitalize
# @alias decapitalize.default
#
# @title "Capitalizes/decapitalizes each character string in a vector"
#
# \description{
#  Capitalizes/decapitalized (making the first letter upper/lower case) of
#  each character string in a vector.
# }
#
# \usage{
#   \method{capitalize}{default}(str, ...)
#   \method{decapitalize}{default}(str, ...)
# }
#
# \arguments{
#   \item{str}{A @vector of @character strings to be capitalized.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of @character strings of the same length as the input
#   vector.
# }
#
# @author
#
# \examples{
#   words <- strsplit("Hello wOrld", " ")[[1]];
#   cat(paste(toupper(words), collapse=" "), "\n")      # "HELLO WORLD"
#   cat(paste(tolower(words), collapse=" "), "\n")      # "hello world"
#   cat(paste(capitalize(words), collapse=" "), "\n")   # "Hello WOrld"
#   cat(paste(decapitalize(words), collapse=" "), "\n") # "hello wOrld"
# }
#
# \seealso{
#   @see "R.utils::toCamelCase".
# }
#
# @keyword "programming"
#*/#########################################################################
setMethodS3("capitalize", "default", function(str, ...) {
  first <- substring(str,1,1);
  tail  <- substring(str,2);
  first <- toupper(first);
  paste(first, tail, sep="");
})

setMethodS3("decapitalize", "default", function(str, ...) {
  first <- substring(str,1,1);
  tail  <- substring(str,2);
  first <- tolower(first);
  paste(first, tail, sep="");
})


############################################################################
# HISTORY:
# 2005-02-20
# o Now using setMethodS3() and added '...' to please R CMD check.
# 2003-01-07
# * Created. Initially used by R.io::HTMLReporter.
############################################################################
