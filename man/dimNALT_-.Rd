%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  dimNA.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{dimNA< -}
\alias{dimNA< -.default}
\alias{dimNA< -}
\alias{dimNA<-}
\alias{dimNA<-.default}

\title{Sets the dimension of an object with the option to infer one dimension autmatically}

\description{
 Sets the dimension of an object with the option to infer one dimension autmatically.
 If one of the elements in the dimension \code{\link[base]{vector}} is \code{\link[base]{NA}}, then its value
 is inferred from the length of the object and the other elements in the
 dimension vector.  If the inferred dimension is not an \code{\link[base]{integer}}, an
 error is thrown.
}

\usage{
\method{dimNA}{default}(x) <- value
}

\arguments{
  \item{x}{An R object.}
  \item{value}{\code{\link[base]{NULL}} of a positive \code{\link[base]{numeric}} \code{\link[base]{vector}} with one optional \code{\link[base]{NA}}.}
}

\value{
  Returns (invisibly) what \code{dim<-()} returns
  (see \code{\link[base]{dim}}() for more details).
}

\examples{
  x <- 1:12
  dimNA(x) <- c(2,NA,3)
  stopifnot(dim(x) == as.integer(c(2,2,3)))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
 \code{\link[base]{dim}}().
}



\keyword{file}
\keyword{IO}
