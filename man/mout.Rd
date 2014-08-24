%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  mout.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{mout}
\alias{mout}

\alias{mprint}
\alias{mshow}
\alias{mcat}
\alias{mstr}
\alias{mprintf}

\title{Miscellaneous functions for outputting via message()}

\description{
  Miscellaneous functions for outputting via message().
  These "m*" methods work analogously to their corresponding "*" methods
  \code{\link[base]{print}}(), \code{\link[base]{cat}}(), \code{\link[methods]{show}},
  \code{\link[utils]{str}}, and \code{\link{printf}}() but uses \code{\link[base]{message}}()
  to output the content, which in turn outputs to standard error.
  The \code{mout()} method can be used for all other output methods,
  e.g. \code{mout(write(x, file=stdout()))}.
}

\usage{
mout(..., appendLF=FALSE)
}

\arguments{
 \item{...}{Arguments passed to the underlying output method.}
 \item{appendLF}{A \code{\link[base]{logical}} specifying whether to append a newline at
  the end or not.}
}

\value{
  Returns what the  \code{\link[base]{message}}() returns.
}

\examples{
  print(letters[1:8])
  mprint(letters[1:8])

  cat(c(letters[1:8], "\n"))
  mcat(c(letters[1:8], "\n"))

  str(letters[1:8])
  mstr(letters[1:8])

  printf("x=\%d\n", 1:3)
  mprintf("x=\%d\n", 1:3)
}

\author{Henrik Bengtsson}


\keyword{utilities}
