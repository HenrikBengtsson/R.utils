%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  arrayIndex.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{arrayIndex}
\alias{arrayIndex.default}
\alias{arrayIndex}

\title{Converts vector indices to array indices}

\usage{\method{arrayIndex}{default}(i, dim, ...)}

\description{
 Converts vector indices to array indices assuming last array dimension to "move fastest", e.g.
 matrices are stored column by column.
}

\arguments{
 \item{i}{A \code{\link[base]{vector}} of vector indices to be converted to array
   indices.}
 \item{dim}{A non-empty \code{\link[base]{numeric}} \code{\link[base]{vector}} specifying the dimension of
   the array.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{numeric}} \code{\link[base]{matrix}} of \code{length(i)} rows and
 \code{length(dim)} columns.
}

\examples{
# Single index
print(arrayIndex(21, dim=c(4,3,3)))

# Multiple indices
print(arrayIndex(20:23, dim=c(4,3,3)))

# Whole array
x <- array(1:30, dim=c(5,6))
print(arrayIndex(1:length(x), dim=dim(x)))

# Find (row,column) of maximum value
m <- diag(4-abs(-4:4))
print(arrayIndex(which.max(m), dim=dim(m)))
}

\references{
 [1] H. Bengtsson, \emph{Bayesian Networks - a self-contained
     introduction with implementation remarks}, Master's Thesis in
     Computer Science, Mathematical Statistics, Lund Institute of
     Technology, 1999.\cr
}

\seealso{
  \code{\link[base]{which}}() with argument \code{arr.ind=TRUE}.
}



\keyword{manip}
\keyword{utilities}
