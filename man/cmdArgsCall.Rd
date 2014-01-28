%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  cmdArgs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{cmdArgsCall}
\alias{cmdArgsCall}


\title{Calls an R function passing command-line arguments}

\description{
  Calls an R function passing command-line arguments.
}

\usage{
cmdArgsCall(..., args=cmdArgs(unique = FALSE), .ignoreUnusedArgs=FALSE,
  envir=parent.frame())
}

\arguments{
 \item{...}{Arguments passed to \code{\link{doCall}}(), including the function
  to be called.}
 \item{args}{A \code{\link[base]{list}} of arguments to be passed to the function
  being called.}
 \item{.ignoreUnusedArgs}{Passed to \code{\link{doCall}}().}
 \item{envir}{An \code{\link[base]{environment}} in which to evaluate the call.}
}

\value{
  Returns whatever the called function returns.
}

\author{Henrik Bengtsson}

\examples{\dontrun{
  Rscript -e R.utils::cmdArgsCall(rnorm) n=4
}}

\seealso{
  Internally, \code{\link{cmdArgs}}() and \code{\link{doCall}}() is used.
}



\keyword{programming}
\keyword{internal}
