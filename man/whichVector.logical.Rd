%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  whichVector.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{whichVector.logical}
\alias{whichVector.logical}
\alias{whichVector.logical}

 \alias{whichVector.matrix}

 \title{Identifies TRUE elements in a logical vector}

 \description{
   Identifies TRUE elements in a logical vector.
   This method is faster than \code{\link[base]{which}}() for \code{\link[base]{logical}} \code{\link[base]{vector}}s,
   especially when there are no missing values.
 }

 \usage{\method{whichVector}{logical}(x, na.rm=TRUE, use.names=TRUE, ...)}

 \arguments{
   \item{x}{A \code{\link[base]{logical}} \code{\link[base]{vector}} of length N.}
   \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are treated as \code{\link[base:logical]{FALSE}},
      otherwise they are returned as \code{\link[base]{NA}}.}
   \item{use.names}{If \code{\link[base:logical]{TRUE}}, the names attribute is preserved,
      otherwise it is not return.}
   \item{...}{Not used.}
 }

 \value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of length less or equal to N.
 }

 \section{Benchmarking}{
   Simple comparison on R v2.7.1 on Windows XP, show that
   this implementation can be more than twice as fast as
   \code{\link[base]{which}}(), especially when there are no missing
   value (and \code{na.rm=FALSE}) is used.
 }

 \examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Simulate two large named logical vectors,
# one with missing values one with out
# - - - - - - - - - - - - - - - - - - - - - - - - - -
N <- 1e6;

# Vector #1
x <- sample(c(TRUE, FALSE), size=N, replace=TRUE);
names(x) <- seq_along(x);

# Vector #2
y <- x
y[sample(N, size=0.1*N)] <- NA;


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Validate consistency
# - - - - - - - - - - - - - - - - - - - - - - - - - -
stopifnot(identical(which(x), whichVector(x)));
stopifnot(identical(which(y), whichVector(y)));


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Benchmarking
# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Number of iterations
K <- 5;

t1 <- 0;
for (kk in 1:K) {
  t1 <- t1 + system.time({ idxs1 <- which(x) });
};
 
t2 <- 0;
for (kk in 1:K) {
  t2 <- t2 + system.time({ idxs2 <- whichVector(x, na.rm=FALSE) });
};
 
cat(sprintf("whichVector(x, na.rm=FALSE)/which(x): \%.2f\n", (t2/t1)[3]));
stopifnot(identical(idxs1, idxs2));


t1 <- 0;
for (kk in 1:K) {
  t1 <- t1 + system.time({ idxs1 <- which(y) });
};
 
t2 <- 0;
for (kk in 1:K) {
  t2 <- t2 + system.time({ idxs2 <- whichVector(y) });
};
 
cat(sprintf("whichVector(y)/which(y): \%.2f\n", (t2/t1)[3]));
stopifnot(identical(idxs1, idxs2));

}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[base]{which}}()
 }


\keyword{methods}
\keyword{programming}
