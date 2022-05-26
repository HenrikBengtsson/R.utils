###########################################################################/**
# @RdocFunction tempvar
#
# @title "Gets a unique non-existing temporary variable name"
#
# \description{
#  @get "title", and optionally assigns it an initial value.
# }
#
# @synopsis
#
# \arguments{
#   \item{prefix}{A @character string specifying the prefix of the
#     temporary variable name.}
#   \item{value}{(optional) If given, a variable with the temporary
#     name is assigned this value.  Only works if \code{envir} is an
#     environment.}
#   \item{envir}{An @environment, a named @list, or a named @data.frame,
#     whose elements the temporary variable should not clash with.}
#   \item{inherits}{A @logical specifying whether the enclosing frames
#     of the environment should be searched or not.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# @examples "../incl/tempvar.Rex"
#
# @author
#
# \seealso{
#  @see "base::tempfile" and @see "base::assign".
# }
#
# @keyword programming
# @keyword internal
#*/###########################################################################
tempvar <- function(prefix="var", value, envir=parent.frame(), inherits=FALSE) {
  maxTries <- 1e6
  maxInt <- .Machine$integer.max

  isEnv <- is.environment(envir)
  if (!isEnv) {
    names <- names(envir)
    if (is.null(names)) {
      stop("Argument 'envir' specifies an object without names attributes: ", mode(envir))
    }
    if (!missing(value)) {
      stop("Can only assign a value to a temporary variables in an environment: ", mode(envir))
    }
  }

  ii <- 0L
  while (ii < maxTries) {
    # Generate random variable name
    idx <- sample.int(maxInt, size=1L)
    name <- sprintf("%s%d", prefix, idx)

    # Is it available?
    if (isEnv) {
      if (!exists(name, envir=envir, inherits=inherits)) {
        # Assign a value?
        if (!missing(value)) {
          assign(name, value, envir=envir, inherits=inherits)
        }
        return(name)
      }
    } else {
      if (!is.element(name, names)) {
        return(name)
      }
    }

    # Next try
    ii <- ii + 1L
  }

  # Failed to find a unique temporary variable name
  throw(sprintf("Failed to generate a unique non-existing temporary variable with prefix '%s'", prefix))
} # tempvar()
