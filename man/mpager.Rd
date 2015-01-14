%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  mpager.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{mpager}
\alias{mpager}


\title{A \"pager\" function that outputs to standard error}

\description{
  A \"pager\" function that outputs to standard error and is compatible with \code{\link[base]{file.show}}().
}

\usage{
mpager(files, header=NULL, title="R Information", delete.file=FALSE)
}

\arguments{
 \item{files}{A \code{\link[base]{character}} \code{\link[base]{vector}} of K pathnames.}
 \item{header}{A \code{\link[base]{character}} \code{\link[base]{vector}} of K headers.}
 \item{title}{A \code{\link[base]{character}} string.}
 \item{delete.file}{If \code{\link[base:logical]{TRUE}}, the files are deleted after displayed,
  otherwise not.}
}

\value{
 Returns nothing.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{file.show}}() and argument \code{pager}.
}




\keyword{programming}
\keyword{IO}
\keyword{file}
