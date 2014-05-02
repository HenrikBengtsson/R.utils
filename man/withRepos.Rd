%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withRepos.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withRepos}
\alias{withRepos}


\title{Evaluate an R expression with repositories set temporarily}

\description{
 Evaluate an R expression with repositories set temporarily.
}

\usage{
withRepos(expr, repos=NULL, ..., envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{repos}{A \code{\link[base]{character}} \code{\link[base]{vector}} of repositories to use.}
  \item{...}{Additional arguments passed to \code{\link{useRepos}}().}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should be evaluated.}
}

\value{
 Returns the results of the expression evaluated.
}

\author{Henrik Bengtsson}

\examples{\dontrun{
  # Install from BioC related repositories only
  withRepos(install.packages("edgeR"), repos="[[BioC]]")

  # Install from CRAN or BioC related repositories only
  withRepos(install.packages("edgeR"), repos=c("CRAN", "[[BioC]]"))

  # Install from mainstream repositories only (same as previous)
  withRepos(install.packages("edgeR"), repos="[[mainstream]]")

  # Install from R-Forge and mainstream repositories only
  withRepos(install.packages("R.utils"), repos="[[R-Forge]]")
}}

\seealso{
  Internally, \code{\link[base]{eval}}() is used to evaluate the expression.
  See also \code{\link[base]{options}}() and \code{\link[utils]{install.packages}}.
}



\keyword{IO}
\keyword{programming}
