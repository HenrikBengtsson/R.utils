%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  captureOutput.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{captureOutput}
\alias{captureOutput}


\title{Evaluate an R expression and captures the output}

\description{
 Evaluate an R expression and captures the output.
}

\usage{
captureOutput(expr, file=NULL, append=FALSE, collapse=NULL, envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{file}{A file name or a \code{\link[base:connections]{connection}} to where the output is
     directed.  Alternatively, if \code{\link[base]{NULL}} the output is captured to
     and returned as a \code{\link[base]{character}} \code{\link[base]{vector}}.}
  \item{append}{If \code{\link[base:logical]{TRUE}}, the output is appended to the file or
     the (unopened) connection, otherwise it overwrites.}
  \item{collapse}{If \code{\link[base:logical]{TRUE}}, then argument \code{expr} is not parsed
     (via \code{\link[base]{substitute}}()), otherwise it is.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression js evaluated.}
}

\value{
 Returns captured output as a \code{\link[base]{character}} \code{\link[base]{vector}}.
}

\details{
 This methods immitates \code{\link[utils]{capture.output}} with the major
 difference that it captures strings via a \code{\link[base]{raw}} connection rather
 than via internal strings.  The latter becomes exponentially slow
 for large outputs [1].
}

\author{Henrik Bengtsson}

\seealso{
  Internally, \code{\link[base]{eval}}() is used to evaluate the expression.
  and \code{\link[utils]{capture.output}} to capture the output.
}

\references{
 [1] R-devel thread 'capture.output(): Using a rawConnection() [linear]
     instead of textConnection() [exponential]?', 2014-02-03.
     \url{https://stat.ethz.ch/pipermail/r-devel/2014-February/068349.html}
}



\keyword{IO}
\keyword{programming}
