%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{evaluate.Verbose}
\alias{evaluate.Verbose}
\alias{Verbose.evaluate}
\alias{evaluate.Verbose}
\alias{evaluate,Verbose-method}


 \title{Evaluates a function and prints its results if above threshold}

 \description{
   Evaluates a function and prints its results if above threshold.
   The output is \emph{not} indented.
 }

 \usage{
\method{evaluate}{Verbose}(this, fun, ..., level=this$defaultLevel)
}

 \arguments{
  \item{fun}{A \code{\link[base]{function}} to be evaluated (only if above threshold).}
  \item{...}{Additional arguments passed to the function.}
  \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
 }

 \value{
   Returns nothing.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{Verbose}}.
 }
\keyword{internal}
\keyword{methods}
