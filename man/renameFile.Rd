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

\title{Renames a file (or a directory) atomically/safely}

\description{
 Renames a file (or a directory) atomically/safely,
 by also asserting that it was successfully renamed without side effects.
 If failing to rename and overwrite an existing file, the original file
 is kept.
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
