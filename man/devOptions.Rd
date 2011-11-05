%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  devOptions.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{devOptions}
\alias{devOptions}


 \title{Gets the default device options}

 \description{
  Gets the default device options as given by predefined devices options adjusted for
  the default arguments of the device function.
 }

 \usage{devOptions(type, special=TRUE, ...)}

 \arguments{
   \item{type}{A \code{\link[base]{character}} string specifying the device.}
   \item{special}{If \code{\link[base:logical]{TRUE}}, 'width' and 'height' options will be
     adjusted according to rules special to the particular device.}
   \item{...}{Not used.}
 }

 \value{
   Returns names \code{\link[base]{list}}.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{device}
\keyword{utilities}
