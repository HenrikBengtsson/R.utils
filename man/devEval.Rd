%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  deviceUtils.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{devEval}
\alias{devEval}


 \title{Opens a new device, evaluate (graphing) code, and closes device}

 \description{
  Opens a new device, evaluate (graphing) code, and closes device.
 }

 \usage{devEval(type=getOption("device"), expr, envir=parent.frame(), name="Rplot", tags=NULL, ..., ext=substitute(type), filename=sprintf("\%s.\%s", paste(c(name, tags), collapse = ","), ext), path=getOption("devEval/args/path", "figures/"), field=NULL, onIncomplete=c("remove", "rename", "keep"), force=getOption("devEval/args/force", TRUE))}

 \arguments{
   \item{type}{Specifies the type of device to be used by
     \code{\link[R.utils]{devNew}}.}
   \item{expr}{The \code{\link[base]{expression}} of graphing commands to be evaluated.}
   \item{envir}{The \code{\link[base]{environment}} where \code{expr} should be evaluated.}
   \item{name, tags}{The fullname name of the image is specified
     as the name with optional comma-separated tags appended.}
   \item{ext}{The filename extension of the image file generated, if any.
    By default, it is inferred from argument \code{type}.}
   \item{...}{Additional arguments passed to \code{\link[R.utils]{devNew}}.}
   \item{filename}{The filename of the image saved, if any.
     See also below.}
   \item{path}{The directory where then image should be saved, if any.}
   \item{field}{An optional \code{\link[base]{character}} string specifying a specific
     field of the named result \code{\link[base]{list}} to be returned.}
   \item{onIncomplete}{A \code{\link[base]{character}} string specifying what to do with
     an image file that was incompletely generated due to an interrupt
     or an error.}
   \item{force}{If \code{\link[base:logical]{TRUE}}, and the image file already exists, then it is
     overwritten, otherwise not.}
 }

 \value{
   Returns a named \code{\link[base]{list}} with items specifying for instance
   the pathname, the fullname etc of the generated image.
   If argument \code{field} is given, then the value of the
   corresponding element is returned.
   \emph{Note that the return value may be changed in future releases.}
 }

 \section{Generated image file}{
   If created, the generated image file is saved in the directory
   specfied by argument \code{path} with a filename consisting of
   the \code{name} followed by optional comma-separated \code{tags}
   and a filename extension given by argument \code{ext}.

   By default, the image file is only created if the \code{expr}
   is evaluated completely.  If it is, for instance, interrupted
   by the user or due to an error, then any incomplete/blank image
   file that was created will be removed.  This behavior can be
   turned of using argument \code{onIncomplete}.
 }

 \examples{
res <- devEval("png", name="MyPlot", tags=c("10", "rnd"), aspectRatio=0.7, {
  plot(1:10)
})
print(res$pathname)
# [1] "figures/MyPlot,10,rnd.png"

res <- devEval("pdf", name="MyPlot", tags=c("10", "rnd"), aspectRatio=0.7, {
  plot(1:10)
})
print(res$pathname)
# [1] "figures/MyPlot,10,rnd.pdf"

res <- devEval("eps", name="MyPlot", tags=c("10", "rnd"), aspectRatio=0.7, {
  plot(1:10)
})
print(res$pathname)
# [1] "figures/MyPlot,10,rnd.eps"
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   To change default device parameters such as the width or the height,
   \code{\link{devOptions}}().
   \code{\link{devNew}}().
 }



\keyword{device}
\keyword{utilities}
