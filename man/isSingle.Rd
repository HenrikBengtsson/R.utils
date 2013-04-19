%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isSingle.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{isSingle}
\alias{isSingle}

\alias{singles}

\title{Identifies all entries that exists exactly ones}

\description{
  Identifies all entries that exists exactly ones.
}

\usage{
 isSingle(x, ...)
 singles(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{vector}} of length K.}
 \item{...}{Additional arguments passed to \code{\link{isReplicated}}().}
}

\value{
 A \code{\link[base]{logical}} \code{\link[base]{vector}} of length K,
 indicating whether the value is unique or not.
}

\author{Henrik Bengtsson}

\seealso{
 Internally \code{\link{isReplicated}}() is used.
}

