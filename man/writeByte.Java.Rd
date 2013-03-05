%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{writeByte.Java}
\alias{writeByte.Java}
\alias{Java.writeByte}
\alias{writeByte.Java}
\alias{writeByte,Java-method}


\title{Writes a byte (8 bits) to a connection in Java format}

\description{
  Writes one or several byte's (8 bits) to a connection in Java
  format so they will be readable by Java.
  All data types in Java are signed, i.e. a byte can hold a value in
  the range [-128,127]. Trying to write a value outside this range
  will automatically be truncated without a warning.
}

\usage{
## Static method (use this):
## Java$writeByte(con, b, ...)

## Don't use the below:
\method{writeByte}{Java}(static, con, b, ...)
}

\arguments{
  \item{con}{Binary connection to be written to.}
  \item{b}{Vector of bytes to be written.}
}

\details{
  This method is included for consistency reasons only.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
