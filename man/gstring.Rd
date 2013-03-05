%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  gstring.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{gstring}
\alias{gstring.default}
\alias{gstring}
\alias{gstring.GString}

\title{Parses and evaluates a GString into a regular string}

\description{
  Parses and evaluates a GString into a regular string.
}

\usage{
\method{gstring}{default}(..., file=NULL, path=NULL, envir=parent.frame())
}

\arguments{
  \item{...}{\code{\link[base]{character}} strings.}
  \item{file, path}{Alternatively, a file, a URL or a \code{\link[base:connections]{connection}} from
     with the strings are read.
     If a file, the \code{path} is prepended to the file, iff given.}
 \item{envir}{The \code{\link[base]{environment}} in which the \code{\link{GString}} is evaluated.}
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{gcat}}().
}

