%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getWritablePathname.Arguments}
\alias{getWritablePathname.Arguments}
\alias{Arguments.getWritablePathname}
\alias{getWritablePathname.Arguments}
\alias{getWritablePathname,Arguments-method}


\title{Gets a writable pathname}

\description{
 Gets a writable pathname.
}

\synopsis{getWritablePathname.Arguments(static, ..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE)}
\usage{Arguments$getWritablePathname(..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE)}

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
}

\value{
 Returns a \code{\link[base]{character}} string of the pathname of the file.
 If the argument was invalid an \code{\link[R.oo]{Exception}} is thrown.
}

\section{Missing values}{
  If any argument in \code{...} is \code{\link[base]{NA}}, an exception is thrown.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.utils:getReadablePathname.Arguments]{*getReadablePathname}()}.
  \code{\link[R.utils]{filePath}}.
  \code{\link[R.utils]{mkdirs}}.
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
