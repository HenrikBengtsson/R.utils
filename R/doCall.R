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
#    function, will not be passed to it. Otherwise, all arguments are passed.}
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
# \author{
#   @get "author".
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("doCall", "default", function(.fcn, ..., args=NULL, alwaysArgs=NULL, .functions=.fcn, .ignoreUnusedArgs=TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.character(.fcn)) {
  } else {
    stop("Argument '.fcn' must be a character string: ", mode(.fcn));
  }

  # Put all arguments in a list.
  args <- c(list(...), args);

  if (.ignoreUnusedArgs) {
    fcnArgs <- NULL;
    for (fcnName in .functions) {
      if (!exists(fcnName, mode="function"))
        stop("Function not found: ", fcnName);
      fcn <- get(fcnName, mode="function");
      fcnArgs <- c(fcnArgs, names(formals(fcn)));
    }
    okArgs <- intersect(names(args), fcnArgs);
    args <- args[okArgs];
  }

  args <- c(args, alwaysArgs);
  do.call(.fcn, args=args);
}) # doCall()

############################################################################
# HISTORY:
# 2004-12-28
# o Created.
############################################################################
