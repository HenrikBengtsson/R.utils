%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  eps.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{eps}
\alias{eps}


 \title{EPS graphics device}

 \description{
  Device driver for Encapsulated Postscript. This driver is the same as
  the postscript driver where some arguments have different default values.
 }

 \usage{eps(file="Rplot\%03d.eps", width=7, height=7, horizontal=FALSE, paper="special", ...)}

 \arguments{
   \item{file}{Default file name (pattern).}
   \item{width, height}{The width and height of the figure.}
   \item{horizontal}{If \code{\link[base:logical]{FALSE}}, an horizontal EPS file is created,
         otherwise a portrait file is created.}
   \item{paper}{A \code{\link[base]{character}} string specifying the paper type. Overrides
         the default of \code{postscript()}.}
   \item{...}{Other arguments accepted by \code{postscript()}.}
 }

 \value{
   A plot device is opened; nothing is returned.
 }

 \examples{\dontrun{
   eps("foo.eps", width=7, height=7)

   # is identical to

   postscript("foo.eps", width=7, height=7, onefile=TRUE, horizontal=FALSE)

   # and

   dev.print(eps, "foo.eps", ...)

   # is identical to

   dev.print(postscript, "foo.eps", onefile=TRUE, horizontal=FALSE, paper="special", ...)
 }}

 \keyword{device}

 \seealso{
   \code{\link[grDevices]{postscript}}.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

