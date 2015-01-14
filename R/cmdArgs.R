#########################################################################/**
# @RdocFunction cmdArgs
# @alias cmdArg
#
# @title "Simple access to parsed command-line arguments"
#
# \description{
#   @get "title".
# }
#
# \usage{
#   cmdArgs(@eval "t<-formals(R.utils::cmdArgs);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")
#   cmdArg(@eval "t<-formals(R.utils::cmdArg);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")
# }
#
# \arguments{
#   \item{args}{A named @list of arguments.}
#   \item{names}{A @character @vector specifying the arguments to be
#     returned.  If @NULL, all arguments are returned.}
#   \item{unique}{If @TRUE, only unique arguments are returned.}
#   \item{...}{
#     For \code{cmdArgs()}, additional arguments passed to
#     @see "commandArgs", e.g. \code{defaults} and \code{always}.
#     For \code{cmdArg()}, named arguments \code{name} and
#     \code{default}, where \code{name} must be a @character string
#     and \code{default} is an optional default value (if not given,
#     it's @NULL). Alternatively, \code{name} and \code{default} can
#     be given as a named argument (e.g. \code{n=42}).}
#   \item{.args}{(advanced/internal) A named @list of parsed
#     command-line arguments.}
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
cmdArgs <- function(args=NULL, names=NULL, unique=TRUE, ..., .args=NULL) {
  # Argument 'args':
  if (identical(args, "*")) args <- list("*");
  if (!is.null(args)) {
    if (!is.list(args)) {
      throw("Argument 'args' must a list or NULL: ", class(args)[1L]);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Default call?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(args)) {
    res <- commandArgs(asValues=TRUE, adhoc=TRUE, unique=unique,
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
      adhoc=TRUE, unique=unique, excludeReserved=TRUE, .args=args, ...);

  if (is.null(args)) {
    res <- res[-1L];
  }
  if (!is.null(names)) {
    res <- res[names];
  }

  res;
} # cmdArgs()



cmdArg <- function(...) {
  # Argument '...' => (name, default, ...)
  pargs <- .parseArgs(list(...), defaults=alist(name=, default=NULL));

  # Special short format, e.g. cmdArg(n=42)?
  args <- pargs$args;
  if (!is.element("name", names(args))) {
    argsT <- pargs$namedArgs;
    if (length(argsT) == 0L) {
      stop("Argument 'name' is missing (or NULL).");
    }
    args$name <- names(argsT)[1L];
    args$default <- argsT[[1L]];
    argsT <- argsT[-1L];
    pargs$args <- args;
    pargs$namedArgs <- argsT;
  }
  args <- Reduce(c, pargs);

  # Argument 'name':
  name <- as.character(args$name);
  stopifnot(length(name) == 1L);


  # Call cmdArgs(names=name, defaults=list(<name>=default), ...)
  args$names <- name;
  args$name <- NULL;
  args$defaults <- list(args$default);
  names(args$defaults) <- args$names;
  args$default <- NULL;

  res <- do.call(cmdArgs, args=args);

  res[[1]];
} # cmdArg()



#########################################################################/**
# @RdocFunction cmdArgsCall
#
# @title "Calls an R function passing command-line arguments"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments passed to @see "doCall", including the function
#   to be called.}
#  \item{args}{A @list of arguments to be passed to the function
#   being called.}
#  \item{.ignoreUnusedArgs}{Passed to @see "doCall".}
#  \item{envir}{An @environment in which to evaluate the call.}
# }
#
# \value{
#   Returns whatever the called function returns.
# }
#
# @author
#
# \examples{\dontrun{
#   Rscript -e R.utils::cmdArgsCall(rnorm) n=4
# }}
#
# \seealso{
#   Internally, @see "cmdArgs" and @see "doCall" is used.
# }
#
# @keyword programming
# @keyword internal
#*/#########################################################################
cmdArgsCall <- function(..., args=cmdArgs(unique=FALSE), .ignoreUnusedArgs=FALSE, envir=parent.frame()) {
  doCall(..., args=args, .ignoreUnusedArgs=.ignoreUnusedArgs, envir=envir);
} # cmdArgsCall()



############################################################################
# HISTORY:
# 2014-01-27
# o Added cmdArgsCall() for convenient calling of R functions from the
#   command line, e.g. Rscript -e R.utils::cmdArgsCall(rnorm) n=4.
# 2013-03-20
# o Added support for cmdArg(a=42) as an alias to cmdArg("a", default=42).
# 2013-03-14
# o Added cmdArg().
# o Added argument 'names' to cmdArgs().
# 2013-02-24
# o Created.
############################################################################

