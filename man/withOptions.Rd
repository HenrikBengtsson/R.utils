%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withOptions.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withOptions}
\alias{withOptions}


\title{Evaluate an R expression with options set temporarily}

\description{
 Evaluate an R expression with options set temporarily.
}

\usage{
withOptions(expr, ..., args=list(), envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated via \code{\link[base]{eval}}().}
  \item{...}{Named options to be used.}
  \item{args}{(optional) Additional named options specified as a named \code{\link[base]{list}}.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should be evaluated.}
}

\value{
 Returns the results of the expression evaluated.
}

\author{Henrik Bengtsson}

\examples{
withOptions({
  print(pi)
})

withOptions({
  print(pi)
}, digits=2)

withOptions({
  print(letters)
}, width=20)

withOptions({
  print(letters)
}, width=40)
}

\seealso{
  \code{\link[base]{options}}()
}



\keyword{IO}
\keyword{programming}
