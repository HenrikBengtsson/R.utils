%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  readTable.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{readTable}
\alias{readTable.default}
\alias{readTable}

\title{Reads a file in table format}

\usage{
\method{readTable}{default}(file, colClasses=NULL, isPatterns=FALSE, defColClass=NA, header=FALSE, skip=0,
  nrows=-1, rows=NULL, col.names=NULL, check.names=FALSE, path=NULL, ...,
  stripQuotes=TRUE, method=c("readLines", "intervals"), verbose=FALSE)
}

\description{
 Reads a file in table format and creates a data frame from it, with cases corresponding
 to lines and variables to fields in the file.

 \emph{WARNING: This method is very much in an alpha stage.
 Expect it to change.}

 This method is an extension to the default \code{\link[utils]{read.table}}
 function in \R.  It is possible to specify a column name to column class
 map such that the column classes are automatically assigned from the
 column header in the file.

 In addition, it is possible to read any subset of rows.
 The method is optimized such that only columns and rows that are of
 interest are parsed and read into \R's memory.  This minimizes memory
 usage at the same time as it speeds up the reading.
}

\arguments{
  \item{file}{A \code{\link[base:connections]{connection}} or a filename.  If a filename, the path
     specified by \code{path} is added to the front of the
     filename.  Unopened files are opened and closed at the end.}
  \item{colClasses}{Either a named or an unnamed \code{\link[base]{character}} \code{\link[base]{vector}}.
     If unnamed, it specified the column classes just as used by
     \code{\link[utils]{read.table}}.
     If it is a named vector, \code{names(colClasses)} are used to match
     the column names read (this requires that \code{header=TRUE}) and
     the column classes are set to the corresponding values.
  }
  \item{isPatterns}{If \code{\link[base:logical]{TRUE}}, the matching of \code{names(colClasses)} to
     the read column names is done by regular expressions matching.}
  \item{defColClass}{If the column class map specified by a named
     \code{colClasses} argument does not match some of the read column
     names, the column class is by default set to this class. The
     default is to read the columns in an "as is" way.}
  \item{header}{If \code{\link[base:logical]{TRUE}}, column names are read from the file.}
  \item{skip}{The number of lines (commented or non-commented) to skip
     before trying to read the header or alternatively the data table.}
  \item{nrows}{The number of rows to read of the data table.
     Ignored if \code{rows} is specified.}
  \item{rows}{An row index \code{\link[base]{vector}} specifying which rows of the table
     to read, e.g. row one is the row following the header.
     Non-existing rows are ignored.  Note that rows are returned in
     the same order they are requested and duplicated rows are also
     returned.}
  \item{col.names}{Same as in \code{read.table()}.}
  \item{check.names}{Same as in \code{read.table()}, but default value
     is \code{\link[base:logical]{FALSE}} here.}
  \item{path}{If \code{file} is a filename, this path is added to it,
    otherwise ignored.}
  \item{...}{Arguments passed to \code{\link[utils]{read.table}} used internally.}
  \item{stripQuotes}{If \code{\link[base:logical]{TRUE}}, quotes are stripped from values before
    being parse.
    This argument is only effective when \code{method=="readLines"}.
  }
  \item{method}{If \code{"readLines"}, \code{(readLines())} is used
    internally to first only read rows of interest, which is then
    passed to \code{read.table()}.
    If \code{"intervals"}, contigous intervals are first identified in
    the rows of interest.  These intervals are the read one by one
    using \code{read.table()}.
    The latter methods is faster and especially more memory efficient
    if the intervals are not too many, where as the former is prefered
    if many "scattered" rows are to be read.}
  \item{verbose}{A \code{\link[base]{logical}} or a \code{\link{Verbose}} object.}
}

\value{
  Returns a \code{\link[base]{data.frame}}.
}

\author{Henrik Bengtsson}

\seealso{
 \code{\link{readTableIndex}}().
 \code{\link[utils]{read.table}}.
 \code{\link{colClasses}}().
}


\keyword{IO}
