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

 \usage{devNew(type=getOption("device"), ..., label=NULL)}

 \arguments{
   \item{type}{A \code{\link[base]{character}} string specifying the type of device to be
     opened. This string should match the name of an existing device
     \code{\link[base]{function}}.}
   \item{...}{Arguments passed to the device \code{\link[base]{function}}.}
   \item{label}{An optional \code{\link[base]{character}} string specifying the label of the
     opened device.}
 }

 \value{
   Returns what the device \code{\link[base]{function}} returns.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{devDone}}() and \code{\link{devOff}}().
 }



\keyword{device}
\keyword{utilities}
