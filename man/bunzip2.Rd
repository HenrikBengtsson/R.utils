%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  bunzip2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{bunzip2}
\alias{bunzip2.default}
\alias{bunzip2}

\title{Bunzip a file}

\usage{
\method{bunzip2}{default}(filename, destname=gsub("[.]bz2$", "", filename), overwrite=FALSE, remove=TRUE, BFR.SIZE=1e+07, ...)
}

\description{
 Bunzip a file.
}

\arguments{
 \item{filename}{Pathname of (bzip2'ed) input file to be bunzip2'ed.}
 \item{destname}{Pathname of output file.}
 \item{overwrite}{If the output file already exists, then if
   \code{overwrite} is \code{\link[base:logical]{TRUE}} the file is silently overwritting, otherwise
   an exception is thrown.}
 \item{remove}{If \code{\link[base:logical]{TRUE}}, the input file is removed afterward,
   otherwise not.}
 \item{BFR.SIZE}{The number of bytes read in each chunk.}
  \item{...}{Not used.}
}

\value{
  Returns the number of (input/compressed) bytes read.
}

\details{
  Internally \code{bzfile()} (see \code{\link[base]{connections}}) is used to
  read chunks of the bzip2'ed file, which are then written to the output
  file.
}

\author{Henrik Bengtsson}



\keyword{file}
\keyword{programming}
