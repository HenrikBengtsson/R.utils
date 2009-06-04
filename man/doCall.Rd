%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  doCall.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{doCall}
\alias{doCall.default}
\alias{doCall}

\title{Executes a function call with option to ignore unused arguments}

\description{
  Executes a function call with option to ignore unused arguments.
}

\usage{\method{doCall}{default}(.fcn, ..., args=NULL, alwaysArgs=NULL, .functions=.fcn, .ignoreUnusedArgs=TRUE)}

\arguments{
 \item{.fcn}{A \code{\link[base]{character}} string naming the function to be called.}
 \item{...}{Named arguments to be passed to the function.}
 \item{args}{A \code{\link[base]{list}} of additional named arguments that will be appended
   to the above arguments.}
 \item{alwaysArgs}{A \code{\link[base]{list}} of additional named arguments that will be
   appended to the above arguments and that will \emph{never} be ignore.
   This is useful if you want to pass arguments to a function that accepts
   arguments via \code{...}.}
 \item{.functions}{A \code{\link[base]{character}} \code{\link[base]{vector}} of function names whos arguments
   should be kept. This is useful when one function passes \code{...} to
   another, e.g. \code{\link[stats]{loess}}.}
 \item{.ignoreUnusedArgs}{If \code{\link[base:logical]{TRUE}}, arguments that are not accepted by the
   function, will not be passed to it. Otherwise, all arguments are passed.}
}

\examples{
  doCall("plot", x=1:10, y=sin(1:10), col="red", dummyArg=54,
         alwaysArgs=list(xlab="x", ylab="y"),
         .functions=c("plot", "plot.xy"))
}

\seealso{
  \code{\link[base]{do.call}}().
}

\author{
  Henrik Bengtsson (\url{http://www.braju.com/R/}).
}


\keyword{programming}
