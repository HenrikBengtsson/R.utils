###########################################################################/**
# @RdocDefault toCamelCase
#
# @title "Converts a string of words into a merged camel-cased word"
#
# \description{
#   @get "title", e.g. "a short black" is converted to "aShortBlack".
# }
#
# @synopsis
#
# \arguments{
#  \item{s}{A @character string.}
#  \item{capitalize}{If @TRUE, the first letter will be in upper case,
#    otherwise it will be in lower case.}
#  \item{split}{A pattern used to identify words.  See @see "base::strsplit"
#    for more details.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# \examples{
#   s <- "hello world"
#   print(toCamelCase(s))  # helloWorld
#   stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))
# }
#
# @author
#
# \seealso{
#   @see "R.utils::capitalize" and @see "R.utils::decapitalize".
#   @see "base::chartr".
# }
#
# @keyword programming
# @keyword IO
# @keyword internal
#*/###########################################################################
setMethodS3("toCamelCase", "default", function(s, capitalize=FALSE, split="[ \t]+", ...) {
  s <- strsplit(s, split=split);
  s <- lapply(s, FUN=function(s) {
    s2 <- tolower(s);
    isUpperCase <- (!s %in% s2);
    s2 <- capitalize(s2);
    s2[isUpperCase] <- s[isUpperCase];
    paste(s2, collapse="")
  });
  s <- unlist(s);
  if (!capitalize)
    s <- decapitalize(s);
  s;
}, private=TRUE)

############################################################################
# HISTORY:
# 2007-04-03
# o BUG FIX: toCamelCase(toCamelCase(s)) would not be equal to
#   toCamelCase(s), but instead result in all lower case letters.
# 2007-03-24
# o Moved to R.utils from aroma.affymetrix.
# 2007-01-14
# o Added Rdoc comments.
# 2006-09-15
# o Created. Will probably end up in R.utils some day.
############################################################################
