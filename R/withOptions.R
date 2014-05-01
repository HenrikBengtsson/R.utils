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
#   \item{expr}{The R expression to be evaluated via @see "base::eval".}
#   \item{...}{Named options to be used.}
#   \item{args}{(optional) Additional named options specified as a named @list.}
#   \item{envir}{The @environment in which the expression should be evaluated.}
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
#   @see "base::options"
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withOptions <- function(expr, ..., args=list(), envir=parent.frame()) {
  # Argument '.expr':
  expr <- substitute(expr)

  # Arguments '...':
  opts <- list(...)

  # Argument 'args':
  if (!is.list(args)) {
    throw("Argument 'args' is not a list: ", class(args)[1L])
  }

  # Argument 'envir':
  if (!is.environment(envir)) {
    throw("Argument 'envir' is not a list: ", class(envir)[1L])
  }

  # All options specified
  opts <- c(opts, args)

  # Set options temporarily
  if (length(opts) > 0L) {
    oopts <- options(opts)
    on.exit(options(oopts))
  }

  eval(expr, envir=envir)
} # withOptions()


############################################################################
# HISTORY:
# 2014-05-01
# o Created.
############################################################################
