%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  SmartComments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{parse.SmartComments}
\alias{parse.SmartComments}
\alias{SmartComments.parse}
\alias{parse.SmartComments}
\alias{parse,SmartComments-method}


 \title{Parses one single smart comment}

 \description{
   Parses one single smart comment.
 }

 \usage{\method{parse}{SmartComments}(this, lines, currLine, ..., letter=this$letter, pattern=NULL)}

 \arguments{
  \item{lines}{A \code{\link[base]{character}} \code{\link[base]{vector}} of lines of code containing smart
                                                           comments (only).}
  \item{currLine}{The line number on which to smart smart comment begins.}
  \item{...}{Not used.}
  \item{letter}{The letter of the smart comment. Available to avoid lookup
     at every line.}
  \item{pattern}{The pattern of the smart comment.}
  \item{letter}{The letter of the smart comment. Available to avoid lookup
     at every line.}
 }

 \value{
   Returns a \code{\link[base]{list}} structure.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{SmartComments}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
