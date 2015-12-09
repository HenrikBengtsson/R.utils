%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  mkdirs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{mkdirs}
\alias{mkdirs.default}
\alias{mkdirs}

\title{Creates a directory including any necessary but nonexistent parent directories}

\description{
 Creates a directory including any necessary but nonexistent parent directories.
}

\usage{
\method{mkdirs}{default}(pathname, mustWork=FALSE, maxTries=5L, ...)
}

\arguments{
  \item{pathname}{A \code{\link[base]{character}} string of the pathname to be checked.}
  \item{mustWork}{If \code{\link[base:logical]{TRUE}} and the directory does not already exists or
   is failed to be created, an error is thrown, otherwise not.}
  \item{maxTries}{A positive \code{\link[base]{integer}} specifying how many times the
    method should try to create a missing directory before giving up.}
  \item{...}{Not used.}
}

\value{
 Returns \code{\link[base:logical]{TRUE}} if the directory was succesfully created,
 otherwise \code{\link[base:logical]{FALSE}}.
 Note that if the directory already exists, \code{\link[base:logical]{FALSE}} is returned.
}

\section{Slow file systems}{
  On very rare occassions, we have observed on a large shared file
  system that if one tests for the existence of a directory immediately
  after creating it with \code{\link[base]{dir.create}}(), it may appear not
  to be created.  We believe this is due to the fact that there is a
  short delay between creating a directory and that information being
  fully propagated on the file system.  To minimize the risk for such
  false assertions on "slow" file systems, this method tries to create
  a missing directory multiple times (argument \code{maxTries}) (while
  waiting a short period of time between each round) before giving up.
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[base:files]{dir.create}}() is used.
}



\keyword{IO}
\keyword{programming}
