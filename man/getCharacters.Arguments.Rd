%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getCharacters}
\alias{Arguments$getCharacters}
\alias{getCharacters.Arguments}
\alias{Arguments.getCharacters}
\alias{getCharacters,Arguments-method}
\alias{Arguments.getCharacter}
\alias{getCharacter.Arguments}
\alias{getCharacter,Arguments-method}


\title{Coerces to a character vector and validates}

\description{
 Coerces to a character vector and validates.
}

\usage{
## Static method (use this):
## Arguments$getCharacters(s, length=NULL, trim=FALSE, nchar=NULL, useNames=FALSE,
##   asGString=TRUE, .name=NULL, ...)

## Don't use the below:
\method{getCharacters}{Arguments}(static, s, length=NULL, trim=FALSE, nchar=NULL, useNames=FALSE,
  asGString=TRUE, .name=NULL, ...)
}

\arguments{
  \item{s}{A \code{\link[base]{vector}}.}
  \item{nchar}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length one or two. If one,
    the maximum number of characters ("length") in \code{s}. If two,
    the minimum and maximum length of \code{s}.}
  \item{useNames}{If \code{\link[base:logical]{TRUE}}, the 'names' attribute is preserved, otherwise
    it is dropped.}
  \item{asGString}{If \code{\link[base:logical]{TRUE}}, each string is treated as a \code{\link{GString}}.}
  \item{.name}{A \code{\link[base]{character}} string for name used in error messages.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} \code{\link[base]{vector}}, if it is valid. Otherwise an exception is
 thrown.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}


\keyword{internal}
\keyword{methods}
\keyword{IO}
