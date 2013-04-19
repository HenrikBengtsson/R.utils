%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  TextStatusBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{flush.TextStatusBar}
\alias{flush.TextStatusBar}
\alias{TextStatusBar.flush}
\alias{flush,TextStatusBar-method}

 \title{Flushes the output}

 \description{
   Flushes the output.
 }

 \usage{
\method{flush}{TextStatusBar}(con, ...)
}

 \arguments{
  \item{...}{Arguments passed to \code{\link[base]{cat}}().}
 }

 \value{
   Returns nothing.
 }

 \details{
   All this methods does is to call \code{\link[utils]{flush.console}}, which
   flushes the output to the console.
 }

 \author{Henrik Bengtsson}

 \seealso{
   \code{\link[utils]{flush.console}}.
   For more information see \code{\link{TextStatusBar}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
