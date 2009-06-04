%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  sourceDirectory.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{sourceDirectory}
\alias{sourceDirectory.default}
\alias{sourceDirectory}

\title{Sources files recursively to either local or global environment}

\description{
 Sources files recursively to either local or global environment.
}

\usage{\method{sourceDirectory}{default}(path, pattern=".*[.](r|R|s|S|q)([.](lnk|LNK))*$", recursive=TRUE, envir=parent.frame(), onError=c("error", "warning", "skip"), verbose=FALSE, ...)}

\arguments{
 \item{path}{A path to a directory to be sourced.}
 \item{pattern}{A regular expression file name pattern to identify
       source code files.}
 \item{recursive}{If \code{\link[base:logical]{TRUE}}, subdirectories are recursively sourced
       first, otherwise not.}
 \item{envir}{An \code{\link[base]{environment}} in which the code should be evaluated.}
 \item{onError}{If an error occures, the error may stop the job,
       give a warning, or silently be skipped.}
 \item{verbose}{A \code{\link[base]{logical}} or a \code{\link{Verbose}} object.}
 \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{vector}} of the full pathnames of the files sourced.
}

\section{Details}{
  Subdirectories and files in each (sub-)directory are sourced
  in lexicographic order.
}

\section{Hooks}{
 This method does not provide hooks, but the internally used
 \code{\link{sourceTo}}() does.
}

\seealso{
  \code{\link{sourceTo}}() and compare to \code{\link[base]{source}}().
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{IO}
\keyword{programming}
