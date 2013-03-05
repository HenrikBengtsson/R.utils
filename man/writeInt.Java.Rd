%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{writeInt.Java}
\alias{writeInt.Java}
\alias{Java.writeInt}
\alias{writeInt.Java}
\alias{writeInt,Java-method}


\title{Writes a integer (32 bits) to a connection in Java format}

\description{
  Writes one or several integer's (32 bits) to a connection in Java
  format so they will be readable by Java.
  All data types in Java are signed, i.e. a byte can hold a value in
  the range [-2147483648,2147483647]. Trying to write a value outside
  this range will automatically be truncated without a warning.
}

\usage{
## Static method (use this):
## Java$writeInt(con, i, ...)

## Don't use the below:
\method{writeInt}{Java}(static, con, i, ...)
}

\arguments{
  \item{con}{Binary connection to be written to.}
  \item{i}{Vector of integers to be written.}
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
