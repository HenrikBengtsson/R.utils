%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  useRepos.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{useRepos}
\alias{useRepos}

\alias{parseRepos}

\title{Sets package repositories}

\description{
 Sets package repositories.
}

\usage{
useRepos(repos=NULL, where=c("before", "after", "replace"), ..., unique=TRUE)
}

\arguments{
  \item{repos}{A \code{\link[base]{character}} \code{\link[base]{vector}} of repositories to use.
   If \code{\link[base]{NULL}}, nothing is replaced.}
  \item{where}{A \code{\link[base]{character}} string specifying how to add them to the
   current set of repositories.}
  \item{unique}{If \code{\link[base:logical]{TRUE}}, only unique repositories are set.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{list}} with element 'repos' reflecting \code{options("repos")}
 as the options where prior to calling this function.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{withRepos}}().
}



\keyword{IO}
\keyword{programming}
