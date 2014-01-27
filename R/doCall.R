#########################################################################/**
# @RdocDefault doCall
#
# @title "Executes a function call with option to ignore unused arguments"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{.fcn}{A @function or a @character string specifying the name
#    of a @function to be called.}
#  \item{...}{Named arguments to be passed to the function.}
#  \item{args}{A @list of additional named arguments that will be appended
#    to the above arguments.}
#  \item{alwaysArgs}{A @list of additional named arguments that will be
#    appended to the above arguments and that will \emph{never} be ignore.}
#  \item{.functions}{A @list of @function:s or names of functions.  This
#    can be used to control which arguments are passed.}
#  \item{.ignoreUnusedArgs}{If @TRUE, arguments that are not accepted by the
#    function, will not be passed to it. Otherwise, all arguments are passed.}
#  \item{envir}{An @environment in which to evaluate the call.}
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
setMethodS3("doCall", "default", function(.fcn, ..., args=NULL, alwaysArgs=NULL, .functions=list(.fcn), .ignoreUnusedArgs=TRUE, envir=parent.frame()) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument '.fcn':
  if (is.function(.fcn)) {
  } else if (is.character(.fcn)) {
  } else {
    stop("Argument '.fcn' must be a character string: ", mode(.fcn));
  }

  # Argument '.functions':
  # Backward compatibility. /HB 2014-01-27
  if (is.character(.functions)) {
    .functions <- as.list(.functions);
  }
  if (!is.list(.functions)) {
    stop("Argument '.functions' must be a list: ", mode(.functions));
  }
  for (kk in seq_along(.functions)) {
    fcn <- .functions[[kk]];
    if (is.function(fcn)) next;
    if (!exists(fcn, mode="function")) {
      stop("Argument '.functions' specifies a non-existing function: ", fcn);
    }
    fcn <- get(fcn, mode="function");
    .functions[[kk]] <- fcn;
  }

  # Argument 'envir':
  stopifnot(is.environment(envir));


  # Put all arguments in a list.
  args <- c(list(...), args);

  # Keep only arguments part accepted by a set of known functions
  if (.ignoreUnusedArgs && length(.functions) > 0L) {
    fcnArgs <- lapply(.functions, FUN=function(fcn) {
      names(formals(fcn));
    })
    fcnArgs <- unlist(fcnArgs, use.names=FALSE);
    keep <- intersect(names(args), fcnArgs);
    args <- args[keep];
  }

  args <- c(args, alwaysArgs);
  do.call(.fcn, args=args, envir=envir);
}) # doCall()

############################################################################
# HISTORY:
# 2014-01-27
# o ROBUSTNESS: Now argument '.fcn' can also contain functions in
#   addition to names of functions.
# o doCall() gained argument 'envir', which also means that the new
#   behavior is to evaluate the call within the calling frame.  It now
#   also accepts call a function object in addition to a name of a function.
# 2004-12-28
# o Created.
############################################################################
