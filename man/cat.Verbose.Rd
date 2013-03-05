%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{cat.Verbose}
\alias{cat.Verbose}
\alias{Verbose.cat}
\alias{cat.Verbose}
\alias{cat,Verbose-method}


 \title{Concatenates and prints objects if above threshold}

 \description{
   Concatenates and prints objects if above threshold.
   The output is indented according to \code{\link[R.utils:enter.Verbose]{*enter}()}/\code{\link[R.utils:exit.Verbose]{*exit}()}
   calls.
 }

 \usage{
\method{cat}{Verbose}(this, ..., sep="", newline=TRUE, level=this$defaultLevel, timestamp=this$.timestamp)
}

 \arguments{
  \item{...}{Objects to be passed to \code{\link[base]{cat}}().}
  \item{sep}{The default separator \code{\link[base]{character}} string.}
  \item{newline}{If \code{\link[base:logical]{TRUE}}, a newline is added at the end, otherwise not.}
  \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
  \item{timestamp}{A \code{\link[base]{logical}} indicating if output should start with a
     timestamp, or not.}
 }

 \value{
   Returns nothing.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:timestampOn.Verbose]{*timestampOn}()} and \code{timestampOff}().
   For more information see \code{\link{Verbose}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
