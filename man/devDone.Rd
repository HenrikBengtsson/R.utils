%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  deviceUtils.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{devDone}
\alias{devDone}


 \title{Closes an open device unless it is a on-screen (interactive) device}

 \description{
  Closes an open device unless it is a on-screen (interactive) device.
 }

 \usage{devDone(which=dev.cur(), ...)}

 \arguments{
   \item{which}{An index (\code{\link[base]{numeric}}) or a label (\code{\link[base]{character}}).}
   \item{...}{Not used.}
 }

 \value{
   Returns nothing.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{devOff}}().
   \code{\link[grDevices]{dev.interactive}}.
 }



\keyword{device}
\keyword{utilities}
