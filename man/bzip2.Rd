%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  bzip2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{bzip2}
\alias{bzip2.default}
\alias{bzip2}
\alias{bunzip2}
\alias{bunzip2.default}
\alias{isBzipped}

\title{Bzip/Bunzip a file}

\usage{
 \method{bzip2}{default}(filename, destname=sprintf("\%s.bz2", filename), temporary=FALSE, skip=FALSE,
  overwrite=FALSE, remove=TRUE, BFR.SIZE=1e+07, ...)
 \method{bunzip2}{default}(filename, destname=gsub("[.]bz2$", "", filename), overwrite=FALSE, remove=TRUE,
  BFR.SIZE=1e+07, ...)
}

\usage{
\method{bzip2}{default}(filename, destname=sprintf("\%s.bz2", filename), temporary=FALSE, skip=FALSE,
  overwrite=FALSE, remove=TRUE, BFR.SIZE=1e+07, ...)
}

\description{
 Bzip/Bunzip a file.
}

\arguments{
 \item{filename}{Pathname of input file.}
 \item{destname}{Pathname of output file.}
 \item{temporary}{If \code{\link[base:logical]{TRUE}}, the output file is created in a
   temporary directory.}
 \item{skip}{If \code{\link[base:logical]{TRUE}} and the output file already exists,
   the output file is returned as is.}
 \item{overwrite}{If \code{\link[base:logical]{TRUE}} and the output file already exists,
   the file is silently overwritting, otherwise an exception is
   thrown (unless \code{skip} is \code{\link[base:logical]{TRUE}}).}
 \item{remove}{If \code{\link[base:logical]{TRUE}}, the input file is removed afterward,
   otherwise not.}
 \item{BFR.SIZE}{The number of bytes read in each chunk.}
  \item{...}{Not used.}
}

\value{
  Returns the pathname of the output file.
  The number of bytes processed is returned as an attribute.
  \code{isBzipped()} returns a \code{\link[base]{logical}}.
}

\details{
  Internally \code{bzfile()} (see \code{\link[base]{connections}}) is used to
  read (write) chunks to (from) the bzip2 file.
  If the process is interrupted before completed, the partially written
  output file is automatically removed.
}

\examples{
  cat(file="foo.txt", "Hello world!")
  print(isBzipped("foo.txt"))
  print(isBzipped("foo.txt.bz2"))

  bzip2("foo.txt")
  print(file.info("foo.txt.bz2"))
  print(isBzipped("foo.txt"))
  print(isBzipped("foo.txt.bz2"))

  bunzip2("foo.txt.bz2")
  print(file.info("foo.txt"))

  file.remove("foo.txt")
}

\author{Henrik Bengtsson}



\keyword{file}
\keyword{programming}
