%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  readTableIndex.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{readTableIndex}
\alias{readTableIndex.default}
\alias{readTableIndex}

 \title{Reads a single column from file in table format}

 \usage{
\method{readTableIndex}{default}(..., indexColumn=1, colClass="character", verbose=FALSE)
}

 \description{
  Reads a single column from file in table format, which can then be used as a index-to-row (look-up) map
  for fast access to a subset of rows using \code{\link{readTable}}().
 }

 \arguments{
   \item{indexColumn}{An single \code{\link[base]{integer}} of the index column.}
   \item{colClass}{A single \code{\link[base]{character}} specifying the class of the
     index column.}
   \item{...}{Arguments passed to \code{\link{readTable}}() used internally.}
   \item{verbose}{A \code{\link[base]{logical}} or a \code{\link{Verbose}} object.}
 }

 \value{
   Returns a \code{\link[base]{vector}}.
 }

 \examples{\dontrun{
    # File containing data table to be access many times
    filename <- "somefile.txt"

    # Create a look-up index
    index <- readTableIndex(filename)

    # Keys of interest
    keys <- c("foo", "bar", "wah")

    # Read only those keys and do it fast
    df <- readTable(filename, rows=match(keys, index))
 }}

 \author{Henrik Bengtsson}

 \seealso{
  \code{\link{readTable}}().
 }


\keyword{IO}
