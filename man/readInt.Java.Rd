%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{readInt.Java}
\alias{readInt.Java}
\alias{Java.readInt}
\alias{readInt.Java}
\alias{readInt,Java-method}


\title{Reads a Java formatted int (32 bits) from a connection}

\description{
  Reads one or several Java formatted int's (32 bits) from a connection.
  All data types in Java are signed, i.e. a byte can hold a value in
  the range [-2147483648,2147483647].
}

\synopsis{readInt.Java(static, con, n=1, ...)}
\usage{Java$readInt(con, n=1, ...)}

\arguments{
 \item{con}{Binary connection to be read from.}
 \item{n}{Number of int's to be read.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}} of \code{\link[base]{double}}s. Note that R \code{\link[base]{integer}}s gives
  NA is as.integer(-2147483648), which is the smallest Java int
  available.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{readBin}}().
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
