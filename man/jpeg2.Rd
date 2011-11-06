%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  jpeg2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{jpeg2}
\alias{jpeg2}


\title{A JPEG device for Bitmap Files via GhostScript}

\description{
  A JPEG device for Bitmap Files via GhostScript.
}

\usage{jpeg2(filename, width=480, height=480, res=144, type="jpeg", ...)}

\arguments{
 \item{filename}{The name of the file to be produced.}
 \item{width, height}{The width and height (in pixels) of the result image.}
 \item{res}{The resolution of the image.}
 \item{type}{The output type. See \code{\link[grDevices]{dev2bitmap}} for details.}
 \item{...}{Additional arguments passed to \code{bitmap()}.}
}

\value{
  Returns nothing.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}


\keyword{device}
