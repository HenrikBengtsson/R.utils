#########################################################################/**
# @RdocDefault doCall
#
# @title "Executes a function call with option to ignore unused arguments"
#
# \description{
#   @get "title".
#
#  \emph{WARNING: This method is very much in an alpha stage. 
#  Expect it to change.}
# }
#
# @synopsis
#
# \arguments{
#  \item{.fcn}{A @character string naming the function to be called.}
#  \item{...}{Named arguments to be passed to the function.}
#  \item{args}{A @list of additional named arguments that will be appended 
#    to the above arguments.}
#  \item{alwaysArgs}{A @list of additional named arguments that will be 
#    appended to the above arguments and that will \emph{never} be ignore.
#    This is useful if you want to pass arguments to a function that accepts
#    arguments via \code{...}.}
#  \item{.functions}{A @character @vector of function names whos arguments
#    should be kept. This is useful when one function passes \code{...} to
#    another, e.g. @see "stats::loess".}
#  \item{.ignoreUnusedArgs}{If @TRUE, arguments that are not accepted by the
#    function, will not be passed to it. Partial name matching is supported.
#    Otherwise, all arguments are passed.}
# }
#
# \examples{
#   doCall("plot", x=1:10, y=sin(1:10), col="red", dummyArg=54, 
#          alwaysArgs=list(xlab="x", ylab="y"),
#          .functions=c("plot", "plot.xy"))
# }
#
# \seealso{
#   @see "base::do.call".
# }
#
# @author
#
# @keyword programming
#*/#########################################################################
setMethodS3("doCall", "default", function(.fcn, ..., args=NULL, alwaysArgs=NULL, .functions=.fcn, .ignoreUnusedArgs=TRUE, .include=NULL, .exclude=NULL, .verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.character(.fcn)) {
  } else {
    stop("Argument '.fcn' must be a character string: ", mode(.fcn));
  }

  .verbose <- Arguments$getVerbose(.verbose);

  # Put all arguments in a list.
  args <- c(list(...), args);

  nargs <- length(args);

  if (.ignoreUnusedArgs) {
    known <- getArguments(.fcn, args=args, .include=.include, .exclude=.exclude, .functions=.functions);
print(known)
    keep <- (names(args) %in% names(known));
    keep[names(args) == ""] <- TRUE;

    args <- args[keep];
  }

  args <- c(args, alwaysArgs);

  .verbose && str(.verbose, list(.fcn=.fcn, args=args));

  do.call(.fcn, args=args);
}) # doCall()


setMethodS3("doCallGenericS3", "default", function(.fcn, ..., .functions=.fcn, .ignoreUnusedArgs=TRUE) {
  args <- list(...);
  methods <- paste(.fcn, class(args[[1]]), sep=".");
  exists <- unlist(lapply(methods, FUN=exists, mode="function"));
  methods <- methods[exists];
  .functions <- c(.functions, methods);
  doCall(.fcn, ..., .functions=.functions);}
)


setMethodS3("getArguments", "default", function(.fcn, args=NULL, .functions=.fcn, .include=NULL, .exclude=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.character(.fcn)) {
  } else {
    stop("Argument '.fcn' must be a character string: ", mode(.fcn));
  }

  if (is.list(args)) {
    nargs <- length(args);
    if (length(names(args)) == 0)
      return(rep(TRUE, nargs));
    argnames <- names(args);
  } else if (is.character(args)) {
  } else {
    throw("Argument 'args' must be a list or a character vector: ", class(args)[1]);
  }

  # Gather all arguments of a list of functions.
  fcnArgs <- "";
  for (fcnName in .functions) {
    if (!exists(fcnName, mode="function"))
      stop("Function not found: ", fcnName);
    fcn <- get(fcnName, mode="function");
    fcnArgs <- c(fcnArgs, names(formals(fcn)));
  }
  fcnArgs <- setdiff(fcnArgs, "...");

  # 1. Exact matching
  okArgs <- (argnames %in% fcnArgs);
  names(okArgs) <- argnames;

  # 2. Includes
  okArgs <- okArgs | (argnames %in% .include);

  # 3. Partial matching, immitate R's partial matching
  fcnArgs <- fcnArgs[!okArgs];
  for (arg in argnames[!okArgs]) {
    pattern <- paste("^", arg, sep="");
    if (length(grep(pattern, fcnArgs)) > 0)
    okArgs[arg] <- TRUE;
  }

  # 4. Excludes
  okArgs <- okArgs & !(argnames %in% .exclude);

  argnames <- argnames[okArgs];

  if (is.list(args)) {
    keep <- (names(args) %in% argnames);
    keep[names(args) == ""] <- TRUE;
  } else {
    keep <- (args != "");
  }

  args <- args[keep];

  args;
}) # getArguments()


setMethodS3("getArgumentsGenericS3", "default", function(.fcn, object, .functions=.fcn, ...) {
  methods <- paste(.fcn, class(object), sep=".");
  exists <- unlist(lapply(methods, FUN=exists, mode="function"));
  methods <- methods[exists];
  .functions <- c(.functions, methods);
  getArguments(.fcn, ..., .functions=.functions);
})


############################################################################
# HISTORY:
# 2005-11-22
# o BUG FIX: doCall(..., .ignoreUnusedArgs=TRUE) did not work properly.
# 2005-11-14
# o Added getArgumentsGenericS3().
# o Added getArguments().
# o Added doCallGenericS3().
# o Added support for partial matching of argument names.
# o BUG FIX: doCall() removed non-named arguments.
# 2004-12-28
# o Created.
############################################################################
