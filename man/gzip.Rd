%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  gzip.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{gzip}
\alias{gzip.default}
\alias{gzip}
\alias{gunzip}
\alias{gunzip.default}
\alias{isGzipped}

\title{Gzip/Gunzip a file}

\usage{
 \method{gzip}{default}(filename, destname=sprintf("\%s.gz", filename), temporary=FALSE, overwrite=FALSE,
  remove=TRUE, BFR.SIZE=1e+07, ...)
 \method{gunzip}{default}(filename, destname=gsub("[.]gz$", "", filename, ignore.case = TRUE),
  temporary=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e+07, ...)
}

\description{
 Gzip/Gunzip a file.
}

\arguments{
 \item{filename}{Pathname of input file.}
 \item{destname}{Pathname of output file.}
 \item{temporary}{If \code{\link[base:logical]{TRUE}}, the output file is created in a
   temporary directory.}
 \item{overwrite}{If the output file already exists, then if
   \code{overwrite} is \code{\link[base:logical]{TRUE}} the file is silently overwritting,
   otherwise an exception is thrown.}
 \item{remove}{If \code{\link[base:logical]{TRUE}}, the input file is removed afterward,
   otherwise not.}
 \item{BFR.SIZE}{The number of bytes read in each chunk.}
  \item{...}{Not used.}
}

\value{
  Returns the pathname of the output file.
  The number of output bytes processed is returned as an attribute.
  \code{isGzipped()} returns a \code{\link[base]{logical}}.
}

\details{
  Internally \code{gzfile()} (see \code{\link[base]{connections}}) is used to
  read (write) chunks to (from) the gzip file.
  If the process is interrupted before completed, the partially written
  output file is automatically removed.
}

\examples{
  cat(file="foo.txt", "Hello world!")
  print(isGzipped("foo.txt"))
  print(isGzipped("foo.txt.gz"))

  gzip("foo.txt")
  print(file.info("foo.txt.gz"))
  print(isGzipped("foo.txt"))
  print(isGzipped("foo.txt.gz"))

  gunzip("foo.txt.gz")
  print(file.info("foo.txt"))

  file.remove("foo.txt")
}

\author{Henrik Bengtsson}



\keyword{file}
\keyword{programming}
