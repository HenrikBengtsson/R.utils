%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  intToBin.R
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
 \item{x}{An \code{\link[base]{numeric}} integer to be converted.
 For \code{intToHex()} and \code{intToOct()} the supported range is that of
 \R integers, i.e. \code{[-.Machine$integer.max, +.Machine$integer.max]}.
 For \code{intToBin()} the supported range is that of all numeric integers.}
}

\value{
Returns a \code{\link[base]{character}}.  For invalid coercions, or coercions out of range,
value \code{\link[base]{NA}}_character_ is returned.
}

\author{Henrik Bengtsson}




\keyword{manip}
\keyword{character}
\keyword{programming}
