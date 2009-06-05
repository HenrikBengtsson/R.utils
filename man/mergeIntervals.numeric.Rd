%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  mergeIntervals.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{mergeIntervals.numeric}
\alias{mergeIntervals.numeric}
\alias{mergeIntervals.numeric}


 \title{Merges intervals}

 \usage{\method{mergeIntervals}{numeric}(intervals, ...)}

 \description{
  Merges intervals by returning an index \code{\link[base]{vector}} specifying the (first)
  interval that each value maps to, if any.
 }

 \arguments{
   \item{intervals}{The N intervals to be merged.
      If an Nx2 \code{\link[base]{numeric}} \code{\link[base]{matrix}}, the first column should be the lower
      bounds and the second column the upper bounds of each interval.
      If a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length 2N, each consecutive pair should
      be the lower and upper bounds of an interval.
   }
   \item{...}{Not used.}
 }

 \value{
   Returns a \code{\link[base]{matrix}} (or a \code{\link[base]{vector}}) of M intervals, where M <= N.
   The intervals are ordered by their lower bounds.
   The @mode of the returned intervals is the same as the mode of
   the input intervals.
 }

 \details{
   The upper and lower bounds are considered to be inclusive, that is,
   all intervals are interpreted to be of form [a,b].
   There is currently no way to specify intervals with open bounds,
   e.g. (a,b].

   Furthermore, the bounds are currently treated as real values.
   For instance, merging [0,1] and [2,3] will return the same intervals.
   Note, if integer intervals were treated specially, we would merge
   these intervals to integer interval [0,3] == \{0,1,2,3\}.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link{inAnyInterval}}().
  \code{\link[base]{match}}().
 }



\keyword{methods}
\keyword{utilities}
\keyword{programming}
