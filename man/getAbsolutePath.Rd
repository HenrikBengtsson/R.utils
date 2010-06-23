%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  getAbsolutePath.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getAbsolutePath}
\alias{getAbsolutePath.default}
\alias{getAbsolutePath}

\title{Gets the absolute pathname string}

\usage{\method{getAbsolutePath}{default}(pathname, workDirectory=getwd(), expandTilde=FALSE, ...)}

\description{
  Gets the absolute pathname string.
}

\arguments{
 \item{pathname}{A \code{\link[base]{character}} string of the pathname to be converted into
   an absolute pathname.}
 \item{workDirectory}{A \code{\link[base]{character}} string of the current working directory.}
 \item{expandTilde}{If \code{\link[base:logical]{TRUE}}, tilde (\code{~}) is expanded to the
   corresponding directory, otherwise not.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string of the absolute pathname.
}

\details{
 This method will replace replicated slashes ('/') with a single one,
 except for the double forward slashes prefixing a Microsoft Windows UNC
 (Universal Naming Convention) pathname.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{isAbsolutePath}}().
}



\keyword{IO}
\keyword{programming}
