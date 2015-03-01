%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  compressFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{compressFile}
\alias{compressFile.default}
\alias{compressFile}
\alias{decompressFile}
\alias{decompressFile.default}
\alias{isCompressedFile}
\alias{isCompressedFile.default}
\alias{bzip2}
\alias{bzip2.default}
\alias{bunzip2}
\alias{bunzip2.default}
\alias{isBzipped}
\alias{isBzipped.default}
\alias{gzip}
\alias{gzip.default}
\alias{gunzip}
\alias{gunzip.default}
\alias{isGzipped}
\alias{isGzipped.default}
%% \alias{xz}
%% \alias{xz.default}
%% \alias{unxz}
%% \alias{unxz.default}
%% \alias{isXzipped}
%% \alias{isXzipped.default}

\title{Compressing and decompressing files}

\usage{
 \method{compressFile}{default}(filename, destname=sprintf("\%s.\%s", filename, ext), ext, FUN,
  temporary=FALSE, skip=FALSE, overwrite=FALSE, remove=TRUE, BFR.SIZE=1e+07, ...)
 \method{decompressFile}{default}(filename, destname=gsub(sprintf("[.]\%s$", ext), "", filename,
  ignore.case = TRUE), ext, FUN, temporary=FALSE, skip=FALSE, overwrite=FALSE,
  remove=TRUE, BFR.SIZE=1e+07, ...)
 \method{isCompressedFile}{default}(filename, method=c("extension", "content"), ext, fileClass, ...)
 \method{bzip2}{default}(filename, ..., ext="bz2", FUN=bzfile)
 \method{bunzip2}{default}(filename, ..., ext="bz2", FUN=bzfile)
 \method{gzip}{default}(filename, ..., ext="gz", FUN=gzfile)
 \method{gunzip}{default}(filename, ..., ext="gz", FUN=gzfile)
}

\description{
 Compressing and decompressing files such as gzip:ed and bzip2:ed files.
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
 \item{...}{Passed to the underlying function or alternatively not used.}
 \item{method}{A \code{\link[base]{character}} string specifying how to infer whether
   a file is compressed or not.}
 \item{ext, fileClass, FUN}{(internal) Filename extension, file class,
   and a connection \code{\link[base]{function}} used to read from/write to file.}
}

\value{
  Returns the pathname of the output file.
  The number of bytes processed is returned as an attribute.

  \code{isCompressedFile()} etc. return a \code{\link[base]{logical}}.
}

\details{
  Internally \code{bzfile()} and \code{gzfile()}
  (see \code{\link[base]{connections}}) are used to read (write) files.
  If the process is interrupted before completed, the partially written
  output file is automatically removed.
}

\examples{
  ## bzip2
  cat(file="foo.txt", "Hello world!")
  print(isBzipped("foo.txt"))
  print(isBzipped("foo.txt.bz2"))

  bzip2("foo.txt")
  print(file.info("foo.txt.bz2"))
  print(isBzipped("foo.txt"))
  print(isBzipped("foo.txt.bz2"))

  bunzip2("foo.txt.bz2")
  print(file.info("foo.txt"))

  ## gzip
  cat(file="foo.txt", "Hello world!")
  print(isGzipped("foo.txt"))
  print(isGzipped("foo.txt.gz"))

  gzip("foo.txt")
  print(file.info("foo.txt.gz"))
  print(isGzipped("foo.txt"))
  print(isGzipped("foo.txt.gz"))

  gunzip("foo.txt.gz")
  print(file.info("foo.txt"))

  ## Cleanup
  file.remove("foo.txt")
}

\author{Henrik Bengtsson}



\keyword{file}
\keyword{programming}
