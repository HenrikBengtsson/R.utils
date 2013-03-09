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
## Arguments$getWritablePathname(..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE, maxTries=5)

## Don't use the below:
\method{getWritablePathname}{Arguments}(static, ..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE, maxTries=5)
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
    method should try to create a missing directory before giving up.}
}

\value{
 Returns a \code{\link[base]{character}} string of the pathname of the file.
 If the argument was invalid an \code{\link[R.oo]{Exception}} is thrown.
}

\section{Missing values}{
  If any argument in \code{...} is \code{\link[base]{NA}}, an exception is thrown.
}

\section{Slow file systems}{
  On very rare occassions, we have observed on a large shared file
  system that if one tests for the existance of a directory immediately
  after creating it with \code{\link[base]{dir.create}}(), it may appear not
  to be created.  We believe this is due to the fact that there is a
  short delay between creating a directory and that information being
  fully propagated on the file system.  To minimize the risk for such
  false assertions on "slow" file systems, this method tries to create
  a missing directory multiple times (argument \code{maxTries}) (while
  waiting a short period of time between each round) before giving up.
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
