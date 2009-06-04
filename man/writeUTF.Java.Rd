%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{writeUTF.Java}
\alias{writeUTF.Java}
\alias{Java.writeUTF}
\alias{writeUTF.Java}
\alias{writeUTF,Java-method}


\title{Writes a string to a connection in Java format (UTF-8)}

\description{
  Writes a string to a connection in Java format (UTF-8)
  so it will be readable by Java. At the beginning of each UTF-8 sequence
  there is a short integer telling how many bytes (characters?) follows.
}

\synopsis{writeUTF.Java(static, con, str, ...)}
\usage{Java$writeUTF(con, str, ...)}

\arguments{
  \item{con}{Binary connection to be written to.}
  \item{str}{String to be written.}
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Java}}.
}
\keyword{internal}
\keyword{methods}
