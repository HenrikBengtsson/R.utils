%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  extract.array.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{extract.array}
\alias{extract.array}
\alias{extract.matrix}
\alias{extract.default}

\title{Extract a subset of an array, matrix or a vector with unknown dimensions}

\description{
  Extract a subset of an array, matrix or a vector with unknown dimensions.

  This method is useful when you do not know the number of dimensions
  of the object your wish to extract values from, cf. example.
}

\usage{
\method{extract}{array}(x, ..., indices=list(...), dims=names(indices), drop=FALSE)
}

\arguments{
 \item{x}{An \code{\link[base]{array}} or a \code{\link[base]{matrix}}.}
 \item{...}{These arguments are by default put into the
    \code{indices} \code{\link[base]{list}}.}
 \item{indices}{A \code{\link[base]{list}} of index \code{\link[base]{vector}}s to be extracted.}
 \item{dims}{An \code{\link[base]{vector}} of dimensions - one per element
    in \code{indices} - which will be coerced to \code{\link[base]{integer}}s.
    If \code{\link[base]{NULL}}, it will default to \code{seq(along=indices)}.}
 \item{drop}{If \code{\link[base:logical]{TRUE}}, dimensions of length one are dropped,
    otherwise not.}
}

\value{
  Returns an \code{\link[base]{array}}.
}

\examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example using an array with a random number of dimensions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
maxdim <- 4
dim <- sample(3:maxdim, size=sample(2:maxdim, size=1), replace=TRUE)
ndim <- length(dim)
dimnames <- list()
for (kk in 1:ndim)
  dimnames[[kk]] <- sprintf("\%s\%d", letters[kk], 1:dim[kk])
x <- 1:prod(dim)
x <- array(x, dim=dim, dimnames=dimnames)

cat("\nArray 'x':\n")
print(x)


cat("\nExtract 'x[2:3,...]':\n")
print(extract(x, "1"=2:3))

cat("\nExtract 'x[3,2:3,...]':\n")
print(extract(x, "1"=3,"2"=2:3))

cat("\nExtract 'x[...,2:3]':\n")
print(extract(x, indices=2:3, dims=length(dim(x))))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Assertions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
y <- array(1:24, dim=c(2,3,4))
yA <- y[,,2:3]
yB <- extract(y, indices=list(2:3), dims=length(dim(y)))
stopifnot(identical(yB, yA))

yA <- y[,2:3,2]
yB <- extract(y, indices=list(2:3,2), dims=c(2,3), drop=TRUE)
stopifnot(identical(yB, yA))
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{slice.index}}()
}


\keyword{methods}
\keyword{programming}
