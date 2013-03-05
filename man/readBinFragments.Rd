%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  readBinFragments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{readBinFragments}
\alias{readBinFragments.default}
\alias{readBinFragments}

 \title{Reads binary data from disjoint sections of a connection or a file}

 \usage{
\method{readBinFragments}{default}(con, what, idxs=1, origin=c("current", "start"), size=NA, ..., verbose=FALSE)
}

 \description{
  Reads binary data from disjoint sections of a connection or a file.
 }

 \arguments{
   \item{con}{A \code{\link[base:connections]{connection}} or the pathname of an existing file.}
   \item{what}{A \code{\link[base]{character}} string or an object specifying the the
     data type (\code{\link[base]{mode}}()) to be read.}
   \item{idxs}{A \code{\link[base]{vector}} of (non-duplicated) indices or a Nx2 \code{\link[base]{matrix}}
     of N from-to index intervals specifying the elements to be read.
     Positions are either relative to the start or the current location
     of the file/connection as given by argument \code{origin}.}
   \item{origin}{A \code{\link[base]{character}} string specify whether the indices
    in argument \code{idxs} are relative to the \code{"start"} or
    the \code{"current"} position of the file/connection.}
   \item{size}{The size of the data type to be read. If \code{\link[base]{NA}}, the natural
    size of the data type is used.}
   \item{...}{Additional arguments passed to \code{\link[base]{readBin}}().}
   \item{verbose}{A \code{\link[base]{logical}} or a \code{\link{Verbose}} object.}
 }

 \value{
   Returns a \code{\link[base]{vector}} of the requested \code{\link[base]{mode}}().
 }

 \examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Create a data file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
data <- 1:255
size <- 2
pathname <- tempfile("exampleReadBinFragments")
writeBin(con=pathname, data, size=size)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Read and write using index vectors
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Read file...\n")
# Read every 16:th byte in the file
idxs <- seq(from=1, to=255, by=16)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
stopifnot(identical(x, data[idxs]))
print(x)
# Read every 16:th byte in a connection starting with the 6th.
idxs <- idxs + 5L;
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
stopifnot(identical(x, data[idxs]))
print(x)
cat("Read file...done\n")

cat("Write file...\n")
# Update every 16:th byte in the file
idxs <- seq(from=1, to=255, by=16)
x0 <- data[idxs]
writeBinFragments(pathname, idxs=idxs, rev(x0), size=size)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
print(x)
stopifnot(identical(rev(x0), x))

# Update every 16:th byte in the file
idxs <- seq(from=1, to=255, by=16)
writeBinFragments(pathname, idxs=idxs, rev(x), size=size)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
print(x)
stopifnot(identical(x0, x))

# Assert everything is as expected
# Read the complete file
x <- readBin(pathname, what="integer", size=size, signed=FALSE, n=length(data))
stopifnot(identical(x, data))
cat("Write file...done\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Ditto but via a connection
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Read connection...\n")
# Read every 16:th byte in a connection
con <- file(pathname, open="rb")
idxs <- seq(from=1, to=255, by=16)
x <- readBinFragments(con, what="integer", size=size, signed=FALSE, idxs=idxs)
stopifnot(identical(x, data[idxs]))
print(x)

# Read every 16:th byte in a connection starting with the 6th.
idxs <- idxs + 5L;
x <- readBinFragments(con, what="integer", size=size, signed=FALSE, idxs=idxs, origin="start")
stopifnot(identical(x, data[idxs]))
print(x)
close(con)
cat("Read connection...done\n")


# Update every 16:th byte in a connection
cat("Write connection...\n")
con <- file(pathname, open="r+b")
idxs <- seq(from=1, to=255, by=16)
x0 <- data[idxs]
writeBinFragments(pathname, idxs=idxs, rev(x0), size=size)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs)
print(x)
stopifnot(identical(rev(x0), x))

# Update every 16:th byte in the file
idxs <- seq(from=1, to=255, by=16)
writeBinFragments(pathname, idxs=idxs, rev(x), size=size)
x <- readBinFragments(pathname, what="integer", size=size, signed=FALSE, idxs=idxs, origin="start")
print(x)
stopifnot(identical(x0, x))

close(con)

# Assert everything is as expected
# Read the complete file
x <- readBin(pathname, what="integer", size=size, signed=FALSE, n=length(data))
stopifnot(identical(x, data))
cat("Write connection...done\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Clean up
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
file.remove(pathname)
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link{writeBinFragments}}().
 }


\keyword{IO}
