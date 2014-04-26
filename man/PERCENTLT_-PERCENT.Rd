%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  OperatorDelayedAssign.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{PERCENT< -PERCENT}
\alias{PERCENT< -PERCENT}

\alias{\%<-\%}

\title{Assignment operator for delayed assignments}

\description{
 Assignment operator for delayed assignments such that the expression on the right-hand side (RHS)
 will not be evaluated until the value of the assigned variable
 (on left-hand side (LHS)) is evaluated.
}

\usage{
  x \%<-\% value
}

\arguments{
  \item{x}{The variable name (possibly quoted).}
  \item{value}{The value to be assigned to \code{x}.}
}

\value{
  Returns (invisibly) \code{\link[base]{NULL}}.
  Note, contrary to \code{\link[base]{<-}}(), it is \emph{not}
  meaniful to do \code{a \%<-\% b \%<-\% c \%<-\% 6}.
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[base]{delayedAssign}}() is used.
}


\keyword{internal}
