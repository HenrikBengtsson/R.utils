%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isEof.connection.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{isEof.connection}
\alias{isEof.connection}

\title{Checks if the current file position for a connection is at the 'End of File'}

\description{
 Checks if the current file position for a connection is at the 'End of File'.
}

\usage{
\method{isEof}{connection}(con, ...)
}

\arguments{
 \item{con}{A \code{\link[base:connections]{connection}}.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{logical}}.
}

\details{
Internally \code{\link[base]{seek}}() is used, which according to to the \R help
is discouraged on Windows.  However, after many years of large-scale
testing on various Windows versions and file systems we have yet to
experience issues with using \code{seek()} on Windows.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{connection}}.
}
\keyword{methods}
