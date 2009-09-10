%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  deviceUtils.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{devOff}
\alias{devOff}


 \title{Closes a device}

 \description{
  Closes a device.
 }

 \usage{devOff(which=dev.cur(), ...)}

 \arguments{
   \item{which}{An index (\code{\link[base]{numeric}}) or a label (\code{\link[base]{character}}).}
   \item{...}{Not used.}
 }

 \value{
   Returns what \code{\link[grDevices:dev]{dev.off}()} returns.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{devDone}}().
   Internally, \code{\link[grDevices:dev]{dev.off}()} is used.
 }



\keyword{device}
\keyword{utilities}
