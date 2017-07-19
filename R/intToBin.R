########################################################################/**
# @RdocFunction as.character.binmode
#
# @title "Converts a binary/octal/hexadecimal number into a string"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage as.character,binmode
# }
#
# \arguments{
#  \item{x}{Object to be converted.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character.
# }
#
# @author
#
# \seealso{
#   \code{as.character.octmode()}, cf. @see "base::octmode".
#   @see "intToBin" (incl. \code{intToOct()} and \code{intToHex()}).
# }
#
# @keyword manip
# @keyword character
# @keyword programming
#*/########################################################################
setMethodS3("as.character", "binmode", function(x, ...) {
  isna <- is.na(x);
  y <- x[!isna];
  ans0 <- character(length(y));
  z <- NULL;
  while (any(y > 0) | is.null(z)) {
    z <- y%%2;
    y <- floor(y/2);
    ans0 <- paste(z, ans0, sep = "");
  }
  ans <- rep(as.character(NA), length(x));
  ans[!isna] <- ans0;
  ans;
})




########################################################################/**
# @RdocFunction intToBin
# @alias intToOct
# @alias intToHex
#
# @title "Converts an integer to a binary/octal/hexadecimal number"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  intToBin(x)
#  intToOct(x)
#  intToHex(x)
# }
#
# \arguments{
#  \item{x}{An @numeric integer to be converted.
#  For \code{intToHex()} and \code{intToOct()} the supported range is that of
#  \R integers, i.e. \code{[-.Machine$integer.max, +.Machine$integer.max]}.
#  For \code{intToBin()} the supported range is that of all numeric integers.}
# }
#
# \value{
# Returns a @character.  For invalid coercions, or coercions out of range,
# value @NA_character_ is returned.
# }
#
# @author
#
# @keyword manip
# @keyword character
# @keyword programming
#*/########################################################################
intToBin <- function(x) {
  y <- as.numeric(x)
  class(y) <- "binmode"
  y <- as.character(y)
  dim(y) <- dim(x)
  y
}
