%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  capitalize.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{capitalize}
\alias{capitalize.default}
\alias{capitalize}
\alias{decapitalize}
\alias{decapitalize.default}

\title{Capitalizes/decapitalizes each character string in a vector}

\description{
 Capitalizes/decapitalized (making the first letter upper/lower case) of
 each character string in a vector.
}

\usage{
  \method{capitalize}{default}(str, ...)
  \method{decapitalize}{default}(str, ...)
}

\arguments{
  \item{str}{A \code{\link[base]{vector}} of \code{\link[base]{character}} strings to be capitalized.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}} of \code{\link[base]{character}} strings of the same length as the input
  vector.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\examples{
  words <- strsplit("Hello wOrld", " ")[[1]];
  cat(paste(toupper(words), collapse=" "), "\n")      # "HELLO WORLD"
  cat(paste(tolower(words), collapse=" "), "\n")      # "hello world"
  cat(paste(capitalize(words), collapse=" "), "\n")   # "Hello WOrld"
  cat(paste(decapitalize(words), collapse=" "), "\n") # "hello wOrld"
}


\keyword{programming}
