###########################################################################/**
# @RdocFunction withSeed
#
# @title "Evaluate an R expression with a temporarily set random set"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The R expression to be evaluated.}
#   \item{seed, ...}{Arguments passed to @see "base::set.seed".}
#   \item{substitute}{If @TRUE, argument \code{expr} is
#    \code{\link[base]{substitute}()}:ed, otherwise not.}
#   \item{envir}{The @environment in which the expression should be evaluated.}
# }
#
# \value{
#  Returns the results of the expression evaluated.
# }
#
# \details{
#   Upon exit (also on errors), this function will restore
#   @see "base::.Random.seed" in the global environment to the value
#   it had upon entry.  If it did not exist, it will be removed.
# }
#
# @author
#
# @examples "../incl/withSeed.Rex"
#
# \seealso{
#   Internally, @see "base::set.seed" is used to set the random seed.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withSeed <- local({
  if (getRversion() < "3.0.0") {
    set.seed <- function(seed, ...) {
      ## Re-initialize the RNG state?
      if (is.null(seed)) {
        if (exists(".Random.seed", envir=globalenv(), inherits=FALSE)) {
          rm(list=".Random.seed", envir=globalenv(), inherits=FALSE)
        }
        sample.int(1L)
        return(invisible())
      }
      base::set.seed(seed=seed, ...)
    }
  }

  function(expr, seed, ..., substitute=TRUE, envir=parent.frame()) {
    # Argument 'expr':
    if (substitute) expr <- substitute(expr)
  
    # Argument 'envir':
    if (!is.environment(envir))
      throw("Argument 'envir' is not a list: ", class(envir)[1L])
  
  
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Record entry seed
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    env <- globalenv()
    oseed <- env$.Random.seed
    # Restore on exit
    on.exit({
      if (is.null(oseed)) {
        rm(list=".Random.seed", envir=env, inherits=FALSE)
      } else {
        assign(".Random.seed", value=oseed, envir=env, inherits=FALSE)
      }
    })
  
  
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Set temporary seed
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    set.seed(seed=seed, ...)
    
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Evaluate expression
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    eval(expr, envir=envir)
  } # withSeed()
})
