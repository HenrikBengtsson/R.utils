%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  callHooks.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{callHooks.function}
\alias{callHooks.function}
\alias{callHooks.function}

\alias{callHooks.list}

\title{Call hook functions}

\description{
  Call hook functions.
}

\usage{\method{callHooks}{function}(hooks, ...)}

\arguments{
 \item{hooks}{A \code{\link[base]{function}} or a \code{\link[base]{list}} of hook \code{\link[base]{function}}s or names of such.}
 \item{...}{Argument passed to each hook function.}
}

\value{
  Returns (invisibly) a \code{\link[base]{list}} that is named with hook names, if possible.
  Each element in the list is in turn a \code{\link[base]{list}} with three element:
  \code{fcn} is the hook function called, \code{result} is its return
  value, and \code{exception} is the exception caught or \code{\link[base]{NULL}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  See \code{\link{callHooks}}() to call hook function by name.
}


\keyword{methods}
\keyword{programming}
