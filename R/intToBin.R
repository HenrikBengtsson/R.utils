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
#  \item{x}{An @integer to be converted.}
# }
#
# \value{
#  Returns a @character.
# }
#
# @author
#
# @keyword manip
# @keyword character
# @keyword programming
#*/########################################################################
intToBin <- function(x) {
  y <- as.integer(x);
  class(y) <- "binmode";
  y <- as.character(y);
  dim(y) <- dim(x);
  y;
}


############################################################################
# HISTORY:
# 2008-07-03
# o Removed documentation for as.character() for 'hexmode' since it is
#   now in the 'base' package.
# 2005-02-20
# o Now using setMethodS3() and added '...' to please R CMD check.
# 2004-10-18
# o Added Rdoc comments.
# 2002-07-18
# o Created from intToOct.R.
############################################################################
