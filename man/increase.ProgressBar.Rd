%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  ProgressBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{increase.ProgressBar}
\alias{increase.ProgressBar}
\alias{ProgressBar.increase}
\alias{increase.ProgressBar}
\alias{increase,ProgressBar-method}


 \title{Increases (steps) progress bar}

 \description{
   Increases (steps) progress bar.
 }

 \usage{
\method{increase}{ProgressBar}(this, stepLength=this$stepLength, visual=TRUE, ...)
}

 \arguments{
  \item{stepLength}{Positive or negative step length.}
  \item{...}{Not used.}
 }

 \value{
   Returns new value.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:setValue.ProgressBar]{*setValue}()}.
   For more information see \code{\link{ProgressBar}}.
 }
\keyword{internal}
\keyword{methods}
