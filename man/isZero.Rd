%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isZero.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isZero}
\alias{isZero.default}
\alias{isZero}

\title{Checks if a value is (close to) zero or not}

\usage{\method{isZero}{default}(x, neps=1, eps=.Machine$double.eps, ...)}

\description{
  Checks if a value (or a vector of values) is (close to) zero or not
  where "close" means if the absolute value is less than \code{neps*eps}.
  \emph{Note that \code{x == 0} will not work in all cases.}

  By default \code{eps} is the smallest possible floating point value
  that can be represented by the running machine, i.e.
  \code{.Machine$double.eps} and \code{neps} is one.
  By changing \code{neps} it is easy to adjust how close to zero "close"
  means without having to know the machine precision (or remembering how
  to get it).
}

\arguments{
  \item{x}{A \code{\link[base]{vector}} of values.}
  \item{eps}{The smallest possible floating point.}
  \item{neps}{A scale factor of \code{eps} specifying how close to zero
     "close" means. If \code{eps} is the smallest value such that
     \code{1 + eps != 1}, i.e. \code{.Machine$double.eps}, \code{neps} must
     be greater or equal to one.}
  \item{...}{Not used.}
}

\value{Returns a \code{\link[base]{logical}} \code{\link[base]{vector}} indicating if the elments are zero or not.}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base:zMachine]{.Machine}}.
}

\examples{
x <- 0
print(x == 0)      # TRUE
print(isZero(x))   # TRUE

x <- 1
print(x == 0)      # FALSE
print(isZero(x))   # FALSE

x <- .Machine$double.eps
print(x == 0)      # FALSE
print(isZero(x))   # FALSE

x <- 0.9*.Machine$double.eps
print(x == 0)      # FALSE
print(isZero(x))   # TRUE



}


\keyword{logic}
