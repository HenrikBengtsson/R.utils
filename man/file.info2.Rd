%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Sys.readlink2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{file.info2}
\alias{file.info2}


\title{Extract File Information (acknowledging symbolic file links also on Windows)}

\description{
 Extract File Information (acknowledging symbolic file links also on Windows).
}

\usage{
file.info2(...)
}

\arguments{
 \item{...}{A \code{\link[base]{character}} \code{\link[base]{vector}}s containing file paths.
  Tilde expansion is done: see \code{\link[base]{path.expand}}().}
}

\value{
 A \code{\link[base]{data.frame}}.  See \code{\link[base]{file.info}}() for details.
}

\seealso{
 Internally, \code{\link[base]{file.info}}() is used, which does not respect
 symbolic links on Windows.  Instead, on Windows, \code{\link{Sys.readlink2}}()
 is used for such link to identify the target file and retrieve the
 file information on that instead.
}

\author{Henrik Bengtsson}




\keyword{file}
\keyword{IO}
\keyword{internal}
