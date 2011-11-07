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

 \usage{devOptions(type=c("bmp", "cairo_pdf", "cairo_ps", "eps", "jpeg", "jpeg2", "pdf", "pictex", "png", "png2", "postscript", "quartz", "svg", "tiff", "windows", "x11", "xfig"), custom=TRUE, special=TRUE, ..., reset=FALSE)}

 \arguments{
   \item{type}{A \code{\link[base]{character}} string specifying the device.}
   \item{custom}{If \code{\link[base:logical]{TRUE}}, also the default settings specific to this
      function is returned. For more details, see below.}
   \item{special}{A \code{\link[base]{logical}}.  For more details, see below.}
   \item{...}{Optional named arguments for setting new defaults.
      For more details, see below.}
   \item{reset}{If \code{\link[base:logical]{TRUE}}, the device options are reset to R defaults.}
 }

 \value{
   Returns a named \code{\link[base]{list}}.
   If the requested device does not exists (certain devices are OS
   specific), then an empty \code{\link[base]{list}} is returned.
 }

 \details{
  If argument \code{special} is \code{\link[base:logical]{TRUE}}, then the 'width' and 'height'
  options are adjusted according to the rules explained for
  argument 'paper' in \code{\link[grDevices]{pdf}}, \code{\link[grDevices]{postscript}},
  and \code{\link[grDevices]{xfig}}.
 }

 \section{Setting new defaults}{
  When setting device options, the \code{getOption("devOptions")[[type]]}
  option is modified.  This means that for such options to be effective,
  any device function needs to query also such options, which for instance
  is done by \code{\link{devNew}}().

  Also, for certain devices (eps, pdf, postscript, quartz, windows and x11),
  builtin R device options are set.
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
