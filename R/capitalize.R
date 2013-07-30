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
#   @usage capitalize,default
#   @usage decapitalize,default
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
# @examples "../incl/capitalize.Rex"
#
# \seealso{
#   @see "R.utils::toCamelCase".
# }
#
# @keyword "programming"
#*/#########################################################################
setMethodS3("capitalize", "default", function(str, ...) {
  # Nothing to do?
  n <- length(str);
  if (n == 0L) {
    return(str);
  }

  # Missing values?
  nas <- is.na(str);
  idxs <- which(nas);
  # All missing values? => nothing to do.
  if (length(idxs) == n) {
    return(str);
  }

  # Allocate result
  res <- character(length=n);

  # Preserve missing values
  if (length(idxs) > 0L) {
    res[idxs] <- NA_character_;
  }

  # Capitilize
  idxs <- which(!nas);
  if (length(idxs) > 0L) {
    t <- str[idxs];
    first <- substring(t, first=1L, last=1L);
    tail  <- substring(t, first=2L);
    first <- toupper(first);
    res[idxs] <- paste(first, tail, sep="");
  }

  res;
})

setMethodS3("decapitalize", "default", function(str, ...) {
  # Nothing to do?
  n <- length(str);
  if (n == 0L) {
    return(str);
  }

  # Missing values?
  nas <- is.na(str);
  idxs <- which(nas);
  # All missing values? => nothing to do.
  if (length(idxs) == n) {
    return(str);
  }

  # Allocate result
  res <- character(length=n);

  # Preserve missing values
  if (length(idxs) > 0L) {
    res[idxs] <- NA_character_;
  }


  # Decapitilize
  idxs <- which(!nas);
  if (length(idxs) > 0L) {
    t <- str[idxs];
    first <- substring(t, first=1L, last=1L);
    tail  <- substring(t, first=2L);
    first <- tolower(first);
    res[idxs] <- paste(first, tail, sep="");
  }

  res;
})


############################################################################
# HISTORY:
# 2013-04-15
# o BUG FIX: capitalize()/decapitalize() would return "NANA" for missing
#   values.
# 2005-02-20
# o Now using setMethodS3() and added '...' to please R CMD check.
# 2003-01-07
# * Created. Initially used by R.io::HTMLReporter.
############################################################################
