%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  deviceUtils.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{devSet}
\alias{devSet}


 \title{Activates a device}

 \description{
  Activates a device.
 }

 \usage{devSet(which=dev.next(), ...)}

 \arguments{
   \item{which}{An index (\code{\link[base]{numeric}}) or a label (\code{\link[base]{character}}).}
   \item{...}{Not used.}
 }

 \value{
   Returns what \code{\link[grDevices]{dev.set}} returns.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{devOff}}() and \code{\link{devDone}}().
   Internally, \code{\link[grDevices]{dev.set}} is used.
 }



\keyword{device}
\keyword{utilities}
