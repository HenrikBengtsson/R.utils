%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  png2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{png2}
\alias{png2}


\title{A PNG device for Bitmap Files via GhostScript}

\description{
  A PNG device for Bitmap Files via GhostScript.
}

\usage{png2(filename, width=480, height=480, res=144, type="png256", ...)}

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
