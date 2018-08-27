%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getReadablePathnames}
\alias{Arguments$getReadablePathnames}
\alias{getReadablePathnames.Arguments}
\alias{Arguments.getReadablePathnames}
\alias{getReadablePathnames,Arguments-method}

\title{Gets a readable pathname}

\description{
 Gets a readable pathname.
}

\usage{
## Static method (use this):
## Arguments$getReadablePathnames(files=NULL, paths=NULL, ...)

## Don't use the below:
\method{getReadablePathnames}{Arguments}(static, files=NULL, paths=NULL, ...)
}

\arguments{
  \item{files}{A \code{\link[base]{character}} \code{\link[base]{vector}} of filenames.}
  \item{paths}{A \code{\link[base]{character}} \code{\link[base]{vector}} of paths.}
  \item{...}{Arguments passed to \code{\link[R.utils:getReadablePathname.Arguments]{*getReadablePathname}()}.}
}

\value{
 Returns a \code{\link[base]{character}} \code{\link[base]{vector}} of the pathnames for the files.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[R.utils:getReadablePathname.Arguments]{*getReadablePathname}()}
  \code{\link[R.utils]{filePath}}.
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
