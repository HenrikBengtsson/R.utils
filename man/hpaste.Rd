%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  hpaste.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{hpaste}
\alias{hpaste.default}
\alias{hpaste}

 \title{Pasting a vector into a human-readable string}

 \description{
  Pasting a vector into a human-readable string such as "1, 2, 3, ..., 10".
 }

 \usage{\method{hpaste}{default}(x, collapse=", ", lastCollapse=NULL, maxHead=if (missing(lastCollapse)) 3 else Inf, maxTail=if (is.finite(maxHead)) 1 else Inf, abbreviate="...", quote=NULL, ...)}

 \arguments{
  \item{x}{A \code{\link[base]{vector}} whose elements should be pasted together.}
  \item{collapse, lastCollapse}{The \code{\link[base]{character}} strings to collapse
    the elements together, where \code{lastCollapse} is specifying
    the collapse string used between the last two elements.
    If \code{lastCollapse} is \code{\link[base]{NULL}} (default), it is corresponds
    to using the default collapse.}
  \item{maxHead, maxTail, abbreviate}{Non-negative \code{\link[base]{integer}}s (also \code{\link[base:is.finite]{Inf}})
    specifying the maxium number of elements of the beginning and
    then end of the vector to be outputted.  If \code{n = length(x)}
    is greater than \code{maxHead+maxTail+1}, then \code{x} is
    truncated to consist of \code{x[1:maxHead]}, \code{abbreviate},
    and \code{x[(n-maxTail+1):n]}.
  }
  \item{quote}{An \code{\link[base]{character}} string used to quote each element.}
  \item{...}{Not used.}
 }

 \value{
  Returns a \code{\link[base]{character}} string.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \examples{

# Some vectors
x <- 1:6
y <- 1:10
z <- LETTERS[x]

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Abbreviation of output vector
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
printf("x = \%s.\n", hpaste(x))
## x = 1, 2, 3, ..., 6.

printf("x = \%s.\n", hpaste(x, maxHead=2))
## x = 1, 2, ..., 6.

printf("x = \%s.\n", hpaste(x), maxHead=3) # Default
## x = 1, 2, 3, ..., 6.

# It will never output 1, 2, 3, 4, ..., 6
printf("x = \%s.\n", hpaste(x, maxHead=4))
## x = 1, 2, 3, 4, 5 and 6.

# Showing the tail
printf("x = \%s.\n", hpaste(x, maxHead=1, maxTail=2))
## x = 1, ..., 5, 6.

# Turning off abbreviation
printf("y = \%s.\n", hpaste(y, maxHead=Inf))
## y = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.

## ...or simply
printf("y = \%s.\n", paste(y, collapse=", "))
## y = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Adding a special separator before the last element
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Change last separator
printf("x = \%s.\n", hpaste(x, lastCollapse=" and "))
## x = 1, 2, 3, 4, 5 and 6.


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Qouting
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
printf("z = \%s.\n", hpaste(z, quote="'"))
## z = 'A', 'B', 'C', ..., 'F'.

printf("z = \%s.\n", hpaste(z, quote="'", maxHead=Inf))
## z = 'A', 'B', 'C', 'D', 'E', 'F'.
}

 \seealso{
   \code{\link[base]{paste}}().
 }


\keyword{programming}
