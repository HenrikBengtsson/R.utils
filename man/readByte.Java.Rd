%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Java$readByte}
\alias{Java$readByte}
\alias{readByte.Java}
\alias{Java.readByte}
\alias{readByte,Java-method}

\title{Reads a Java formatted byte (8 bits) from a connection}

\description{
  Reads one or several Java formatted byte's (8 bits) from a connection.
  All data types in Java are signed, i.e. a byte can hold a value in
  the range [-128,127].
}

\usage{
## Static method (use this):
## Java$readByte(con, n=1, ...)

## Don't use the below:
\method{readByte}{Java}(static, con, n=1, ...)
}

\arguments{
 \item{con}{Binary connection to be read from.}
 \item{n}{Number of byte's to be read.}
 \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}}.
}

\details{
  This method is included for consistency reasons only.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{readBin}}().
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
