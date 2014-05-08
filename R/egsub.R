###########################################################################/**
# @RdocFunction egsub
#
# @title "Global substitute of expression using regular expressions"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pattern}{A @character string with the regular expression to be
#      matched, cf. @see "base::gsub".}
#   \item{replacement}{A @character string of the replacement to use
#      when there is a match, cf. @see "base::gsub".}
#   \item{x}{The @expression to be modified.}
#   \item{...}{Additional arguments passed to @see "base::gsub"}
#   \item{value}{If @TRUE, the value of the replacement itself is used
#      to look up a variable with that name and then using that variables
#      value as the replacement.  Otherwise the replacement value is used.}
#   \item{envir, inherits}{An @environment from where to find the variable
#      and whether the search should also include enclosing frames, cf.
#      @see "base::get".  Only use if \code{value} is @TRUE.}
# }
#
# \value{
#   Returns an @expression.
# }
#
# @examples "../incl/egsub.Rex"
#
# @author
#
# @keyword utilities
# @keyword programming
#*/###########################################################################
egsub <- function(pattern, replacement, x, ..., value=TRUE, envir=parent.frame(), inherits=TRUE) {
  expr <- x;

  # Substitute?
  if (is.symbol(expr)) {
    code <- as.character(expr);
    if (regexpr(pattern, code, ...) != -1L) {
      name <- sub(pattern, replacement, code, ...);

      # Substitute with the *value* of a variable, or a variable?
      if (value) {
        expr <- get(name, envir=envir, inherits=inherits);
      } else {
        expr <- as.symbol(name);
      }
    }
    return(expr)
  }

  # Iterate?
  if (is.language(expr)) {
    for (ii in seq_along(expr)) {
      expr[[ii]] <- egsub(pattern, replacement, expr[[ii]], ..., value=value);
    }
  }

  expr
} # egsub()


##############################################################################
# HISTORY:
# 2014-05-06
# o Added egsub(), which is gsub() for expression.
# o Created.
##############################################################################
