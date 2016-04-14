###########################################################################/**
# @RdocDefault hpaste
#
# @title "Concatenating vectors into human-readable strings"
#
# \description{
#  @get "title" such as "1, 2, 3, ..., 10".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments to be pasted.}
#  \item{sep}{A @character string used to concatenate the arguments
#    in \code{...}, if more than one.}
#  \item{collapse, lastCollapse}{The @character strings to collapse
#    the elements together, where \code{lastCollapse} is specifying
#    the collapse string used between the last two elements.
#    If \code{lastCollapse} is @NULL (default), it is corresponds
#    to using the default collapse.}
#  \item{maxHead, maxTail, abbreviate}{Non-negative @integers (also @Inf)
#    specifying the maxium number of elements of the beginning and
#    then end of the vector to be outputted.  If \code{n = length(x)}
#    is greater than \code{maxHead+maxTail+1}, then \code{x} is
#    truncated to consist of \code{x[1:maxHead]}, \code{abbreviate},
#    and \code{x[(n-maxTail+1):n]}.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# \details{
#  \code{hpaste(..., sep=" ", maxHead=Inf)} corresponds to
#  \code{paste(..., sep=" ", collapse=", ")}.
# }
#
# @author
#
# @examples "../incl/hpaste.Rex"
#
# \seealso{
#   Internally @see "base::paste" is used.
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("hpaste", "default", function(..., sep="", collapse=", ", lastCollapse=NULL, maxHead=if (missing(lastCollapse)) 3 else Inf, maxTail=if (is.finite(maxHead)) 1 else Inf, abbreviate="...") {
  # Argument 'maxHead':
  maxHead <- Arguments$getNumeric(maxHead, range=c(0, Inf));

  # Argument 'maxTail':
  maxTail <- Arguments$getNumeric(maxTail, range=c(0, Inf));

  if (is.null(lastCollapse)) {
    lastCollapse <- collapse;
  }


  # Build vector 'x'
  x <- paste(..., sep=sep);
  n <- length(x);

  # Nothing todo?
  if (n == 0) return(x);
  if (is.null(collapse)) return(x);

  # Abbreviate?
  if (n > maxHead + maxTail + 1) {
    head <- x[seq_len(maxHead)];
    tail <- rev(rev(x)[seq_len(maxTail)]);
    x <- c(head, abbreviate, tail);
    n <- length(x);
  }

  if (!is.null(collapse) && n > 1) {
    if (lastCollapse == collapse) {
      x <- paste(x, collapse=collapse);
    } else {
      xT <- paste(x[1:(n-1)], collapse=collapse);
      x <- paste(xT, x[n], sep=lastCollapse);
    }
  }

  x;
}) # hpaste()


##############################################################################
# HISTORY:
# 2011-04-03
# o Dropped argument 'quote'; can easily be done using hpaste("'", x, "'").
# o Now hpaste(..., sep=" ", maxHead=Inf) corresponds to
#   paste(..., sep=" ", collapse=", ").
# o Added argument sep="" to hpaste().
# 2011-04-02
# o Now hpaste() uses arguments 'maxHead' and 'maxTail' instead of 'maxCount'.
# 2011-03-30
# o Added hpaste() for human-readable pasting of elements in a vector.
# o Created.
##############################################################################
