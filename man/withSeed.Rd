%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withSeed.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withSeed}
\alias{withSeed}


\title{Evaluate an R expression with a temporarily set random set}

\description{
 Evaluate an R expression with a temporarily set random set.
}

\usage{
withSeed(expr, ..., envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{...}{Additional arguments passed to \code{\link[base]{set.seed}}().}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should be evaluated.}
}

\value{
 Returns the results of the expression evaluated.
}

\details{
  Upon exit (also on errors), this function will restore
  \code{\link[base]{.Random.seed}} in the global environment to the value
  it had upon entry.  If it did not exist, it will be removed.
}

\author{Henrik Bengtsson}

\examples{
# Generate a random number
y0 <- runif(1)
print(y0)

# Generate a random number using the same seed over and over
yp <- NULL
for (ii in 1:10) {
  y <- withSeed({
    runif(1)
  }, seed=0x42)
  print(y)
  # Assert identical
  if (!is.null(yp)) stopifnot(identical(y, yp))
  yp <- y
}

# Generate a random number
y <- runif(1)
print(y)
}

\seealso{
  Internally, \code{\link[base]{set.seed}}() is used to set the random seet.
}



\keyword{IO}
\keyword{programming}
