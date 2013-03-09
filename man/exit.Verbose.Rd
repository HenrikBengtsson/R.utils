%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{exit.Verbose}
\alias{exit.Verbose}
\alias{Verbose.exit}
\alias{exit,Verbose-method}

 \title{Writes a message and unindents the following output}

 \description{
   Writes a message and unindents the following output.
   The output is indented according to \code{\link[R.utils:enter.Verbose]{*enter}()}/\code{\link[R.utils:exit.Verbose]{*exit}()}
   calls.
 }

 \usage{
\method{exit}{Verbose}(this, ..., indent=-this$indentStep, sep="", suffix="...done", level=NULL)
}

 \arguments{
  \item{...}{Objects to be passed to \code{\link[R.utils:cat.Verbose]{*cat}()}. If not specified
      the message used in the corresponding \code{\link[R.utils:enter.Verbose]{*enter}()} call is used.}
  \item{indent}{The number of characters to be removed from the indentation.}
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
