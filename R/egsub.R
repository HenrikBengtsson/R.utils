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
#   \item{x}{The @expression or a @function to be modified.}
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
      # If expr[[ii]] is "missing", ignore the error.  This
      # happens with for instance expressions like x[,1].
      # FIXME: Is there a better way?!? /HB 2014-05-08
      tryCatch({
        exprI <- expr[[ii]]
        # Nothing to do?
        if (!is.null(exprI)) {
          exprI <- egsub(pattern, replacement, exprI, ..., value=value, envir=envir, inherits=inherits);
          if (!is.null(exprI)) expr[[ii]] <- exprI;
        }
      }, error=function(ex) {})
    }
  }

  # Update the *body* of a function?
  if (is.function(expr)) {
    body(expr) <- egsub(pattern, replacement, body(expr), ..., value=value, envir=envir, inherits=inherits)
  }

  expr
} # egsub()


##############################################################################
# HISTORY:
# 2014-05-17
# o BUG FIX: egsub() would return an invalid expression if the input had
#   definitions of functions without arguments, e.g.
#   egsub("x", "x", substitute(y <- function() 0)) which would throw
#   "Error: badly formed function expression" if deparsed/printed.
# 2014-05-14
# o Now egsub() also works with functions, in case it substitutes on the
#   body of the function.
# 2014-05-08
# o Now skipping missing expressions via tryCatch().
# 2014-05-07
# o Added egsub(), which is gsub() for expression.
# o Created.
##############################################################################
