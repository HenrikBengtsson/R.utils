%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  renameFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{renameFile}
\alias{renameFile.default}
\alias{renameFile}

\title{Renames a file safely}

\description{
 Renames a file safely by also asserting that it was correctly renamed without
 side effects.
}

\usage{
\method{renameFile}{default}(pathname, newPathname, overwrite=FALSE, ..., verbose=FALSE)
}

\arguments{
  \item{pathname}{The pathname of the file to be renamed.}
  \item{newPathname}{The new pathname.}
  \item{overwrite}{If \code{\link[base:logical]{TRUE}} and there exists a file with new pathname,
   then it is overwritten.}
  \item{...}{Not used.}
  \item{verbose}{See \code{\link[R.utils]{Verbose}}.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if the file was successfully renamed.
  If it failed, an exception is thrown.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base:files]{file.rename}()}.
}


\keyword{internal}
