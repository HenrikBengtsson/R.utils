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

\usage{\method{fileAccess}{default}(pathname, mode=0, safe=TRUE, ...)}

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

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\details{
  In \R there is \code{\link[base]{file.access}}() for checking whether the
  permission of a file.
  Unfortunately, this function cannot be 100\% trusted depending on
  platform used and file system queried, cf. [1].
}

\seealso{
  \code{\link[base]{file.access}}()
}

\references{
  [1] R-devel thread
      \emph{file.access() on network (mounted) drive on Windows Vista?}
      on Nov 26, 2008.
}



\keyword{IO}
\keyword{programming}
