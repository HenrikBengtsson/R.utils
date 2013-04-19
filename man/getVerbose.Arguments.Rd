%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getVerbose}
\alias{Arguments$getVerbose}
\alias{getVerbose.Arguments}
\alias{Arguments.getVerbose}
\alias{getVerbose,Arguments-method}

\title{Coerces to Verbose object}

\description{
 Coerces to Verbose object.
}

\usage{
## Static method (use this):
## Arguments$getVerbose(verbose, defaultThreshold=-1, useNullVerbose=TRUE, ..., .name=NULL)

## Don't use the below:
\method{getVerbose}{Arguments}(static, verbose, defaultThreshold=-1, useNullVerbose=TRUE, ..., .name=NULL)
}

\arguments{
  \item{verbose}{A single object. If a \code{\link{Verbose}}, it is immediately
     returned.  If a \code{\link[base]{numeric}} value, it is used as the threshold.
     Otherwise the object is coerced to a \code{\link[base]{logical}} value and if \code{\link[base:logical]{TRUE}},
     the threshold is \code{defaultThreshold}.}
  \item{defaultThreshold}{A \code{\link[base]{numeric}} value for the default threshold, if
      \code{verbose} was interpreted as a \code{\link[base]{logical}} value.}
  \item{useNullVerbose}{If \code{verbose} can be interpreted as \code{\link[base:logical]{FALSE}},
      return a \code{\link{NullVerbose}} object if \code{\link[base:logical]{TRUE}}.}
  \item{...}{Passed to the constructor of \code{\link{Verbose}}.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
}

\value{
 Returns a \code{\link{Verbose}} (or a \code{\link{NullVerbose}}) object.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
