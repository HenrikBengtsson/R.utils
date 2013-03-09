%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  fileAccess.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{fileAccess}
\alias{fileAccess.default}
\alias{fileAccess}

\title{Checks the permission of a file or a directory}

\description{
 Checks the permission of a file or a directory.
}

\usage{
\method{fileAccess}{default}(pathname, mode=0, safe=TRUE, ...)
}

\arguments{
  \item{pathname}{A \code{\link[base]{character}} string of the file or the directory
      to be checked.}
  \item{mode}{An \code{\link[base]{integer}} (0,1,2,4), cf. \code{\link[base]{file.access}}().}
  \item{safe}{If \code{\link[base:logical]{TRUE}}, the permissions are tested more carefully,
      otherwise \code{\link[base]{file.access}}() is used.}
  \item{...}{Not used.}
}

\value{
 Returns an \code{\link[base]{integer}}; 0 if the permission exists, -1 if not.
}

\author{Henrik Bengtsson}

\details{
  In \R there is \code{\link[base]{file.access}}() for checking whether the
  permission of a file.
  Unfortunately, that function cannot be 100\% trusted depending on
  platform used and file system queried, cf. [1].
}

\examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Current directory
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- "."

# Test for existence
print(fileAccess(path, mode=0))
# Test for execute permission
print(fileAccess(path, mode=1))
# Test for write permission
print(fileAccess(path, mode=2))
# Test for read permission
print(fileAccess(path, mode=4))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A temporary file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pathname <- tempfile()
cat(file=pathname, "Hello world!")

# Test for existence
print(fileAccess(pathname, mode=0))
# Test for execute permission
print(fileAccess(pathname, mode=1))
# Test for write permission
print(fileAccess(pathname, mode=2))
# Test for read permission
print(fileAccess(pathname, mode=4))

file.remove(pathname)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# The 'base' package directory
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- system.file(package="base")

# Test for existence
print(fileAccess(path, mode=0))
# Test for execute permission
print(fileAccess(path, mode=1))
# Test for write permission
print(fileAccess(path, mode=2))
# Test for read permission
print(fileAccess(path, mode=4))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# The 'base' package DESCRIPTION file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
pathname <- system.file("DESCRIPTION", package="base")

# Test for existence
print(fileAccess(pathname, mode=0))
# Test for execute permission
print(fileAccess(pathname, mode=1))
# Test for write permission
print(fileAccess(pathname, mode=2))
# Test for read permission
print(fileAccess(pathname, mode=4))
}

\seealso{
  \code{\link[base]{file.access}}()
}

\references{
 [1] R-devel thread
     \emph{file.access() on network (mounted) drive on Windows Vista?}
     on Nov 26, 2008.\cr
 [2] Filesystem permissions, Wikipedia, 2010.
     \url{http://en.wikipedia.org/wiki/Filesystem_permissions}\cr
}



\keyword{IO}
\keyword{programming}
