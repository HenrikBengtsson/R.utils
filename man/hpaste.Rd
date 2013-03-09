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

 \title{Concatenating vectors into human-readable strings}

 \description{
  Concatenating vectors into human-readable strings such as "1, 2, 3, ..., 10".
 }

 \usage{
\method{hpaste}{default}(..., sep="", collapse=", ", lastCollapse=NULL, maxHead=if (missing(lastCollapse)) 3 else Inf, maxTail=if (is.finite(maxHead)) 1 else Inf, abbreviate="...")
}

 \arguments{
  \item{...}{Arguments to be pasted.}
  \item{sep}{A \code{\link[base]{character}} string used to concatenate the arguments
    in \code{...}, if more than one.}
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
    and \code{x[(n-maxTail+1):n]}.}
 }

 \value{
  Returns a \code{\link[base]{character}} string.
 }

 \details{
  \code{hpaste(..., sep=" ", maxHead=Inf)} corresponds to
  \code{paste(..., sep=" ", collapse=", ")}.
 }

 \author{Henrik Bengtsson}

 \examples{

# Some vectors
x <- 1:6
y <- 10:1
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
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

## ...or simply
printf("y = \%s.\n", paste(y, collapse=", "))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Adding a special separator before the last element
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Change last separator
printf("x = \%s.\n", hpaste(x, lastCollapse=" and "))
## x = 1, 2, 3, 4, 5 and 6.



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Backward compatibility with paste()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
s1 <- hpaste(x, maxHead=Inf)
s2 <- paste(x, collapse=", ")
printf("s = \%s.\n", s1);
stopifnot(identical(s1, s2))

s1 <- hpaste('<', x, '>', maxHead=Inf)
s2 <- paste('<', x, '>', sep="", collapse=", ")
printf("s = \%s.\n", s1);
stopifnot(identical(s1, s2))

s1 <- hpaste(x, y, z, sep="/", maxHead=Inf)
s2 <- paste(x, y, z, sep="/", collapse=", ")
printf("s = \%s.\n", s1);
stopifnot(identical(s1, s2))

s1 <- hpaste(x, collapse=NULL, maxHead=Inf)
s2 <- paste(x, collapse=NULL)
stopifnot(identical(s1, s2))

}

 \seealso{
   Internally \code{\link[base]{paste}}() is used.
 }


\keyword{programming}
