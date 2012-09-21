%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  toCamelCase.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{toCamelCase}
\alias{toCamelCase.default}
\alias{toCamelCase}

\title{Converts a string of words into a merged camel-cased word}

\description{
  Converts a string of words into a merged camel-cased word, e.g. "a single espresso" is converted to "aSingleEspresso".
}

\usage{\method{toCamelCase}{default}(s, capitalize=FALSE, preserveSameCase=FALSE, split="[ 	]+", ...)}

\arguments{
 \item{s}{A \code{\link[base]{character}} string.}
 \item{capitalize}{If \code{\link[base:logical]{TRUE}}, the first letter will be in upper case,
   otherwise it will be in lower case.}
 \item{preserveSameCase}{If \code{\link[base:logical]{TRUE}}, words that are in all upper case
   will remain as all same case words, e.g. acronyms.}
 \item{split}{A pattern used to identify words.  See \code{\link[base]{strsplit}}()
   for more details.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string.
}

\examples{
s <- "hello world"
print(toCamelCase(s))  # helloWorld
print(toCamelCase(s, capitalize=TRUE))  # HelloWorld
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))

s <- "GEO Accession"
print(toCamelCase(s))  # gEOAccession
print(toCamelCase(s, preserveSameCase=TRUE))  # geoAccession
print(toCamelCase(s, capitalize=TRUE))  # GEOAccession
print(toCamelCase(s, capitalize=TRUE, preserveSameCase=TRUE))  # GEOAccession
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[R.utils]{capitalize}}.
  \code{\link[base]{chartr}}().
}




\keyword{programming}
\keyword{IO}
\keyword{internal}
