%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{header.Verbose}
\alias{header.Verbose}
\alias{Verbose.header}
\alias{header,Verbose-method}

\title{Writes a header}

\description{
  Writes a header surrounded by a frame.
  The output is indented according to \code{\link[R.utils:enter.Verbose]{*enter}()}/\code{\link[R.utils:exit.Verbose]{*exit}()}
  calls.
}

\usage{
\method{header}{Verbose}(this, ..., char="-", padding=0, prefix=paste(char, paste(rep(" ", max(padding, 1)), collapse = ""), sep = ""), level=this$defaultLevel)
}

\arguments{
 \item{...}{The title.}
 \item{char}{The \code{\link[base]{character}} string to make up the frame.}
 \item{padding}{The number of rows and character to pad the title above,
                below, and to the left.}
 \item{prefix}{The prefix of all padded lines and the title line.}
 \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
}

\value{
  Returns nothing.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Verbose}}.
}


\keyword{internal}
\keyword{methods}
\keyword{programming}
