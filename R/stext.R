###########################################################################/**
# @RdocDefault stext
#
# @title "Writes text in the margin along the sides of a plot"
#
# \description{
#   @get "title".  
# }
#
# @synopsis
#
# \arguments{
#  \item{text}{The text to be written. See @see "graphics::mtext" for details.}
#  \item{side}{An @integer specifying which side to write the text on. See @see "graphics::mtext" for details.}
#  \item{line}{A @numeric specifying on which line to write on.}
#  \item{pos}{A @numeric, often in [0,1], specifying the position
#   of the text relative to the left and right edges.}
#  \item{margin}{A @numeric @vector length two specifying the text margin.}
#  \item{charDim}{A @numeric @vector length two specifying the size of a
#   typical symbol.}
#  \item{cex}{A @numeric specifying the character expansion factor.}
#  \item{...}{Additional arguments passed to @see "graphics::mtext".}
# }
#
# \value{
#  Returns what @see "graphics::mtext" returns.
# }
#
# @author
#
# \seealso{
#   Internally @see "graphics::mtext" is used.
# }
#*/########################################################################### 
setMethodS3("stext", "default", function(text, side=1, line=0, pos=0.5, margin=c(0.2,0.2), charDim=c(strwidth("M", cex=cex), strheight("M", cex=cex)), cex=par("cex"), ...) {
  # Argument 'side':
  side <- Arguments$getInteger(side, range=c(1,4));

  # Argument 'pos':
  pos <- Arguments$getNumeric(pos);

  # Argument 'margin':
  margin <- Arguments$getNumerics(margin);
  margin <- rep(margin, length.out=2);

  # dx, dy:
  # Assume side 1 or 3 (otherwise flip below)
  if (side %in% c(1,3)) {
    dx <- margin[1]*charDim[1];
    dy <- margin[2]*charDim[2];
  } else {
    dx <- margin[2]*charDim[1];
    dy <- margin[1]*charDim[2];
  }

  usr <- par("usr");
  xlim <- usr[1:2];
  ylim <- usr[3:4]; 

  if (line < 0)
    margin[2] <- -margin[2];

  if (side %in% c(1,3)) {
    xlim <- xlim - c(-1,+1)*dx;
    if (line >= 0)
      dy <- -dy;
    ylim <- ylim - c(-1,+1)*dy;
  } else {
    if (line >= 0)
      dx <- -dx;
    xlim <- xlim - c(-1,+1)*dx;
    ylim <- ylim - c(-1,+1)*dy;
  }


  # Debug
  # lines(x=xlim[c(1,1,2,2,1)], y=ylim[c(1,2,2,1,1)], col="red", xpd=TRUE);

  # 'at':
  if (side %in% c(1,3)) {
    at <- xlim[1] + pos*diff(xlim);
  } else {
    at <- ylim[1] + pos*diff(ylim);
  }

  # 'adj':
  if (side %in% c(1,3)) {
    adj <- sign(pos-0.5)/2 + 1/2;
  } else {
    adj <- sign(pos-0.5)/2 + 1/2;
  }

  line <- line + margin[2];
  
  # Rescale line according to font size
  if (side %in% c(1,3)) {
    lheight <- strheight("M", cex=cex)/strheight("M")
  } else {
    lheight <- strwidth("M", cex=cex)/strwidth("M");
  }

  if (line >= 0) {
    if (side %in% c(1,4)) {
      line <- line * lheight;
      line <- line + (lheight-1);
    } else {
      line <- line * lheight;
    }
  } else {
    if (side %in% c(1,4)) {
      line <- (line+1) * lheight - 1;
    } else {
      line <- (line+1) * lheight - 1;
      line <- line - (lheight-1);
    }
  }
  mtext(text=text, side=side, line=line, at=at, adj=adj, cex=cex, ..., xpd=TRUE);
}) # stext()


############################################################################
# HISTORY:
# 2010-08-04
# o Made stext() public.
# o Moved stext() from aroma.core to R.utils.
# 2007-01-05
# o Need to be documented.
# 2006-??-??
# o Created.
############################################################################
