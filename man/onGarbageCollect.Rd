%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  onGarbageCollect.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{onGarbageCollect}
\alias{onGarbageCollect.default}
\alias{onGarbageCollect}

\title{Registers a function to be called when the R garbage collector
  is (detected to be) running}

\description{
  Registers a function to be called when the R garbage collector
  is (detected to be) running.
}

\usage{
\method{onGarbageCollect}{default}(fcn, action=c("prepend", "append", "replace"), ...)
}

\arguments{
 \item{fcn}{A \code{\link[base]{function}} to be called without argument.}
 \item{action}{A \code{\link[base]{character}} string specifying how the hook function is
   added to list of hooks.}
 \item{...}{Not used.}
}

\value{
  Returns (invisibly) the hooks successfully called.
}

\author{Henrik Bengtsson}

\examples{\dontrun{
  onGarbageCollect(function(...) {
    message("The R garbage collector is running!");
  })
}}


\keyword{programming}
