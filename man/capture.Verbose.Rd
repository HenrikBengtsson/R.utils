%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{capture.Verbose}
\alias{capture.Verbose}
\alias{Verbose.capture}
\alias{capture,Verbose-method}

\title{Captures output of a function}

\description{
  Captures output of a function.
  Evaluates its arguments with the output being verbosed.
}

\usage{
\method{capture}{Verbose}(this, ..., level=this$defaultLevel)
}

\arguments{
 \item{...}{Arguments to be captured.}
 \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
}

\value{
  Returns a \code{\link[base]{vector}} of \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Verbose}}.
}
\keyword{internal}
\keyword{methods}
