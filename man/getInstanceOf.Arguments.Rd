%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getInstanceOf}
\alias{Arguments$getInstanceOf}
\alias{getInstanceOf.Arguments}
\alias{Arguments.getInstanceOf}
\alias{getInstanceOf,Arguments-method}

\title{Gets an instance of the object that is of a particular class}

\description{
 Gets an instance of the object that is of a particular class.
}

\usage{
## Static method (use this):
## Arguments$getInstanceOf(object, class, coerce=FALSE, ..., .name=NULL)

## Don't use the below:
\method{getInstanceOf}{Arguments}(static, object, class, coerce=FALSE, ..., .name=NULL)
}

\arguments{
  \item{object}{The object that should be returned as an instance of
     class \code{class}.}
  \item{class}{A \code{\link[base]{character}} string specifying the name of the class that
     the returned object should inherit from.}
  \item{coerce}{If \code{\link[base:logical]{TRUE}} and the object is not of the wanted class, then
     method will be coerced to that class, if possible.  Otherwise,
     an error is thrown.}
  \item{...}{Not used.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
}

\value{
  Returns an object inheriting from class \code{class}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{programming}
