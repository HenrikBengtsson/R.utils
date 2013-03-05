%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{System$parseDebian}
\alias{System$parseDebian}
\alias{parseDebian.System}
\alias{System.parseDebian}
\alias{parseDebian,System-method}

\title{Parses a string, file or connection for Debian formatted parameters}

\usage{
## Static method (use this):
## System$parseDebian(text=NULL, file=NULL, keys=NULL, ...)

## Don't use the below:
\method{parseDebian}{System}(this, text=NULL, file=NULL, keys=NULL, ...)
}

\arguments{
  \item{text}{The text to be parsed. Default value is \code{\link[base]{NULL}}.}
  \item{file}{Name file, a \code{File} object or connection to be parsed.
    Default value is \code{\link[base]{NULL}}.}
  \item{keys}{The keys (names of the parameters) to be retrieved.
    If \code{\link[base]{NULL}} all fields are returned. Default value is \code{\link[base]{NULL}}.}

 Either, \code{text} or \code{file} must be given.
}

\description{
  Parses a text, file or a connection for Debian formatted parameters.
  A file in Debian format contains rows with parameters of the form
  \code{KEY=VALUE}. It is allowed to have duplicated keys.
}

\value{
  Returns a named \code{\link[base]{list}} of parameter values.
}

\examples{
 file <- file.path(Package("R.utils")$path, "DESCRIPTION")
 l <- System$parseDebian(file=file)
 print(l)
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{System}}.
}
\keyword{internal}
\keyword{methods}
