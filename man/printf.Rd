%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  printf.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{printf}
\alias{printf.default}
\alias{printf}

\title{C-style formatted output}

\description{
  C-style formatted output.
}

\usage{
\method{printf}{default}(fmt, ..., sep="", file="")
}

\arguments{
 \item{fmt}{A \code{\link[base]{character}} vector of format strings.
    See same argument for \code{\link[base]{sprintf}}().}
 \item{...}{Additional arguments \code{\link[base]{sprintf}}().}
 \item{sep}{A \code{\link[base]{character}} \code{\link[base]{vector}} of strings to append after each element.}
 \item{file}{A \code{\link[base:connections]{connection}}, or a \code{\link[base]{character}} of a file to print to.
    See same argument for \code{\link[base]{cat}}().}
}

\value{
  Returns nothing.
}

\examples{
  cat("Hello world\n")
  printf("Hello world\n")

  x <- 1.23
  cat(sprintf("x=\%.2f\n", x))
  printf("x=\%.2f\n", x)

  y <- 4.56
  cat(sprintf(c("x=\%.2f\n", "y=\%.2f\n"), c(x,y)), sep="")
  printf(c("x=\%.2f\n", "y=\%.2f\n"), c(x,y))
}

\author{Henrik Bengtsson}

\seealso{
   For C-style formatting of \code{\link[base]{character}} strings, see \code{\link[base]{sprintf}}().
}


\keyword{utilities}
