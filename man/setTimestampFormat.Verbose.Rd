%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{setTimestampFormat.Verbose}
\alias{setTimestampFormat.Verbose}
\alias{Verbose.setTimestampFormat}
\alias{setTimestampFormat,Verbose-method}

\title{Sets the default timestamp format}

\description{
  Sets the default timestamp format.
}

\usage{
\method{setTimestampFormat}{Verbose}(this, format="\%Y\%m\%d \%H:\%M:\%S|", ...)
}

\arguments{
 \item{format}{If a \code{\link[base]{function}}, this function is called (without arguments)
   whenever a timestamp is generated. If a \code{\link[base]{character}} string, it used as
   the format string in \code{format(Sys.date(), fmt)}.}
 \item{...}{Not used.}
}

\value{
  Returns (invisibly) the old timestamp format.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.utils:getTimestampFormat.Verbose]{*getTimestampFormat}()}.
  \code{\link[R.utils:timestampOn.Verbose]{*timestampOn}()}.
  For more information see \code{\link{Verbose}}.
}


\keyword{internal}
\keyword{methods}
\keyword{programming}
