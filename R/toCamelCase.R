###########################################################################/**
# @RdocDefault toCamelCase
#
# @title "Converts a string of words into a merged camel-cased word"
#
# \description{
#   @get "title", e.g. "a single espresso" is converted to "aSingleEspresso".
# }
#
# @synopsis
#
# \arguments{
#  \item{s}{A @character @vector.}
#  \item{capitalize}{If @TRUE, the first letter will be in upper case,
#    otherwise it will be in lower case.}
#  \item{preserveSameCase}{If @TRUE, words that are in all upper case
#    will remain as all same case words, e.g. acronyms.}
#  \item{split}{A pattern used to identify words.  See @see "base::strsplit"
#    for more details.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character @vector.
# }
#
# @examples "../incl/toCamelCase.Rex"
#
# @author
#
# \seealso{
#   @see "R.utils::capitalize".
#   @see "base::chartr".
# }
#
# @keyword programming
# @keyword IO
# @keyword internal
#*/###########################################################################
setMethodS3("toCamelCase", "default", function(s, capitalize=FALSE, preserveSameCase=FALSE, split="[ \t]+", ...) {
  # Argument 's':
  s <- as.character(s)

  # Nothing to do?
  if (length(s) == 0L) return(s)
  if (length(s) == 1L && (is.na(s) || nchar(s) == 0L)) return(s)

  # Split a single string
  ns <- nchar(s)
  s <- strsplit(s, split=split)
  s[ns == 0] <- ""

  if (preserveSameCase) {
    s <- lapply(s, FUN=function(s) {
      # Nothing to do?
      if (length(s) == 0L || is.na(s)) return(s)

      # (a) Don't change case on all-upper case words
      sU <- toupper(s)
      isAllUpperCase <- is.element(s, sU)

      # (b) but for all others...
      s2 <- s[!isAllUpperCase]
      sL <- tolower(s2)
      isUpperCase <- (!is.element(s2, sL))
      s3 <- capitalize(sL)
      s3[isUpperCase] <- s2[isUpperCase]

      s[!isAllUpperCase] <- s3

      if (!capitalize) {
        if (!isAllUpperCase[1]) {
          s[1] <- decapitalize(s[1])
        } else {
          s[1] <- tolower(s[1])
        }
      }

      paste(s, collapse="")
    })
    s <- unlist(s)
  } else {
    s <- lapply(s, FUN=function(s) {
      if (length(s) == 0L || is.na(s)) return(s)

      s2 <- tolower(s)
      isUpperCase <- (!s %in% s2)
      s2 <- capitalize(s2)
      s2[isUpperCase] <- s[isUpperCase]
      paste(s2, collapse="")
    })
    s <- unlist(s)

    if (!capitalize) {
      s <- decapitalize(s)
    }
  }

  s
}, private=TRUE)

############################################################################
# HISTORY:
# 2015-01-12
# o BUG FIX: toCamelCase("", preserveSameCase=TRUE) would give an error.
# 2014-04-06
# o BUG FIX: toCamelCase(character(0L)) gave an error.
# 2012-09-21
# o Made the below 2011-12-05 modification available via argument
#   'preserveSameCase'.
# 2011-12-05 (only internally)
# o Now toCamelCase() makes all-upper-case words into same-case words,
#   e.g. toCamelCase("HTML View") == "htmlView" (not "hTMLView").
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
