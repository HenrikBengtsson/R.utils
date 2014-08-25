###########################################################################/**
# @RdocFunction withLocale
#
# @title "Evaluate an R expression with locale set temporarily"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The R expression to be evaluated.}
#   \item{category}{A @character string specifying the category to use.}
#   \item{locale}{@character @vector specifying the locale to used.  The
#    first successfully set one will be used.}
#   \item{...}{Not used.}
#   \item{envir}{The @environment in which the expression should be evaluated.}
# }
#
# \value{
#  Returns the results of the expression evaluated.
# }
#
# @author
#
# @examples "../incl/withLocale.Rex"
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression.
#   and @see "base::Sys.setlocale" to set locale.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withLocale <- function(expr, category, locale, ..., envir=parent.frame()) {
  # Argument '.expr':
  expr <- substitute(expr)

  # Argument 'envir':
  if (!is.environment(envir)) {
    throw("Argument 'envir' is not a list: ", class(envir)[1L])
  }

  # Set locale temporarily (undo afterwards)
  old <- Sys.getlocale(category=category)
  on.exit({
    Sys.setlocale(category=category, locale=old)
  })

  warns <- list()
  success <- FALSE
  for (kk in seq_along(locale)) {
    value <- locale[kk]
    # Same as before? Then nothing to be changed/set
    if (value == old) {
      warns <- list()
      break
    }

    # Try to set
    tryCatch({
      Sys.setlocale(category=category, locale=value)
    }, warning = function(w) {
      warns <<- c(warns, list(w))
    })

    # Successful?
    new <- Sys.getlocale(category=category)
    if (new == value) {
      warns <- list()
      break
    }

    # Otherwise, try the next one
  } # for (kk ...)

  if (length(warns) > 0L) {
    msgs <- sapply(warns, FUN=function(w) w$message)
    msg <- sprintf("Failed to set locale for category %s to either of %s. Reason was: %s", sQuote(category), paste(sQuote(locale), collapse=", "), paste(sQuote(msgs), collapse=", "))
    warning(msg)
  }

  eval(expr, envir=envir)
} # withLocale()


############################################################################
# HISTORY:
# 2014-08-24
# o Created.
############################################################################
