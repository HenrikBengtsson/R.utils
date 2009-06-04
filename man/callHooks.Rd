%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  callHooks.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{callHooks}
\alias{callHooks.default}
\alias{callHooks}

\title{Call hook functions by hook name}

\description{
  Call hook functions by hook name.
}

\usage{\method{callHooks}{default}(hookName, ..., removeCalledHooks=FALSE)}

\arguments{
 \item{hookName}{A \code{\link[base]{character}} string of the hook name.}
 \item{...}{Argument passed to each hook function.}
 \item{removeCalledHooks}{If \code{\link[base:logical]{TRUE}}, called hook functions are removed,
    otherwise not.}
}

\value{
  Returns (invisibly) whatever \code{\link{callHooks.list}}() returns.
}

\examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# First, clean up if called more than once
setHook("myFunction.onEnter", NULL, action="replace")
setHook("myFunction.onExit", NULL, action="replace")

runConference <- function(...) {
  callHooks("myFunction.onEnter")
  cat("Speaker A: Hello there...\n")
  callHooks("myFunction.onExit")
}

setHook("myFunction.onEnter", function(...) {
  cat("Chair: Welcome to our conference.\n")
})

setHook("myFunction.onEnter", function(...) {
  cat("Chair: Please welcome Speaker A!\n")
})

setHook("myFunction.onExit", function(...) {
  cat("Chair: Please thanks Speaker A!\n")
})

runConference()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example 2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
setHook("randomNumber", NULL, action="replace")
setHook("randomNumber", rnorm)      # By function
setHook("randomNumber", "rexp")     # By name
setHook("randomNumber", "runiff")   # Non-existing name
setHook("randomNumber", .GlobalEnv) # Not a function

res <- callHooks("randomNumber", n=1)
str(res)
cat("Number of hooks: ", length(res), "\n");
isErroneous <- unlist(lapply(res, FUN=function(x) !is.null(x$exception)));
cat("Erroneous hooks: ", sum(isErroneous), "\n");


}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  Internally, after retriving hook functions, \code{\link{callHooks.list}}() is
  called.
  See \link[base:UserHooks]{UserHooks} how to set hooks.
}


\keyword{programming}
