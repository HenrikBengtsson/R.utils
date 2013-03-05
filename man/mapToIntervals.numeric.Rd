%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  mapToIntervals.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{mapToIntervals.numeric}
\alias{mapToIntervals.numeric}

 \title{Maps values to intervals}

 \usage{
\method{mapToIntervals}{numeric}(x, intervals, includeLower=TRUE, includeUpper=TRUE, ...)
}

 \description{
  Maps values to intervals by returning an index \code{\link[base]{vector}} specifying the (first)
  interval that each value maps to, if any.
 }

 \arguments{
   \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K values to be matched.}
   \item{intervals}{The N intervals to be matched against.
      If an Nx2 \code{\link[base]{numeric}} \code{\link[base]{matrix}}, the first column should be the lower
      bounds and the second column the upper bounds of each interval.
      If a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length 2N, each consecutive pair should
      be the lower and upper bounds of an interval.
   }
   \item{includeLower, includeUpper}{If \code{\link[base:logical]{TRUE}}, the lower (upper) bound
      of \emph{each} interval is included in the test, otherwise not.}
   \item{...}{Not used.}
 }

 \value{
   Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of length K.
   Values that do not map to any interval have return value \code{\link[base]{NA}}.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link{inAnyInterval}}().
  \code{\link[base]{match}}().
  \code{\link[base]{findInterval}}().
  \code{\link[base]{cut}}().
 }



\keyword{methods}
\keyword{utilities}
\keyword{programming}
