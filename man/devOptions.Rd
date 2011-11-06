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

 \usage{devOptions(type=c("bmp", "cairo_pdf", "cairo_ps", "eps", "jpeg", "pdf", "pictex", "png", "postscript", "svg", "tiff", "windows", "x11", "xfig"), special=TRUE, ...)}

 \arguments{
   \item{type}{A \code{\link[base]{character}} string specifying the device.}
   \item{special}{A \code{\link[base]{logical}}.  For more details, see below.}
   \item{...}{Optional named arguments that overrides the
     default options.}
 }

 \value{
   Returns a named \code{\link[base]{list}}.
 }

 \details{
  If argument \code{special} is \code{\link[base:logical]{TRUE}}, then the 'width' and 'height'
  options are adjusted according to the rules explained for
  argument 'paper' in \code{\link[grDevices]{pdf}}, "grDevices::postscript",
  and "grDevices::xfig".
 }

 \examples{
# Tabulate some of the default settings for known devices
knownDevices <- eval(formals(devOptions)$type)
fields <- c("width", "height", "bg", "fg", "pointsize")
opts <- sapply(knownDevices, FUN=function(type) {
  devOptions(type)[fields]
})
rownames(opts) <- fields
opts <- t(opts)
print(opts)
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{device}
\keyword{utilities}
