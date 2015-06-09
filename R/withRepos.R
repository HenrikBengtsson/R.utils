###########################################################################/**
# @RdocFunction withRepos
#
# @title "Evaluate an R expression with repositories set temporarily"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The R expression to be evaluated.}
#   \item{repos}{A @character @vector of repositories to use.}
#   \item{...}{Additional arguments passed to @see "useRepos".}
#   \item{envir}{The @environment in which the expression should be evaluated.}
# }
#
# \value{
#  Returns the results of the expression evaluated.
# }
#
# @author
#
# \examples{\dontrun{
#   # Install from BioC related repositories only
#   withRepos(install.packages("edgeR"), repos="[[BioC]]")
#
#   # Install from CRAN or BioC related repositories only
#   withRepos(install.packages("edgeR"), repos=c("CRAN", "[[BioC]]"))
#
#   # Install from mainstream repositories only (same as previous)
#   withRepos(install.packages("edgeR"), repos="[[mainstream]]")
#
#   # Install from R-Forge and mainstream repositories only
#   withRepos(install.packages("R.utils"), repos="[[R-Forge]]")
#
#   # Update only CRAN packages
#   withRepos(update.packages(ask=FALSE), repos="[[CRAN]]")
#
#   # Update only Bioconductor packages
#   withRepos(update.packages(ask=FALSE), repos="[[BioC]]")
# }}
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression.
#   See also @see "base::options" and @see "utils::install.packages".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withRepos <- function(expr, repos="[[mainstream]]", ..., envir=parent.frame()) {
  # Argument '.expr':
  expr <- substitute(expr)

  # Argument 'envir':
  if (!is.environment(envir))
    throw("Argument 'envir' is not a list: ", class(envir)[1L])

  # Parse and set repositories temporarily
  prev <- useRepos(repos, ...)
  on.exit(useRepos(prev))

  # Evaluate expression
  eval(expr, envir=envir)
} # withOptions()


############################################################################
# HISTORY:
# 2014-05-01
# o Created.
############################################################################
