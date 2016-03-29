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

\title{Assignment operator for delayed assignments ('lazy future')}

\description{
 \emph{This infix operator is deprecated. For an alternative, see
   \code{\%<=\%} part of the future package.
 }

 Assignment operator for delayed assignments ('lazy future') such that the expression on the right-hand side (RHS)
 is evaluated using "lazy future" (a call by future that has lazy
 evaluation semantics), which mean it "promised" to be evaluated
 when the value of the assigned variable (on left-hand side (LHS))
 is retrieved but not before.  This means that if the LHS variable
 is never retrieved / used, then the RHS expression will never be
 evaluated.

 The "lazy evaluation" property of delayed assignments is in constrast
 to the "eager evaluation" property of regular assignments, which
 evaluate the RHS expression at the same time as the assignment take
 place, i.e. immediately.

 The RHS expression will be evaluted in a \code{\link[base]{local}}().
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

\examples{
message("a \%<-\% ...")
a \%<-\% { message("Now assigning 'a'"); 1 }
message("b \%<-\% a")
b \%<-\% a
message("c \%<-\% b")
c \%<-\% b
message("d \%<-\% 2*c")
d <- 2*c
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[base]{delayedAssign}}() is used.
}


\keyword{internal}
