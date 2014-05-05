%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getReadablePathname}
\alias{Arguments$getReadablePathname}
\alias{getReadablePathname.Arguments}
\alias{Arguments.getReadablePathname}
\alias{getReadablePathname,Arguments-method}

\title{Gets a readable pathname}

\description{
 Gets a readable pathname.
}

\usage{
## Static method (use this):
## Arguments$getReadablePathname(file=NULL, path=NULL, mustExist=TRUE,
##   absolutePath=FALSE, adjust=c("none", "url"), ...)

## Don't use the below:
\method{getReadablePathname}{Arguments}(static, file=NULL, path=NULL, mustExist=TRUE, absolutePath=FALSE,
  adjust=c("none", "url"), ...)
}

\arguments{
  \item{file}{A \code{\link[base]{character}} string specifying the file.}
  \item{path}{A \code{\link[base]{character}} string specifying the path.}
  \item{mustExist}{If \code{\link[base:logical]{TRUE}}, the pathname must exists and be readable,
    otherwise an exception is thrown. If \code{\link[base:logical]{FALSE}}, no such test is
    performed.}
  \item{absolutePath}{If \code{\link[base:logical]{TRUE}}, the absolute pathname is returned.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string of the absolute pathname of the file.
}

\section{Missing values}{
  If \code{file} or \code{path} is \code{\link[base]{NA}} and \code{mustExist} is \code{\link[base:logical]{FALSE}},
  then (character) \code{\link[base]{NA}} is returned, otherwise an exception is thrown.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[R.utils:getWritablePathname.Arguments]{*getWritablePathname}()}
  \code{\link[R.utils]{filePath}}.
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
