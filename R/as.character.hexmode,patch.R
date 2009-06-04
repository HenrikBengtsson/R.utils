.patchAsCharacterHexMode <- function(...) {
  if (!exists("as.character.hexmode", mode="function")) {
    setMethodS3("as.character", "hexmode", function(x, ...) {
      hexDigit <- c(0:9, "A", "B", "C", "D", "E", "F")
      isna <- is.na(x)
      y <- x[!isna]
      ans0 <- character(length(y))
      z <- NULL
      while (any(y > 0) | is.null(z)) {
        z <- y%%16
        y <- floor(y/16)
        ans0 <- paste(hexDigit[z + 1], ans0, sep = "")
      }
      ans <- rep(NA, length(x))
      ans[!isna] <- ans0
      ans
    })
  }
} # .patchAsCharacterHexMode()


############################################################################
# HISTORY:
# 2008-07-03
# o .patchAsCharacterHexMode() is now called by .First.lib().
# o If as.character.hexmode() already exists, nothing is done.
# 2006-02-09
# o as.character.hexmode() is available in R v2.3.0 and forward.  Thus,
#   the method is only added by this package for pre-R v2.3.0.
# 2005-02-20
# o Now using setMethodS3() and added '...' to please R CMD check.
# 2002-07-08
# * BUG FIX: intToHex(0) gave "". Problem was in as.character.hexmode().
# 2002-05-31
# * intToX() now returns the result with same dimensions as the input.
# 2002-04-13
# * Created from intToOct() and as.character.octmode().
############################################################################
