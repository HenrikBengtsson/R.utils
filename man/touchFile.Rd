%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  touchFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{touchFile}
\alias{touchFile.default}
\alias{touchFile}

\title{Updates the timestamp of a file}

\description{
  Updates the timestamp of a file.
  Currently, it is only possible to change the timestamp specifying when
  the file was last modified, and time can only be set to the current time.
}

\usage{
\method{touchFile}{default}(pathname, ...)
}

\arguments{
 \item{pathname}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying files to be updated.}
 \item{...}{Not used.}
}

\value{
 Returns (invisibly) a \code{\link[base]{vector}} of the old timestamps.
}

\examples{
# 1. Create a file
pathname <- tempfile()
cat(file=pathname, "Hello world!")
md5a <- digest::digest(pathname, file=TRUE)

# 2. Current time stamp
ta <- file.info(pathname)$mtime
print(ta)

# 3. Update time stamp
Sys.sleep(1.2)
touchFile(pathname)
tb <- file.info(pathname)$mtime
print(tb)

# 4. Verify that the timestamp got updated
stopifnot(tb > ta)

# 5. Verify that the contents did not change
md5b <- digest::digest(pathname, file=TRUE)
stopifnot(identical(md5a, md5b))
}

\author{Henrik Bengtsson}

\seealso{
  Internally, \code{\link[base]{Sys.setFileTime}}() (iff available) and
  \code{\link[base]{file.info}}() are utilized.
}

\references{
  [1] R-devel mailing list thread
      \emph{Unix-like touch to update modification timestamp of file?},
      started on 2008-02-26.
      \url{http://stat.ethz.ch/pipermail/r-devel/2008-February/048542.html}\cr
}




\keyword{programming}
\keyword{IO}
\keyword{file}
