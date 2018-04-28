%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  VComments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{convertComment.VComments}
\alias{convertComment.VComments}
\alias{VComments.convertComment}
\alias{convertComment,VComments-method}

 \title{Converts a verbose comment to R code}

 \description{
   Converts a verbose comment to R code.
 }

 \usage{
\method{convertComment}{VComments}(this, vcomment, .currLine=NA, .line=NA, ...)
}

 \arguments{
  \item{vcomment}{A vcomment \code{\link[base]{list}} structure.}
  \item{.currLine, .line}{A line number and the line currently processed.
      Used for error message and warnings.}
  \item{...}{Not used.}
 }

 \value{
   Returns one \code{\link[base]{character}} string of \R code.
 }

 \author{Henrik Bengtsson}

 \seealso{
   For more information see \code{\link{VComments}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
