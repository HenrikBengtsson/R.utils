%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{printf.Verbose}
\alias{printf.Verbose}
\alias{Verbose.printf}
\alias{printf,Verbose-method}

 \title{Formats and prints object if above threshold}

 \description{
   Formats and prints object if above threshold.
   The output is indented according to \code{\link[R.utils:enter.Verbose]{*enter}()}/\code{\link[R.utils:exit.Verbose]{*exit}()}
   calls.
 }

 \usage{
\method{printf}{Verbose}(this, fmtstr, ..., level=this$defaultLevel, timestamp=this$.timestamp)
}

 \arguments{
  \item{...}{Objects to be passed to \code{\link[base]{sprintf}}().}
  \item{fmtstr}{A \code{\link[base]{character}} string specify the printf format string.}
  \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
  \item{timestamp}{A \code{\link[base]{logical}} indicating if output should start with a
     timestamp, or not.}
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
