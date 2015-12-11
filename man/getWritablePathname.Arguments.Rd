%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getWritablePathname}
\alias{Arguments$getWritablePathname}
\alias{getWritablePathname.Arguments}
\alias{Arguments.getWritablePathname}
\alias{getWritablePathname,Arguments-method}

\title{Gets a writable pathname}

\description{
 Gets a writable pathname.
}

\usage{
## Static method (use this):
## Arguments$getWritablePathname(..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE,
##   maxTries=5L)

## Don't use the below:
\method{getWritablePathname}{Arguments}(static, ..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE,
  maxTries=5L)
}

\arguments{
  \item{...}{Arguments passed to \code{\link[R.utils:getReadablePathname.Arguments]{*getReadablePathname}()}.}
  \item{mustExist}{If \code{\link[base:logical]{TRUE}} and the pathname does not exists,
    an Exception is thrown, otherwise not.}
  \item{mustNotExist}{If the file exists, and \code{mustNotExist} is
    \code{\link[base:logical]{TRUE}}, an Exception is thrown. If the file exists, and
    \code{mustNotExist} is \code{\link[base:logical]{FALSE}}, or the file does not exists, the
    pathname is accepted.}
  \item{mkdirs}{If \code{\link[base:logical]{TRUE}}, \code{mustNotExist} is \code{\link[base:logical]{FALSE}}, and the path to
    the file does not exist, it is (recursively) created.}
  \item{maxTries}{A positive \code{\link[base]{integer}} specifying how many times the
    method should try to create a missing directory before giving up.
    For more details, see \code{\link[R.utils]{mkdirs}}.}
}

\value{
 Returns a \code{\link[base]{character}} string of the pathname of the file.
 If the argument was invalid an \code{\link[R.oo]{Exception}} is thrown.
}

\section{Missing values}{
  If any argument in \code{...} is \code{\link[base]{NA}}, an exception is thrown.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[R.utils:getReadablePathname.Arguments]{*getReadablePathname}()}.
  \code{\link[R.utils]{filePath}}.
  \code{\link[R.utils]{mkdirs}}.
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
