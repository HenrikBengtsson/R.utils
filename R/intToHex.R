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
  isna <- is.na(x)
  y <- x[!isna]
  ans0 <- character(length = length(y))

  ## Handle negative values specially; emulates octmode and hexmode
  neg <- which(y < 0)
  if (length(neg) > 0) {
    y[neg] <- y[neg] + 1L + .Machine$integer.max
  }

  z <- NULL
  while (any(y > 0) || is.null(z)) {
    z <- y %% 2
    y <- floor(y / 2)
    ans0 <- paste(z, ans0, sep = "")
  }
  
  ans <- rep(NA_character_, times = length(x))
  ans[!isna] <- ans0
  ans
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
#  \item{x}{A @numeric vector of integers to be converted.}
# }
#
# \value{
# Returns a @character string of length \code{length(x)}.
# For coercions out of range, \code{NA_character_} is returned for
# such elements.
# }
#
# \details{
#  For \code{length(x)} > 1, the number of characters in each of returned
#  elements is the same and driven by the \code{x} element that requires
#  the highest number of character - all other elements are padded with
#  zeros (or ones for negative values).  This is why we for instance get
#  \code{intToHex(15) == "f"} but \code{intToHex(15:16) == c("0f", "10")}.
#
#  The supported range for \code{intToHex()}, \code{intToOct()}, and
#  \code{intToBin()} is that of \R integers, i.e.
#  \code{[-.Machine$integer.max, +.Machine$integer.max]} where.
#  \code{.Machine$integer.max} is \eqn{2^31-1}.
#  This limitation is there such that negative values can be converted too.
# }
#
# @author
#
# @keyword manip
# @keyword character
# @keyword programming
#*/########################################################################
intToBin <- function(x) {
  y <- as.integer(x)
  class(y) <- "binmode"
  y <- as.character(y)
  dim(y) <- dim(x)
  y
}

intToHex <- function(x) {
  y <- as.integer(x)
  class(y) <- "hexmode"
  y <- format(y)
  dim(y) <- dim(x)
  y
}

intToOct <- function(x) {
  y <- as.integer(x)
  class(y) <- "octmode"
  y <- format(y)
  dim(y) <- dim(x)
  y
}
