%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  setOption.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{setOption}
\alias{setOption.default}
\alias{setOption}

\title{Sets a option in R}

\description{
 Sets a option in R by specifying its name as a \code{\link[base]{character}} string.
}

\usage{
\method{setOption}{default}(x, value, ...)
}

\arguments{
  \item{x}{The name of the option to be set.}
  \item{value}{The new value of the option.}
  \item{...}{Not used.}
}

\value{
  Returns (invisibly) the previous value of the option.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
 See \code{\link[base]{getOption}}() and "base::options".
}


\keyword{programming}
