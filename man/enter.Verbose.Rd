%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{enter.Verbose}
\alias{enter.Verbose}
\alias{Verbose.enter}
\alias{enter,Verbose-method}

 \title{Writes a message and indents the following output}

 \description{
   Writes a message and indents the following output.
   The output is indented according to \code{\link[R.utils:enter.Verbose]{*enter}()}/\code{\link[R.utils:exit.Verbose]{*exit}()}
   calls.
 }

 \usage{
\method{enter}{Verbose}(this, ..., indent=this$indentStep, sep="", suffix="...", level=this$defaultLevel)
}

 \arguments{
  \item{...}{Objects to be passed to \code{\link[R.utils:cat.Verbose]{*cat}()}.}
  \item{indent}{The number of characters to add to the indentation.}
  \item{sep}{The default separator \code{\link[base]{character}} string.}
  \item{suffix}{A \code{\link[base]{character}} string to be appended to the end of the message.}
  \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
 }

 \value{
   Returns nothing.
 }

 \author{Henrik Bengtsson}

 \seealso{
   For more information see \code{\link{Verbose}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
