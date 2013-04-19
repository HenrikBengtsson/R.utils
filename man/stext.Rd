%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  stext.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{stext}
\alias{stext.default}
\alias{stext}

\title{Writes text in the margin along the sides of a plot}

\description{
  Writes text in the margin along the sides of a plot.
}

\usage{
\method{stext}{default}(text, side=1, line=0, pos=0.5, margin=c(0.2, 0.2), charDim=c(strwidth("M", cex = cex), strheight("M", cex = cex)), cex=par("cex"), ...)
}

\arguments{
 \item{text}{The text to be written. See \code{\link[graphics]{mtext}} for details.}
 \item{side}{An \code{\link[base]{integer}} specifying which side to write the text on. See \code{\link[graphics]{mtext}} for details.}
 \item{line}{A \code{\link[base]{numeric}} specifying on which line to write on.}
 \item{pos}{A \code{\link[base]{numeric}}, often in [0,1], specifying the position
  of the text relative to the left and right edges.}
 \item{margin}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} length two specifying the text margin.}
 \item{charDim}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} length two specifying the size of a
  typical symbol.}
 \item{cex}{A \code{\link[base]{numeric}} specifying the character expansion factor.}
 \item{...}{Additional arguments passed to \code{\link[graphics]{mtext}}.}
}

\value{
 Returns what \code{\link[graphics]{mtext}} returns.
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[graphics]{mtext}} is used.
}

