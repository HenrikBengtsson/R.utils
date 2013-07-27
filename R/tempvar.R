###########################################################################/**
# @RdocFunction tempvar
#
# @title "Gets a unique non-existing temporary variable name"
#
# \description{
#  @get "title" and optionally assigns it an initial value.
# }
#
# @synopsis
#
# \arguments{
#   \item{prefix}{A @character string specifying the prefix of the
#     temporary variable name.}
#   \item{value}{(optional) If given, a variable with the temporary
#     name is assigned this value.}
#   \item{envir}{An @environment where the variable should exist.}
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
  maxTries <- 1e6;
  maxInt <- .Machine$integer.max;

  ii <- 0L;
  while (ii < maxTries) {
    # Generate random variable name
    idx <- sample.int(maxInt, size=1L);
    name <- sprintf("%s%d", prefix, idx);

    # Is it available?
    if (!exists(name, envir=envir, inherits=inherits)) {
      # Assign a value?
      if (!missing(value)) {
        assign(name, value, envir=envir, inherits=inherits);
      }
      return(name);
    }

    # Next try
    ii <- ii + 1L;
  }

  # Failed to find a unique temporary variable name
  throw(sprintf("Failed to generate a unique non-existing temporary variable with prefix '%s'", prefix));
} # tempvar()


##############################################################################
# HISTORY:
# 2013-07-27
# o Added default value for argument 'prefix' so that tempvar() works
#   out of the box.
# 2013-07-18
# o Added tempvar(). One day it will end up in R.utils.
# o Created.
##############################################################################
