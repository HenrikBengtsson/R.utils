%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  intToHex.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{intToBin}
\alias{intToBin}

\alias{intToOct}
\alias{intToHex}

\title{Converts an integer to a binary/octal/hexadecimal number}

\description{
  Converts an integer to a binary/octal/hexadecimal number.
}

\usage{
 intToBin(x)
 intToOct(x)
 intToHex(x)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} vector of integers to be converted.}
}

\value{
Returns a \code{\link[base]{character}} string of length \code{length(x)}.
For coercions out of range, \code{NA_character_} is returned for
such elements.
}

\details{
 For \code{length(x)} > 1, the number of characters in each of returned
 elements is the same and driven by the \code{x} element that requires
 the highest number of character - all other elements are padded with
 zeros (or ones for negative values).  This is why we for instance get
 \code{intToHex(15) == "f"} but \code{intToHex(15:16) == c("0f", "10")}.

 The supported range for \code{intToHex()}, \code{intToOct()}, and
 \code{intToBin()} is that of \R integers, i.e.
 \code{[-.Machine$integer.max, +.Machine$integer.max]} where.
 \code{.Machine$integer.max} is \eqn{2^31-1}.
 This limitation is there such that negative values can be converted too.
}

\author{Henrik Bengtsson}




\keyword{manip}
\keyword{character}
\keyword{programming}
