%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  SmartComments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{compile.SmartComments}
\alias{compile.SmartComments}
\alias{SmartComments.compile}
\alias{compile,SmartComments-method}

 \title{Preprocess a vector of code lines}

 \description{
   Preprocess a vector of code lines.
 }

 \usage{
\method{compile}{SmartComments}(this, lines, trim=TRUE, excludeComments=FALSE, ...)
}

 \arguments{
  \item{lines}{A \code{\link[base]{character}} \code{\link[base]{vector}} of lines of code to be preprocessed.}
  \item{trim}{If \code{\link[base:logical]{TRUE}}, trailing whitespace characters are removed from
     every line of code, and contigous empty lines are replaced with a
     single empty line.}
  \item{excludeComments}{If \code{\link[base:logical]{TRUE}}, comments in the input lines, that is,
     also smart comments, are excluded.}
  \item{...}{Not used.}
 }

 \value{
   Returns a \code{\link[base]{character}} \code{\link[base]{vector}}.
 }

 \details{
  When called, the compiler is reset.

  Just before trimming is done, the validate() method is called. In the
  current class, this does nothing, but can be overridden in subclasses.
 }

 \author{Henrik Bengtsson}

 \seealso{
   For more information see \code{\link{SmartComments}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
