%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  GString-class.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{evaluate.GString}
\alias{evaluate.GString}
\alias{GString.evaluate}
\alias{evaluate,GString-method}

\title{Parses and evaluates a GString}

\description{
  Parses and evaluates a GString.
}

\usage{
\method{evaluate}{GString}(object, envir=parent.frame(), ...)
}

\arguments{
 \item{envir}{The \code{\link[base]{environment}} in which the \code{\link{GString}} is evaluated.}
 \item{...}{Additional arguments passed to \code{\link[R.utils:parse.GString]{*parse}()}.}
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
