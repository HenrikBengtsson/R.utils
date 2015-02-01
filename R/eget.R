###########################################################################/**
# @RdocFunction eget
# @alias ecget
#
# @title "Gets a variable by name"
#
# \description{
#  @get "title".  If non-existing, the default value is returned.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Named arguments \code{name} and \code{default}, where
#     \code{name} must be a @character string and \code{default} is
#     an optional default value (if not given, it's @NULL).
#     Alternatively, \code{name} and \code{default} can be given as
#     a named argument (e.g. \code{n=42}).}
#   \item{coerce}{If @TRUE, the returned value is coerced to the class
#     of the default value (unless @NULL) using @see "methods::as".}
#   \item{envir}{A @environment or a named @list where to look
#     for the variable.  Only if \code{envir} is an @environment.}
#   \item{inherits}{A @logical specifying whether the enclosing frames
#     of the environment should be searched or not.}
#   \item{mode}{A @character string specifying the mode of the object to
#     retrieve.  Only if \code{envir} is an @environment.}
#   \item{cmdArg}{If @TRUE, the corresponding command-line argument
#     is used as the default value.}
# }
#
# \value{
#   Returns an object.
# }
#
# \details{
#   \code{ecget(...)} is short for \code{eget(..., cmdArg=TRUE)}.
# }
#
# @examples "../incl/eget.Rex"
#
# @author
#
# \seealso{
#   To retrieve command-line arguments, see @see "R.utils::cmdArg".
#   See also @see "base::mget".
# }
#
# @keyword file
# @keyword IO
# @keyword internal
#*/###########################################################################
eget <- function(..., coerce=TRUE, envir=parent.frame(), inherits=FALSE, mode="default", cmdArg=FALSE) {
  # Argument '...' => (name, default, ...)
  pargs <- .parseArgs(list(...), defaults=alist(name=, default=NULL));

  # Special short format, e.g. eget(n=42)?
  args <- pargs$args;

  if (!is.element("name", names(args))) {
    argsT <- pargs$namedArgs;
    if (length(argsT) == 0L) {
      stop("Argument 'name' is missing (or NULL).");
    }
    args$name <- names(argsT)[1L];
    default <- argsT[[1L]];
    args$default <- default;
    argsT <- argsT[-1L];
    pargs$args <- args;
    pargs$namedArgs <- argsT;
  }
  args <- Reduce(c, pargs);

  # Argument 'name':
  name <- as.character(args$name);
  stopifnot(length(name) == 1L);

  # Argument 'default':
  default <- args$default;

  # Set default according to corresponding command-line argument?
  if (cmdArg) {
    defaultT <- cmdArg(...);
    if (!is.null(defaultT)) default <- defaultT;
  }

  # Argument 'envir':
  if (is.list(envir)) {
  } else {
    envir <- as.environment(envir);
    stopifnot(is.environment(envir));
  }


  # Retrieve the variable, if available.
  value <- default;
  if (is.list(envir)) {
    if (is.element(name, names(envir))) {
      value <- envir[[name]];
    }
  } else {
    if (mode == "default") {
      mode <- mode(value)
      if (mode == "NULL") mode <- "any"
    }
    if (exists(name, mode=mode, envir=envir, inherits=inherits)) {
      value <- get(name, mode=mode, envir=envir, inherits=inherits);
    }
  }

  # Coerce?
  if (coerce) {
    if (!identical(value, default) && !is.null(default)) {
      value <- as(value, Class=class(default)[1L]);
    }
  }

  value
} # eget()


ecget <- function(..., envir=parent.frame()) {
  eget(..., envir=envir, cmdArg=TRUE);
} # ecget()


############################################################################
# HISTORY:
# 2015-01-31
# o Now eget() uses inherits=FALSE (was TRUE) and mode="default"
#   (was "any"), where "default" corresponds to the mode of argument
#   'default', unless it's NULL when mode="any" is used.
# 2014-01-27
# o BUG FIX: Although eget(K=2, cmdArgs=TRUE) would command-line argument
#   'K=1' as the default (instead of K=2), eget("K", 2, cmdArgs=TRUE)
#   would not.
# 2013-03-20
# o Created.
############################################################################
