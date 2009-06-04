%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{ruler.Verbose}
\alias{ruler.Verbose}
\alias{Verbose.ruler}
\alias{ruler.Verbose}
\alias{ruler,Verbose-method}


\title{Writes a ruler}

\description{
  Writes a ruler.
}

\usage{\method{ruler}{Verbose}(this, char="-", toColumn=this$rightMargin, length=toColumn - this$indentPos, level=this$defaultLevel, ...)}

\arguments{
 \item{char}{A \code{\link[base]{character}} string to make up the ruler.}
 \item{toColumn}{The column number where the ruler should finish.}
 \item{length}{The length of the ruler.}
 \item{...}{Not used.}
 \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
}

\value{
  Returns nothing.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Verbose}}.
}


\keyword{internal}
\keyword{methods}
\keyword{programming}
