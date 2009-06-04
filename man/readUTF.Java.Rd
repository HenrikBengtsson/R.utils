%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{readUTF.Java}
\alias{readUTF.Java}
\alias{Java.readUTF}
\alias{readUTF.Java}
\alias{readUTF,Java-method}


\title{Reads a Java (UTF-8) formatted string from a connection}

\description{
  Reads a Java (UTF-8) formatted string from a connection.
}

\synopsis{readUTF.Java(static, con, as.character=TRUE, ...)}
\usage{Java$readUTF(con, as.character=TRUE, ...)}

\arguments{
 \item{con}{Binary connection to be read from.}
 \item{as.character}{If \code{\link[base:logical]{TRUE}}, the read string converted,
    i.e. translated, into an \R character string before
    returned, otherwise an integer vector representation of
    the Unicode string is returned.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string or an \code{\link[base]{integer}} \code{\link[base]{vector}}.
}

\details{
  Currently only 8-bit UTF-8 byte sequences are supported, i.e. plain
  ASCII sequences, i.e. characters that take up more than one byte are
  read \emph{incorrectly} without any warnings.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[base]{readBin}}().
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
