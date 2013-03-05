%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  readRdHelp.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{readRdHelp}
\alias{readRdHelp.default}
\alias{readRdHelp}

 \title{Reads one or more Rd help files in a certain format}

 \description{
  Reads one or more Rd help files in a certain format.
 }

 \usage{
\method{readRdHelp}{default}(..., format=c("text", "html", "latex", "rd"), drop=TRUE)
}

 \arguments{
   \item{...}{Arguments passed to \code{\link[utils]{help}}.}
   \item{format}{A \code{\link[base]{character}} string specifying the return type.}
   \item{drop}{If \code{\link[base:logical]{FALSE}} or more than one help entry is found, the result
     is returned as a \code{\link[base]{list}}.}
 }

 \value{
   Returns a \code{\link[base]{list}} of \code{\link[base]{character}} strings or a single \code{\link[base]{character}} string.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}


\keyword{programming}
