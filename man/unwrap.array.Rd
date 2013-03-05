%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  unwrap.array.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{unwrap.array}
\alias{unwrap.array}
\alias{unwrap.matrix}
\alias{unwrap.data.frame}
\alias{unwrap.default}

\title{Unwrap an array, matrix or a vector to an array of more dimensions}

\description{
  Unwrap an array, matrix or a vector to an array of more dimensions.  This is done by splitting up each dimension into several
  dimension based on the names of that dimension.
}

\usage{
\method{unwrap}{array}(x, split=rep("[.]", length(dim(x))), drop=FALSE, ...)
}

\arguments{
 \item{x}{An \code{\link[base]{array}} or a \code{\link[base]{matrix}}.}
 \item{split}{A \code{\link[base]{list}} or a \code{\link[base]{character}} \code{\link[base]{vector}}.
   If a \code{\link[base]{list}}, it should contain \code{\link[base]{function}}s that takes a \code{\link[base]{character}}
   \code{\link[base]{vector}} as the first argument and optional \code{...} arguments.
   Each function should split the \code{\link[base]{vector}} into a \code{\link[base]{list}} of same length
   and where all elements contains the same number of parts.
   If a \code{\link[base]{character}} \code{\link[base]{vector}}, each element \code{split[i]} is replaced by
   a \code{\link[base]{function}} call
   \code{function(names, ...) strsplit(names, split=split[i])}.
 }
 \item{drop}{If \code{\link[base:logical]{TRUE}}, dimensions of of length one are dropped, otherwise not.}
 \item{...}{Arguments passed to the \code{split} \code{\link[base]{function}}s.}
}

\value{
  Returns an \code{\link[base]{array}}.
}

\details{
  Although not tested thoroughly, \code{unwrap()} should be the inverse
  of \code{wrap()} such that \code{identical(unwrap(wrap(x)), x)} holds.
}

\examples{\dontrun{See ?wrap.array for an example}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.utils:wrap.array]{*wrap}()}.
}


\keyword{methods}
\keyword{programming}
