%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isReplicated.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isReplicated}
\alias{isReplicated}

\alias{replicates}

\title{Identifies all entries with replicated values}

\description{
  Identifies all entries with replicated values, that is, with values that exist more than once.
}

\usage{
 isReplicated(x, ...)
 replicates(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{vector}} of length K.}
 \item{...}{Additional arguments passed to \code{\link[base]{duplicated}}().}
}

\value{
 A \code{\link[base]{logical}} \code{\link[base]{vector}} of length K,
 where \code{\link[base:logical]{TRUE}} indicates that the value exists elsewhere,
 otherwise not.
}

\details{
 Let \code{reps <- isReplicated(x)}.  Then it always holds that:
 \itemize{
  \item \code{reps == rev(isReplicated(rev(x)))}
  \item \code{reps == duplicated(x) | duplicated(x, fromLast=TRUE)}
  \item \code{reps == !is.element(x, setdiff(x, unique(x[duplicated(x)])))}
 }
}

\examples{

x <- c(1,1,2,3,4,2,1)
x <- base::letters[x]
print(x)

# Identify entries with replicated values
reps <- isReplicated(x)
print(x[reps])
stopifnot(x[reps] == replicates(x))

# Identify entries with unique values
print(x[!reps])
stopifnot(x[!reps] == singles(x))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Validation
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(1,1,2,3,4,2,1)
x <- base::letters[x]
reps <- isReplicated(x)

stopifnot(all(table(x[reps]) > 1))
stopifnot(all(table(x[!reps]) == 1))
stopifnot(all(reps == rev(isReplicated(rev(x)))))
stopifnot(all(reps == duplicated(x) | duplicated(x, fromLast=TRUE)))
stopifnot(all(reps == !is.element(x, setdiff(x, unique(x[duplicated(x)])))))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Benchmarking singles()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(0xBEEF)
n <- 1e6
x <- sample(1:(n/2), size=n, replace=TRUE)
t <- system.time({
  s <- isSingle(x)
})
print(sum(s))

t0 <- system.time({
  s0 <- !(x \%in\% x[duplicated(x)]);
})
print(t/t0)
stopifnot(all(s == s0))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
 Internally \code{\link[base]{duplicated}}() is used.
 See also \code{\link{isSingle}}().
}

