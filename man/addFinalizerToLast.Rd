%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  addFinalizerToLast.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{addFinalizerToLast}
\alias{addFinalizerToLast.default}
\alias{addFinalizerToLast}

\title{Modifies .Last() to call 'finalizeSession()}

\description{
  Modifies .Last() to call 'finalizeSession() \emph{before} calling the default \code{.Last()} function.

  Note that \code{.Last()} is \emph{not} guaranteed to be called when
  the \R session finished.  For instance, the user may quit \R by calling
  \code{quit(runLast=FALSE)} or run R in batch mode.

  Note that this function is called when the R.utils package is loaded.
}

\usage{
\method{addFinalizerToLast}{default}(...)
}

\arguments{
 \item{...}{Not used.}
}

\value{
  Returns (invisibly) \code{\link[base:logical]{TRUE}} if \code{.Last()} was modified,
  otherwise \code{\link[base:logical]{FALSE}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link{onSessionExit}}().
}


\keyword{programming}
