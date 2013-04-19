%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getEnvironment}
\alias{Arguments$getEnvironment}
\alias{getEnvironment.Arguments}
\alias{Arguments.getEnvironment}
\alias{getEnvironment,Arguments-method}

\title{Gets an existing environment}

\description{
 Gets an existing environment.
}

\usage{
## Static method (use this):
## Arguments$getEnvironment(envir=NULL, .name=NULL, ...)

## Don't use the below:
\method{getEnvironment}{Arguments}(static, envir=NULL, .name=NULL, ...)
}

\arguments{
  \item{envir}{An \code{\link[base]{environment}}, the name of a loaded package, or \code{\link[base]{NULL}}.
     If \code{\link[base]{NULL}}, the global environment is returned.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
  \item{...}{Not used.}
}

\value{
 Returns an \code{\link[base]{environment}}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
