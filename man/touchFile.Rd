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

\usage{\method{touchFile}{default}(pathname, ...)}

\arguments{
 \item{pathname}{A \code{\link[base]{character}} specifying the file to be updated.}
 \item{...}{Not used.}
}

\value{
 Returns (invisibly) the old timestamp.
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

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{file.info}}().
}

\references{
  [1] R-devel mailing list thread
      \emph{Unix-like touch to update modification timestamp of file?},
      started on 2008-02-26.
      \url{http://tolstoy.newcastle.edu.au/R/e4/devel/08/02/0654.html}\cr
}




\keyword{programming}
\keyword{IO}
\keyword{file}
