%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  gcat.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{gcat}
\alias{gcat.default}
\alias{gcat}
\alias{gcat.GString}

\title{Parses, evaluates and outputs a GString}

\description{
  Parses, evaluates and outputs a GString.
}

\usage{\method{gcat}{default}(..., file="", append=FALSE, envir=parent.frame())}

\arguments{
 \item{...}{\code{\link[base]{character}} strings passed to \code{\link{gstring}}().}
  \item{file}{A \code{\link[base:connections]{connection}}, or a pathname where to direct the output.
              If \code{""}, the output is sent to the standard output.}
  \item{append}{Only applied if \code{file} specifies a pathname;
    If \code{\link[base:logical]{TRUE}}, then the output is appended to the file, otherwise
    the files content is overwritten.}
 \item{envir}{The \code{\link[base]{environment}} in which the \code{\link{GString}} is evaluated.}
}

\value{
  Returns (invisibly) a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{gstring}}().
}

