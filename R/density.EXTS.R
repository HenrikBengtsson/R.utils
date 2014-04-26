###########################################################################/**
# @set class=density
# @RdocMethod swapXY
#
# @title "Swaps x and y coordinates of a density object"
#
# \description{
#  @get "title" returned by @see "stats::density".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a 'density' object of the same class with
#   elements 'x' and 'y' swapped.
# }
#
# @author
#
# \seealso{
#   See @see "stats::density" for estimating densities.
#   See @seemethod "draw" for plotting a density along one of the sides.
# }
#
# @keyword internal
#*/###########################################################################
setMethodS3("swapXY", "density", function(object, ...) {
  d <- object;
  d$x <- object$y;
  d$y <- object$x;
  d;
}) # swapXY()



###########################################################################/**
# @set class=density
# @RdocMethod draw
#
# @title "Draws a density curve"
#
# \description{
#  @get "title" along one of the sides of the current plotting region.
# }
#
# @synopsis
#
# \arguments{
#  \item{side}{An @integer specifying which side to draw along.
#    See @see "graphics::mtext" for details.}
#  \item{height}{A @numeric scalar specifying the "height" of the curve,
#    where height means the maximum height of the density.
#    that is, how much the zero-density position should be shifted.}
#  \item{scale}{A @character specifying the scale of the curve, which
#    can be either absolute or relative.}
#  \item{xpd}{If @TRUE, the curve is not clipped, cf. @see "graphics::par".}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns the drawn 'density' object
#   (with the 'x' and 'y' coordinates as plotted).
# }
#
# @author
#
# \seealso{
#   See @see "stats::density" for estimating densities.
#   Internally @seemethod "swapXY" may be used.
# }
#
# @keyword internal
#*/###########################################################################
# For some reason I cannot override lines() here
setMethodS3("draw", "density", function(object, side=1, height=0.2, offset=0, scale=c("absolute", "relative"), xtrim=NULL, xpd=TRUE, ...) {
  # To please R CMD check
#  object <- x;

  # Argument 'side':
  side <- Arguments$getIndex(side, range=c(1,4));

  # Argument 'height':
  height <- Arguments$getDouble(height);

  # Argument 'offset':
  offset <- Arguments$getDouble(offset);

  # Argument 'scale':
  scale <- match.arg(scale);

  # Argument 'xtrim':
  if (!is.null(xtrim)) xtrim <- Arguments$getDoubles(xtrim, length=c(2L,2L));

  # Argument 'xpd':
  xpd <- Arguments$getLogical(xpd);


  par <- par("usr");
  dx <- diff(par[1:2]);
  dy <- diff(par[3:4]);
##  printf("(dx,dy)=(%f,%f)\n", dx,dy);

  # New 'density' object
  d <- object;

  # Rescale d$y to [0,1]
  maxY <- max(d$y, na.rm=TRUE);
  d$y <- d$y / maxY;
##    printf("range(d$y)=(%f,%f)\n", min(d$y),max(d$y));

  # Relative height and offset?
  if (scale == "relative") {
    if (side == 1 || side == 3) {
      height <- height * dy;
      offset <- offset * dy;
    } else if (side == 2 || side == 4) {
      height <- height * dx;
      offset <- offset * dx;
    }
  }

  # Rescale d$y to [0,height]
  d$y <- d$y * height;
##    printf("range(d$y)=(%f,%f)\n", min(d$y),max(d$y));

  # Offset
  d$y <- d$y + offset;

  # Truncate by 'x'?
  if (!is.null(xtrim)) {
    keep <- (xtrim[1] <= d$x & d$x < xtrim[2]);
    d$x <- d$x[keep];
    d$y <- d$y[keep];
    keep <- NULL; # Not needed anymore
  }

  # Direction, and (x,y) swap?
  if (side == 1) {
    d$y <- par[3] + d$y;
  } else if (side == 2) {
    d$y <- par[1] + d$y;
    d <- swapXY(d);
  } else if (side == 3) {
    d$y <- par[4] - d$y;
  } else if (side == 4) {
    d$y <- par[2] - d$y;
    d <- swapXY(d);
  }

  lines(d, xpd=xpd, ...);

  invisible(d);
}) # draw()


###########################################################################
# HISTORY:
# 2014-04-26
# o Added argument 'xtrim' to draw() for density object.
# 2012-02-23
# o Added Rdoc comments.
# o Moved to R.utils from aroma.core.
# 2010-09-12
# o Added swapXY() and draw() for objects of class 'density'.
# o Created.
###########################################################################
