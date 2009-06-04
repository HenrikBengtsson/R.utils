%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  relibrary.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{relibrary}
\alias{relibrary}


\title{Reloads a package}

\usage{relibrary(package, character.only=FALSE, warn.conflicts=FALSE, ...)}

\description{
 Reloads a package. This function works exactly the same as
 \code{\link[base]{library}}, \emph{except} that it is reloads the package
 if it already loaded. This is useful for developers.
 For more information see \code{\link[base]{library}}.
}

\arguments{
  \item{package}{Name or \code{\link[base]{character}} string giving the name of a package.}
  \item{character.only}{A \code{\link[base]{logical}} indicating whether \code{package} can
     be assumed to be character strings.}
  \item{warn.conflicts}{If \code{\link[base:logical]{TRUE}}, warnings are printed about
     conflicts from reattaching of the package, unless that package
     contains an object \code{.conflicts.OK}.}
  \item{...}{Any other arguments that \code{\link[base]{library}}() takes.}
}

\details{
  While relibrary is reloading a package the option \code{relibrary} will
  be set to name of the package currently reloaded. This can be useful if
  the package to be reloaded would like save away data until it is loaded
  again.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  See \code{\link[base]{library}}().
}


\keyword{utilities}
