%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  writeDataFrame.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{writeDataFrame.data.frame}
\alias{writeDataFrame.data.frame}

 \title{Writes a data.frame to tabular text file}

 \usage{
\method{writeDataFrame}{data.frame}(data, file, path=NULL, sep="	", quote=FALSE, row.names=FALSE, col.names=TRUE, ..., header=list(), createdBy=NULL, createdOn=format(Sys.time(), format = "\%Y-\%m-\%d \%H:\%M:\%S \%Z"), nbrOfRows=nrow(data), headerPrefix="# ", headerSep=": ", append=FALSE, overwrite=FALSE)
}

 \description{
  Writes a data.frame to tabular text file with an optional header.
 }

 \arguments{
   \item{data}{A \code{\link[base]{data.frame}}.}
   \item{file}{A \code{\link[base:connections]{connection}} or a filename to write to.}
   \item{path}{The directory where the file will be written.}
   \item{sep, quote, row.names, col.names, ...}{Additional arguments
     passed to \code{\link[utils]{write.table}}.}
   \item{header}{An optional named \code{\link[base]{list}} of header rows to be written
     at the beginning of the file.  If \code{\link[base]{NULL}}, no header will be written.}
   \item{createdBy, createdOn, nbrOfRows}{If non-\code{\link[base]{NULL}}, common header
     rows to be added to the header.}
   \item{headerPrefix}{A \code{\link[base]{character}} string specifying the prefix of each
     header row.}
   \item{headerSep}{A \code{\link[base]{character}} string specifying the character
     separating the header name and header values.}
   \item{append}{If \code{\link[base:logical]{TRUE}}, the output is appended to an existing file.}
   \item{overwrite}{If \code{\link[base:logical]{TRUE}}, an existing file is overwritten.}
 }

 \value{
   Returns (invisibly) the pathname to the file written
   (or the \code{\link[base:connections]{connection}} written to).
 }

 \author{Henrik Bengtsson}

 \seealso{
  \code{\link[utils]{write.table}}.
  \code{\link{readTable}}().
 }


\keyword{methods}
\keyword{IO}
