%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  seqToIntervals.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{seqToIntervals}
\alias{seqToIntervals.default}
\alias{seqToIntervals}

\title{Gets all contigous intervals of a vector of indices}

\description{
 Gets all contigous intervals of a vector of indices.
}

\usage{\method{seqToIntervals}{default}(idx, ...)}

\arguments{
  \item{idx}{A \code{\link[base]{vector}} of \code{\link[base]{integer}} indices.}
  \item{...}{Not used.}
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\examples{
x <- 1:10
y <- seqToIntervals(x)
print(y)  # [1 10]

x <- c(1:10, 15:18, 20)
y <- seqToIntervals(x)
print(y)  # [1 10; 15 18; 20 20]

z <- intervalsToSeq(y)
print(z)
stopifnot(all.equal(x,z))
}

\seealso{
 
  \code{\link[R.utils:intervalsToSeq.matrix]{*intervalsToSeq}()}.
  To identify sequences of \emph{equal} values, see \code{\link[base]{rle}}().
}


\keyword{attribute}
