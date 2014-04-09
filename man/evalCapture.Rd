%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  evalCapture.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{evalCapture}
\alias{evalCapture}


\title{Evaluates an expression and captures the code and/or the output}

\description{
 Evaluates an expression and captures the code and/or the output.
}

\usage{
evalCapture(expr, code=TRUE, output=code, ...,
  max.deparse.length=getOption("max.deparse.length", 10000), trim=TRUE, collapse="\n",
  envir=parent.frame())
}

\arguments{
  \item{expr}{The \code{\link[base]{expression}} to be evaluated.}
  \item{code}{If \code{\link[base:logical]{TRUE}}, the deparsed code of the expression is echoed.}
  \item{output}{If \code{\link[base:logical]{TRUE}}, the output of each evaluated subexpression
     is echoed.}
  \item{...}{Additional arguments passed to \code{\link[R.utils]{sourceTo}}
     which in turn passes arguments to \code{\link[base]{source}}().}
  \item{max.deparse.length}{A positive \code{\link[base]{integer}} specifying the maximum
     length of a deparsed expression, before truncating it.}
  \item{trim}{If \code{\link[base:logical]{TRUE}}, the captured rows are trimmed.}
  \item{collapse}{A \code{\link[base]{character}} string used for collapsing the captured
     rows.  If \code{\link[base]{NULL}}, the rows are not collapsed.}
  \item{envir}{The @enviroment in which the expression is evaluated.}
}

\value{
  Returns a \code{\link[base]{character}} string class 'CapturedEvaluation'.
}

\examples{
print(evalCapture({
 n <- 3;
 n;

 for (kk in 1:3) {
   printf("Iteration #\%d\n", kk);
 }

 print(Sys.time());

 type <- "horse";
 type;
}))

## > n <- 3
## > n
## [1] 3
## > for (kk in 1:3) {
## +     printf("Iteration #\%d\n", kk)
## + }
## Iteration #1
## Iteration #2
## Iteration #3
## > print(Sys.time())
## [1] "2011-11-06 11:06:32 PST"
## > type <- "horse"
## > type
## [1] "horse"
}

\author{Henrik Bengtsson}


\keyword{utilities}
