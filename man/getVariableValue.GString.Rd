%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  GString.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{getVariableValue.GString}
\alias{getVariableValue.GString}
\alias{GString.getVariableValue}
\alias{getVariableValue.GString}
\alias{getVariableValue,GString-method}


\title{Gets a variable value given a name and attributes}

\description{
  Gets a variable value given a name and attributes.
}

\synopsis{getVariableValue.GString(static, name, attributes="", where=c("builtin", "envir", "parent", "Sys.getenv", "getOption", "envir*"), envir=parent.frame(), missingValue=NA, ...)}
\usage{GString$getVariableValue(name, attributes="", where=c("builtin", "envir", "parent", "Sys.getenv", "getOption", "envir*"), envir=parent.frame(), missingValue=NA, ...)}

\arguments{
 \item{name}{The name of the variable or function to be queried.}
 \item{attributes}{A \code{\link[base]{character}} string of the attributes.}
 \item{where}{A \code{\link[base]{character}} \code{\link[base]{vector}} of where to search for the variable
    or function.}
 \item{missingValue}{The value returned if not found.}
 \item{...}{Not used.}
}

\value{
  Returns a (\code{\link[base]{vector}} of) objects.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{GString}}.
}
\keyword{internal}
\keyword{methods}
