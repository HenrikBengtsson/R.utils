%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{findGhostscript.System}
\alias{findGhostscript.System}
\alias{System.findGhostscript}
\alias{findGhostscript.System}
\alias{findGhostscript,System-method}


 \title{Searches for the ghostview binary on the current system}

 \description{
   Searches for the ghostview binary on the current system.

   Currently only Windows and Unix is supported.
 }

 \synopsis{findGhostscript.System(static, updateRGSCMD=TRUE, ...)}
\usage{System$findGhostscript(updateRGSCMD=TRUE, ...)}

 \arguments{
   \item{updateRGSCMD}{If \code{\link[base:logical]{TRUE}} and ghostscript is found, then the system
     environment variable \code{R_GSCMD} is set to the (first) path found.
     This variable is used by the \code{bitmap()} device.}
   \item{...}{Not used.}
 }


 \value{
   Returns a \code{\link[base]{vector}} of full pathnames where ghostscript is found.
 }

 \examples{\dontrun{
   print(System$findGhostscript())
 }}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[base]{Sys.getenv}}().
   \code{\link[grDevices]{dev2bitmap}}.
   For more information see \code{\link{System}}.
 }
\keyword{internal}
\keyword{methods}
