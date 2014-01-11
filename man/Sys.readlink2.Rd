%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Sys.readlink2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Sys.readlink2}
\alias{Sys.readlink2}


\title{Read File Symbolic Links (also on Windows)}

\description{
 Read File Symbolic Links (also on Windows) and returns the target of each link.
 This implementation is fully compatible with the
 \code{\link[base]{Sys.readlink}}() implementation in the \pkg{base} package.
}

\usage{
Sys.readlink2(paths, what=c("asis", "corrected"))
}

\arguments{
 \item{paths}{A \code{\link[base]{character}} \code{\link[base]{vector}} of file paths.
  Tilde expansion is done: see \code{\link[base]{path.expand}}().}
 \item{what}{A \code{\link[base]{character}} string specifying what to return.}
}

\value{
 A \code{\link[base]{character}} \code{\link[base]{vector}} of the the same length as \code{paths}.
}

\author{Henrik Bengtsson}




\keyword{file}
\keyword{IO}
\keyword{internal}
