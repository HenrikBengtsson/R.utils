%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  insert.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{insert}
\alias{insert.default}
\alias{insert}

\title{Insert values to a vector at certain positions}

\description{
 Insert values to a vector at certain positions.
}

\usage{
\method{insert}{default}(x, ats, values=NA, useNames=TRUE, ...)
}

\arguments{
  \item{x}{The \code{\link[base]{vector}} of data values.}
  \item{ats}{The indices of \code{x} where the values should be inserted.}
  \item{values}{A \code{\link[base]{list}} or a \code{\link[base]{vector}} of the values to be inserted.
     Should be of same length as \code{ats}, unless if a single value
     when it is automatically extended without a warning.}
  \item{useNames}{If \code{\link[base:logical]{FALSE}}, the names attribute is dropped/ignored,
     otherwise not.  Only applied if argument \code{x} is named.}
  \item{...}{Not used.}
}

\examples{

# Insert NAs (default) between all values
y <- c(a=1, b=2, c=3)
print(y)
x <- insert(y, ats=2:length(y))
Ex <- c(y[1], NA, y[2], NA, y[3])
print(x)
stopifnot(identical(x,Ex))

# Insert at first position
y <- c(a=1, b=2, c=3)
print(y)
x <- insert(y, ats=1, values=rep(NA,2))
Ex <- c(NA,NA,y)
print(x)
stopifnot(identical(x,Ex))

x <- insert(y, ats=1, values=rep(NA,2), useNames=FALSE)
print(x)

# Insert at last position (names of 'values' are ignored
# because input vector has no names)
x <- insert(1:3, ats=4, values=c(d=2, e=1))
Ex <- c(1:3,2,1)
print(x)
stopifnot(identical(x,Ex))


# Insert in the middle of a vector
x <- insert(c(1,3,2,1), ats=2, values=2)
print(x)
stopifnot(identical(as.double(x),as.double(Ex)))


# Insert multiple vectors at multiple indices at once
x0 <- c(1:4, 8:11, 13:15)

x <- insert(x0, at=c(5,9), values=list(5:7,12))
print(x)
Ex <- 1:max(x)
stopifnot(identical(as.double(x),as.double(Ex)))

x <- insert(x0, at=c(5,9,12), values=list(5:7,12,16:18))
print(x)
Ex <- 1:max(x)
stopifnot(identical(as.double(x),as.double(Ex)))


# Insert missing indices
Ex <- 1:20
missing <- setdiff(Ex, x0)
x <- x0
for (m in missing)
  x <- insert(x, ats=m, values=m)
print(x)
stopifnot(identical(as.double(x),as.double(Ex)))

}

\seealso{
  \code{\link{base:append}}.
}

\author{Henrik Bengtsson}


\keyword{manip}
