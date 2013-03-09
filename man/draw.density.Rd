%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  density.EXTS.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{draw.density}
\alias{draw.density}

 \title{Draws a density curve}

 \description{
  Draws a density curve along one of the sides of the current plotting region.
 }

 \usage{
\method{draw}{density}(object, side=1, height=0.2, offset=0, scale=c("absolute", "relative"), xpd=TRUE, ...)
}

 \arguments{
  \item{side}{An \code{\link[base]{integer}} specifying which side to draw along.
    See \code{\link[graphics]{mtext}} for details.}
  \item{height}{A \code{\link[base]{numeric}} scalar specifying the "height" of the curve,
    where height means the maximum height of the density.
    that is, how much the zero-density position should be shifted.}
  \item{scale}{A \code{\link[base]{character}} specifying the scale of the curve, which
    can be either absolute or relative.}
  \item{xpd}{If \code{\link[base:logical]{TRUE}}, the curve is not clipped, cf. \code{\link[graphics]{par}}.}
  \item{...}{Not used.}
 }

 \value{
   Returns the drawn 'density' object
   (with the 'x' and 'y' coordinates as plotted).
 }

 \author{Henrik Bengtsson}

 \seealso{
   See \code{\link[stats]{density}} for estimating densities.
   Internally \code{\link[R.utils:swapXY.density]{*swapXY}()} may be used.
 }


\keyword{methods}
\keyword{internal}
