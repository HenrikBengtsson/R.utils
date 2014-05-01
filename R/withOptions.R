###########################################################################/**
# @RdocFunction withOptions
#
# @title "Evaluate an R expression with options set temporarily"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The R expression to be evaluated.}
#   \item{...}{Named options to be used.}
#   \item{args}{(optional) Additional named options specified as a named @list.}
#   \item{envir}{The @environment in which the expression should be evaluated.}
#   \item{isParseTree}{If @TRUE, then argument \code{expr} is not parsed
#      (via @see "base::substitute"), otherwise it is.}
# }
#
# \value{
#  Returns the results of the expression evaluated.
# }
#
# @author
#
# @examples "../incl/withOptions.Rex"
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression.
#   and @see "base::options" to set graphical parameters.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withOptions <- function(expr, ..., args=list(), envir=parent.frame(), isParseTree=FALSE) {
  # Argument '.expr':
  if (!isParseTree) expr <- substitute(expr)

  # Argument 'args':
  if (!is.list(args)) {
    throw("Argument 'args' is not a list: ", class(args)[1L])
  }

  # Argument 'envir':
  if (!is.environment(envir)) {
    throw("Argument 'envir' is not a list: ", class(envir)[1L])
  }

  # All options specified
  new <- c(list(...), args)

  # Set options temporarily
  if (length(new) > 0L) {
    prev <- options(new)
    on.exit(options(prev))
  }

  eval(expr, envir=envir)
} # withOptions()


############################################################################
# HISTORY:
# 2014-05-01
# o Created.
############################################################################
