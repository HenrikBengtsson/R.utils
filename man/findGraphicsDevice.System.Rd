%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{System$findGraphicsDevice}
\alias{System$findGraphicsDevice}
\alias{findGraphicsDevice.System}
\alias{System.findGraphicsDevice}
\alias{findGraphicsDevice,System-method}

 \title{Searches for a working PNG device}

 \description{
  Searches for a working PNG device.

  On Unix, the png device requires that X11 is available, which it is not
  when running batch scripts or running \R remotely.  In such cases, an
  alternative is to use the \code{bitmap()} device, which generates an
  EPS file and the uses Ghostscript to transform it to a PNG file.

  Moreover, if identical looking bitmap and vector graphics (EPS) files
  are wanted for the same figures, in practice, \code{bitmap()} has
  to be used.

  By default, this method tests a list of potential graphical devices and
  returns the first that successfully creates an image file.
  By default, it tries to create a PNG image file via the built-in
  \code{png()} device.
 }

 \usage{
## Static method (use this):
## System$findGraphicsDevice(devices=list(png), maxCount=100, sleepInterval=0.1, findGhostscript=TRUE, ...)

## Don't use the below:
\method{findGraphicsDevice}{System}(static, devices=list(png), maxCount=100, sleepInterval=0.1, findGhostscript=TRUE, ...)
}

 \arguments{
   \item{devices}{A \code{\link[base]{list}} of graphics device driver \code{\link[base]{function}}s to be
     tested.}
   \item{maxCount}{The maximum number of subsequent tests for the
     the existances of \code{bitmap()} generated image files.}
   \item{sleepInterval}{The time in seconds between above subsequent
     tests.}
   \item{findGhostscript}{If \code{\link[base:logical]{TRUE}}, ghostscript, which is needed by
     the \code{bitmap()} device, is searched for on the current system.
     If found, its location is recorded.}
   \item{...}{Not used.}
 }

 \value{
  Returns a \code{\link[base]{function}} that generates images, or \code{\link[base]{NULL}}.
 }

 \author{Henrik Bengtsson}

 \examples{
   fcn <- System$findGraphicsDevice();
   if (identical(fcn, png)) {
     cat("PNG device found: png()");
   } else if (identical(fcn, bitmap)) {
     cat("PNG device found: bitmap()");
   } else {
     cat("PNG device not found.");
   }
 }

 \seealso{
   For supported graphical devices, see \code{\link{capabilities}}().
   \code{\link[grDevices]{png}},
   \code{bitmap()} and \code{\link[grDevices]{dev2bitmap}}.
   \code{\link[R.utils:findGhostscript.System]{*findGhostscript}()}.
   For more information see \code{\link{System}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{device}
