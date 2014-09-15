%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withSink.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withSink}
\alias{withSink}


\title{Evaluate an R expression while temporarily diverting output}

\description{
 Evaluate an R expression while temporarily diverting output.
}

\usage{
withSink(expr, file, append=FALSE, type=c("output", "message"), envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{file}{A writable \code{\link[base:connections]{connection}} or a \code{\link[base]{character}} string naming the
   file to write to.}
  \item{append}{If \code{\link[base:logical]{TRUE}}, the diverted output is appended to the file,
   otherwise not.}
  \item{type}{A \code{\link[base]{character}} string specifying whether to divert output
   sent to the standard output or the standard error.
   See \code{\link[base]{sink}}() for details.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should be evaluated.}
}

\value{
 Returns the results of the expression evaluated.
}

\details{
  Upon exit (also on errors), this function will close the requested
  "sink".  If additional sinks (of any type) where also opened during
  the evaluation, those will also be closed with a warning.
}

\author{Henrik Bengtsson}

\examples{
# Divert standard output
pathname <- tempfile(fileext="output.txt")
res <- withSink(file=pathname, {
  print(letters)
})
mcat(readLines(pathname), sep="\n")


# Divert standard error/messages
pathname <- tempfile(fileext="message.txt")
res <- withSink(file=pathname, type="message", {
  mprint(LETTERS)
})
mcat(readLines(pathname), sep="\n")
}

\seealso{
  Internally, \code{\link[base]{sink}}() is used to divert any output.
}



\keyword{IO}
\keyword{programming}
