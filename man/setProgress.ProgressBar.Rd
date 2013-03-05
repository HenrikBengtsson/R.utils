%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ProgressBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{setProgress.ProgressBar}
\alias{setProgress.ProgressBar}
\alias{ProgressBar.setProgress}
\alias{setProgress,ProgressBar-method}

 \title{Sets current progress}

 \description{
   Sets current progress.
 }

 \usage{
\method{setProgress}{ProgressBar}(this, progress, visual=TRUE, ...)
}

 \arguments{
  \item{progress}{A \code{\link[base]{double}} in [0,1] specifying the relative progress.}
  \item{visual}{If \code{\link[base:logical]{TRUE}}, the progress bar is redraw, otherwise not.}
  \item{...}{Not used.}
 }

 \value{
   Returns old value.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:setValue.ProgressBar]{*setValue}()}.
   \code{\link[R.utils:increase.ProgressBar]{*increase}()}.
   \code{\link[R.utils:reset.ProgressBar]{*reset}()}.
   For more information see \code{\link{ProgressBar}}.
 }
\keyword{internal}
\keyword{methods}
