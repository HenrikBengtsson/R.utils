%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  egsub.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{egsub}
\alias{egsub}


\title{Global substitute of expression using regular expressions}

\description{
 Global substitute of expression using regular expressions.
}

\usage{
egsub(pattern, replacement, x, ..., value=TRUE, envir=parent.frame(), inherits=TRUE)
}

\arguments{
  \item{pattern}{A \code{\link[base]{character}} string with the regular expression to be
     matched, cf. \code{\link[base]{gsub}}().}
  \item{replacement}{A \code{\link[base]{character}} string of the replacement to use
     when there is a match, cf. \code{\link[base]{gsub}}().}
  \item{x}{The \code{\link[base]{expression}} to be modified.}
  \item{...}{Additional arguments passed to \code{\link[base]{gsub}}()}
  \item{value}{If \code{\link[base:logical]{TRUE}}, the value of the replacement itself is used
     to look up a variable with that name and then using that variables
     value as the replacement.  Otherwise the replacement value is used.}
  \item{envir, inherits}{An \code{\link[base]{environment}} from where to find the variable
     and whether the search should also include enclosing frames, cf.
     \code{\link[base]{get}}().  Only use if \code{value} is \code{\link[base:logical]{TRUE}}.}
}

\value{
  Returns an \code{\link[base]{expression}}.
}

\examples{
# Original expression
expr <- substitute({
  res <- foo.bar.yaa(2)
  print(res)
  R.utils::use("R.oo")
  x <- .b.
})

# Some predefined objects
foo.bar.yaa <- function(x) str(x)
a <- 2
b <- a

# Substitute with variable name
expr2 <- egsub("^[.]([a-zA-Z0-9_.]+)[.]$", "\\\\1", expr, value=FALSE)
print(expr2)
## {
##     res <- foo.bar.yaa(2)
##     print(res)
##     R.utils::use("R.oo")
##     x <- b
## }

# Substitute with variable value
expr3 <- egsub("^[.]([a-zA-Z0-9_.]+)[.]$", "\\\\1", expr, value=TRUE)
print(expr3)
## {
##     res <- foo.bar.yaa(2)
##     print(res)
##     R.utils::use("R.oo")
##     x <- 2
## }
}

\author{Henrik Bengtsson}



\keyword{utilities}
\keyword{programming}
