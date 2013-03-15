#########################################################################/**
# @RdocFunction cmdArgs
# @alias cmdArg
#
# @title "Simple access to parsed command-line arguments"
#
# \usage{
#   cmdArgs(@eval "t<-formals(R.utils::cmdArgs);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")
#   cmdArg(@eval "t<-formals(R.utils::cmdArg);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")
# }
#
# \description{
#  Retrives
# }
#
# \arguments{
#   \item{args}{A named @list of arguments.}
#   \item{names}{A @character @vector specifying the arguments to be 
#     returned.  If @NULL, all arguments are returned.}
#   \item{...}{Additional arguments passed to @see "commandArgs", 
#     e.g. \code{defaults} and \code{always}.}
#   \item{.args}{(advanced/internal) A named @list of parsed 
#     command-line arguments.}
#   \item{name}{The name of an argument to retrive.}
#   \item{default}{The default value to return if command-line argument
#     does not exist.}
# }
#
# \value{
#   \code{cmdArgs()} returns a named @list with command-line arguments.
#   \code{cmdArg()} return the value of the requested command-line argument.
# }
#
# \section{Coercing to non-character data types}{
#   The value of each command-line argument is returned as a @character
#   string, unless an argument share name with ditto in the (optional)
#   arguments \code{always} and \code{default} in case the retrieved 
#   value is coerced to that of the latter.
#   Finally, remaining character string command-line arguments are 
#   coerced to @numerics (via @see "base::as.numeric"), if possible,
#   that is unless the coerced value becomes @NA.
# }
#
# @author
#
# @examples "../incl/cmdArgs.Rex"
#
# \seealso{
#   Internally, @see "commandArgs" is used.
# }
#
# @keyword "programming"
#*/#########################################################################
cmdArgs <- function(args=NULL, names=NULL, ..., .args=NULL) {
  # Argument 'args':
  if (identical(args, "*")) args <- list("*");
  if (!is.null(args)) {
    if (!is.list(args)) {
      throw("Argument 'args' must be a character vector, a list or NULL: ", class(args)[1L]);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Default call?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(args)) {
    res <- commandArgs(asValues=TRUE, adhoc=TRUE, unique=TRUE, 
                       excludeReserved=TRUE, ..., .args=.args);
    res <- res[-1L];
    if (!is.null(names)) {
      res <- res[names];
    }
    return(res);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Split 'args' into 'defaults', 'args', and 'always'
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Find the asterisk ('*')
  if (length(args) == 0L) {
    idxA <- integer(0L);
  } else {
    idxA <- which(sapply(args, FUN=identical, "*"));
    # Use only first asterisk if more than one is used
    if (length(idxA) > 1L) {
      excl <- idxA[-1L];
      args <- args[excl];
      idxA <- idxA[1L];
    }
  }

  # None?
  if (length(idxA) == 0L) {
    defaults <- NULL;
    always <- args;
    args <- character(0L);
  } else {
    n <- length(args); # Here n >= 1
    idxsD <- if (idxA == 1L) integer(0L) else 1:(idxA-1L);
    idxsF <- if (idxA == n)  integer(0L) else (idxA+1L):n;
    defaults <- args[idxsD];
    always <- args[idxsF];
    args <- .args;
  }

  res <- commandArgs(asValues=TRUE, defaults=defaults, always=always,
      adhoc=TRUE, unique=TRUE, excludeReserved=TRUE, .args=args, ...);
  if (is.null(args)) {
    res <- res[-1L];
  }
  if (!is.null(names)) {
    res <- res[names];
  }

  res;
} # cmdArgs()

cmdArg <- function(name, default=NULL, ...) {
  # Argument 'name':
  name <- as.character(name);
  stopifnot(length(name) == 1L);

  defaults <- list(default);
  names(defaults) <- name;

  res <- cmdArgs(..., names=name, defaults=defaults);

  res[[1]];
} # cmdArg()


############################################################################
# HISTORY:
# 2013-03-14
# o Added cmdArg().
# o Added argument 'names' to cmdArgs().
# 2013-02-24
# o Created.
############################################################################
