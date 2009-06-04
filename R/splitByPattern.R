#########################################################################/**
# @RdocDefault splitByPattern
#
# @title "Splits a single character string by pattern"
# 
# \description{
#   @get "title".  The main difference compared to @see "base::strsplit"
#   is that this method also returns the part of the string that matched
#   the pattern. Also, it only takes a single character string.
# }
#
# @synopsis
#
# \arguments{
#  \item{str}{A single @character string to be split.}
#  \item{pattern}{A regular expression @character string.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a named @character @vector with names equal to \code{"TRUE"}
#   if element is a pattern part and \code{"FALSE"} otherwise.
# }
#
# @examples "../incl/splitByPattern.Rex"
#
# @author
#
# \seealso{
#   Compare to @see "base::strsplit".
# }
#
# @keyword programming
#*/######################################################################### 
setMethodS3("splitByPattern", "default",  function(str, pattern, ...) {
  # Argument 'str':
  str <- Arguments$getCharacter(str);

  # Argument 'pattern':
  pattern <- Arguments$getCharacter(pattern);

  parts <- c();
  while(TRUE) {
    pos <- regexpr(pattern, str);
    if (pos == -1)
      break;
    text <- substring(str, first=1, last=pos-1);        # This is allowed!
    lastPos <- pos+attr(pos, "match.length")-1;
    flag <- substring(str, first=pos, last=lastPos);
    str <- substring(str, first=lastPos+1);
    parts <- c(parts, text, flag);
  }
  if (nchar(str) > 0)
    parts <- c(parts, str);

  # Add indicator if a pattern string or not.
  isPattern <- rep(c(FALSE, TRUE), length.out=length(parts));
  names(parts) <- isPattern;

  if (nchar(parts[1]) == 0)
    parts <- parts[-1];

  parts;
}) # splitByPattern()


############################################################################
# HISTORY: 
# 2005-07-27
# o BUG FIX: Used 'Argument' instead of 'Arguments'.
# 2005-07-06
# o Created.
############################################################################

