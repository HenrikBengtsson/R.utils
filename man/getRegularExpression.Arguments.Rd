%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getRegularExpression}
\alias{Arguments$getRegularExpression}
\alias{getRegularExpression.Arguments}
\alias{Arguments.getRegularExpression}
\alias{getRegularExpression,Arguments-method}

\title{Gets a valid regular expression pattern}

\description{
 Gets a valid regular expression pattern.
}

\usage{
## Static method (use this):
## Arguments$getRegularExpression(pattern=NULL, ..., .name=NULL)

## Don't use the below:
\method{getRegularExpression}{Arguments}(static, pattern=NULL, ..., .name=NULL)
}

\arguments{
  \item{pattern}{A \code{\link[base]{character}} string to be validated.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{grep}}().
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
