%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  GString-class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{GString$getBuiltinTime}
\alias{GString$getBuiltinTime}
\alias{getBuiltinTime.GString}
\alias{GString.getBuiltinTime}
\alias{getBuiltinTime,GString-method}

\title{Gets the current time}

\description{
  Gets the current time.
}

\usage{
## Static method (use this):
## GString$getBuiltinTime(format="\%H:\%M:\%S", ...)

## Don't use the below:
\method{getBuiltinTime}{GString}(static, format="\%H:\%M:\%S", ...)
}

\arguments{
 \item{format}{A \code{\link[base]{character}} format string.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{GString}}.
}
\keyword{internal}
\keyword{methods}
