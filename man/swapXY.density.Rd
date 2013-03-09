%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  density.EXTS.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{swapXY.density}
\alias{swapXY.density}

 \title{Swaps x and y coordinates of a density object}

 \description{
  Swaps x and y coordinates of a density object returned by \code{\link[stats]{density}}.
 }

 \usage{
\method{swapXY}{density}(object, ...)
}

 \arguments{
   \item{...}{Not used.}
 }

 \value{
   Returns a 'density' object of the same class with
   elements 'x' and 'y' swapped.
 }

 \author{Henrik Bengtsson}

 \seealso{
   See \code{\link[stats]{density}} for estimating densities.
   See \code{\link[R.utils:draw.density]{*draw}()} for plotting a density along one of the sides.
 }


\keyword{methods}
\keyword{internal}
