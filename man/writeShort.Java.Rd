%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Java$writeShort}
\alias{Java$writeShort}
\alias{writeShort.Java}
\alias{Java.writeShort}
\alias{writeShort,Java-method}

\title{Writes a short (16 bits) to a connection in Java format}

\description{
  Writes one or several short's (16 bits) to a connection in Java
  format so they will be readable by Java.
  All data types in Java are signed, i.e. a byte can hold a value in
  the range [-32768,32767]. Trying to write a value outside this range
  will automatically be truncated without a warning.
}

\usage{
## Static method (use this):
## Java$writeShort(con, s, ...)

## Don't use the below:
\method{writeShort}{Java}(static, con, s, ...)
}

\arguments{
  \item{con}{Binary connection to be written to.}
  \item{s}{Vector of shorts to be written.}
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
