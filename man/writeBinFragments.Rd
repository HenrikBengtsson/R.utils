%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  writeBinFragments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{writeBinFragments}
\alias{writeBinFragments.default}
\alias{writeBinFragments}

 \title{Writes binary data to disjoint sections of a connection or a file}

 \usage{\method{writeBinFragments}{default}(con, object, idxs, size=NA, ...)}

 \description{
  Writes binary data to disjoint sections of a connection or a file.
 }

 \arguments{
   \item{con}{A \code{\link[base:connections]{connection}} or the pathname of an existing file.}
   \item{object}{A \code{\link[base]{vector}} of objects to be written.}
   \item{idxs}{A \code{\link[base]{vector}} of (non-duplicated) indices or a Nx2 \code{\link[base]{matrix}}
     of N from-to index intervals specifying the elements to be read.}
   \item{size}{The size of the data type to be read. If \code{\link[base]{NA}}, the natural
    size of the data type is used.}
   \item{...}{Additional arguments passed to \code{\link[base]{writeBin}}().}
 }

 \value{
   Returns nothing.
 }

 \examples{\dontrun{# See example(readBinFragments.connection)}}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link{readBinFragments}}().
 }


\keyword{IO}
