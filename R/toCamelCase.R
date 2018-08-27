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
