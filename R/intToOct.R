intToOct <- function(x) {
  y <- as.integer(x);
  class(y) <- "octmode";
  y <- as.character(y);
  dim(y) <- dim(x);
  y;
}

############################################################################
# HISTORY:
# 2004-10-18
# o Removed as.character.octmode(), because it already exists in R.
# 2002-07-18
# o Removed the class check in as.character.octmode() because it is useful
#   to be able to call it anyway.
# 2002-07-08
# o BUG FIX: intToOct(0) gave "". Problem was in as.character.octmode().
# 2002-05-31
# o intToX() now returns the result with same dimensions as the input.
# 2002-04-07
# o Created.
############################################################################
