#########################################################################/**
# @RdocFunction eps
# 
# @title "EPS graphics device"
# 
# \description{
#  Device driver for Encapsulated Postscript. This driver is the same as
#  the postscript driver where some arguments have different default values.
# }
# 
# @synopsis
#
# \arguments{
#   \item{file}{Default file name (pattern).}
#   \item{width, height}{The width and height of the figure.}
#   \item{horizontal}{If @FALSE, an horizontal EPS file is created,
#         otherwise a portrait file is created.}
#   \item{paper}{A @character string specifying the paper type. Overrides
#         the default of \code{postscript()}.}
#   \item{...}{Other arguments accepted by \code{postscript()}.}
# }
#
# \value{
#   A plot device is opened; nothing is returned.
# }
# 
# \examples{\dontrun{
#   eps("foo.eps", width=7, height=7)
#
#   # is identical to
#
#   postscript("foo.eps", width=7, height=7, onefile=TRUE, horizontal=FALSE)
#
#   # and
#
#   dev.print(eps, "foo.eps", ...)
#
#   # is identical to
#
#   dev.print(postscript, "foo.eps", onefile=TRUE, horizontal=FALSE, paper="special", ...)
# }}
#
# \keyword{device}
#
# \seealso{
#   @see "grDevices::postscript".
# }
#
# @author
#*/#########################################################################
eps <- function(file="Rplot%03d.eps", width=7, height=7, horizontal=FALSE, paper="special", ...) {
  postscript(file=file, width=width, height=height, horizontal=horizontal, paper=paper, onefile=FALSE, ...);
}


############################################################################
# HISTORY:
# 2011-11-05
# o Added default 'width' and 'height' values to eps().
# 2010-01-22
# o Added description to Rd argument 'paper'.
# 2007-12-07
# o The default EPS file had extension *.ps not *.eps.
# 2005-01-16
# o Corrected argument in example code from 'onepage' to 'onefile'.
# 2004-02-01
# o Added argument paper="special".
# 2001-06-04
# o Created.
############################################################################

