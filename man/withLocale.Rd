%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  withLocale.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{withLocale}
\alias{withLocale}


\title{Evaluate an R expression with locale set temporarily}

\description{
 Evaluate an R expression with locale set temporarily.
}

\usage{
withLocale(expr, category, locale, ..., substitute=TRUE, envir=parent.frame())
}

\arguments{
  \item{expr}{The R expression to be evaluated.}
  \item{category}{A \code{\link[base]{character}} string specifying the category to use.}
  \item{locale}{\code{\link[base]{character}} \code{\link[base]{vector}} specifying the locale to used.  The
   first successfully set one will be used.}
  \item{...}{Not used.}
  \item{substitute}{If \code{\link[base:logical]{TRUE}}, argument \code{expr} is
   \code{\link[base]{substitute}()}:ed, otherwise not.}
  \item{envir}{The \code{\link[base]{environment}} in which the expression should be evaluated.}
}

\value{
 Returns the results of the expression evaluated.
}

\author{Henrik Bengtsson}

\examples{
# Vector
cat("Original vector:\n")
x <- c(letters[1:8], LETTERS[1:8])
print(x)

cat("Sorting with 'C' locale:\n")
y1 <- withLocale(sort(x), "LC_COLLATE", "C")
print(y1)

cat("Sorting with an 'English' locale:\n")
y2 <- withLocale(sort(x), "LC_COLLATE", c("en_US", "en_US.UTF8", "English_United States.1252"))
print(y2)
}

\seealso{
  Internally, \code{\link[base]{eval}}() is used to evaluate the expression.
  and \code{\link[base]{Sys.setlocale}}() to set locale.
}



\keyword{IO}
\keyword{programming}
