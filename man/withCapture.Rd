%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withCapture.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withCapture}
\alias{withCapture}

\alias{evalCapture}

\title{Evaluates an expression and captures the code and/or the output}

\description{
 Evaluates an expression and captures the code and/or the output.
}

\usage{
withCapture(expr, replace=getOption("withCapture/substitute", ".x."), code=TRUE,
  output=code, ..., max.deparse.length=getOption("max.deparse.length", 10000), trim=TRUE,
  newline=getOption("withCapture/newline", TRUE), style=getOption("withCapture/style",
  "console"), collapse="\n", envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{replace}{An optional named \code{\link[base]{list}} used for substituting
     symbols with other strings.}
  \item{code}{If \code{\link[base:logical]{TRUE}}, the deparsed code of the expression is echoed.}
  \item{output}{If \code{\link[base:logical]{TRUE}}, the output of each evaluated subexpression
     is echoed.}
  \item{...}{Additional arguments passed to \code{\link[R.utils]{sourceTo}}
     which in turn passes arguments to \code{\link[base]{source}}().}
  \item{max.deparse.length}{A positive \code{\link[base]{integer}} specifying the maximum
     length of a deparsed expression, before truncating it.}
  \item{trim}{If \code{\link[base:logical]{TRUE}}, the captured rows are trimmed.}
  \item{newline}{If \code{\link[base:logical]{TRUE}} and \code{collapse} is non-\code{\link[base]{NULL}}, a newline
     is appended at the end.}
  \item{style}{A \code{\link[base]{character}} string specifying the format of the
     captured rows.  If \code{"console"} (default), the code is echoed
     as in an interactive R session, that is, each line of code is
     prefixed with the R prompt (\code{getOption("prompt")} and
     \code{getOption("continue")}), and the output is left as is.
     If \code{"script"}, the code is echoed as is, without any prompts,
     and each line of output is prefixed with \code{"#> "}, which
     makes the result suitable for copy-and-pasting into R.
     This argument cannot be combined with arguments \code{prompt.echo}
     and \code{continue.echo} passed via \code{...}.}
  \item{collapse}{A \code{\link[base]{character}} string used for collapsing the captured
     rows.  If \code{\link[base]{NULL}}, the rows are not collapsed.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression is evaluated.}
}

\value{
  Returns a \code{\link[base]{character}} string class 'CapturedEvaluation'.
}

\examples{
print(withCapture({
 n <- 3
 n

 for (kk in 1:3) {
   printf("Iteration #\%d\n", kk)
 }

 print(Sys.time())

 type <- "horse"
 type
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


# Automatic "variable" substitute
# (disable with relabel=NULL)
a <- 2
b <- "Hello world!"

print(withCapture({
 x <- .a.
 s <- .b.
 x
 s
}))

## > x <- 2
## > s <- "Hello world!"
## > x
## [1] 2
## > s
## [1] "Hello world!"
}

\author{Henrik Bengtsson}

\seealso{
  Internally, \code{\link[base]{eval}}() is used to evaluate the expression.
}


\keyword{utilities}
