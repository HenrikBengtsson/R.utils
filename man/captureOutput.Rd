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
  \item{collapse}{A \code{\link[base]{character}} string used for collapsing the captured
     rows. If \code{\link[base]{NULL}}, the rows are not collapsed.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression is evaluated.}
}

\value{
 Returns captured output as a \code{\link[base]{character}} \code{\link[base]{vector}}.
}

\details{
 This method immitates \code{\link[utils]{capture.output}} with the major
 difference that it captures strings via a \code{\link[base]{raw}} connection rather
 than via internal strings.  The latter becomes exponentially slow
 for large outputs [1,2].
}

\examples{
# captureOutput() is much faster than capture.output()
# for large outputs when capturing to a string.
for (n in c(10e3, 40e3, 80e3)) {
  printf("n=\%d\n", n)

  x <- rnorm(n)

  t0 <- system.time({
    bfr0 <- capture.output(print(x))
  })
  print(t0)

  t1 <- system.time({
    bfr <- captureOutput(print(x))
  })
  print(t1)
  print(t1/t0)

  bfr2n <- captureOutput(print(x), collapse="\n")
  bfr2r <- captureOutput(print(x), collapse="\r")
#  stopifnot(nchar(bfr2n) == nchar(bfr2r))

  stopifnot(identical(bfr, bfr0))
} # for (n ...)
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
 [2] JottR blog post 'PERFORMANCE: captureOutput() is much faster than
     capture.output()', 2015-05-26.
     \url{http://www.jottr.org/2014/05/captureOutput.html}
}



\keyword{IO}
\keyword{programming}
