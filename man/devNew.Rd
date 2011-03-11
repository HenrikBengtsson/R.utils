%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  deviceUtils.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{devNew}
\alias{devNew}


 \title{Opens a new device}

 \description{
  Opens a new device.
 }

 \usage{devNew(type=getOption("device"), ..., aspectRatio=1, par=NULL, label=NULL)}

 \arguments{
   \item{type}{A \code{\link[base]{character}} string specifying the type of device to be
     opened. This string should match the name of an existing device
     \code{\link[base]{function}}.}
   \item{...}{Additional arguments passed to the device \code{\link[base]{function}}, e.g.
     \code{width} and \code{height}.}
   \item{aspectRatio}{A \code{\link[base]{numeric}} ratio specifying the aspect ratio
     of the image.  See below.}
   \item{par}{An optional named \code{\link[base]{list}} of graphical settings applied,
     that is, passed to \code{\link[graphics]{par}}, immediately after
     opening the device.}
   \item{label}{An optional \code{\link[base]{character}} string specifying the label of the
     opened device.}
 }

 \value{
   Returns what the device \code{\link[base]{function}} returns.
 }

 \section{Aspect ratio}{
   The aspect ratio of an image is the height relative to the width.
   If argument \code{height} is not given (or \code{\link[base]{NULL}}), it is
   calculated as \code{aspectRatio*width} as long as they are given.
   Likewise, if argument \code{width} is not given (or \code{\link[base]{NULL}}), it is
   calculated as \code{width/aspectRatio} as long as they are given.
   If neither \code{width} nor \code{height} is given, or if both
   are given, then \code{aspectRatio} is ignored.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{devDone}}() and \code{\link{devOff}}().
   For simplified generation of image files, see \code{\link{devEval}}().
 }



\keyword{device}
\keyword{utilities}
