###########################################################################/** 
# @RdocDefault hpaste
#
# @title "Pasting a vector into a human-readable string"
#
# \description{
#  @get "title" such as "1, 2, 3, ..., 10".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{A @vector whose elements should be pasted together.}
#  \item{collapse, lastCollapse}{The @character strings to collapse
#    the elements together, where \code{lastCollapse} is specifying
#    the collapse string used between the last two elements.
#    If \code{lastCollapse} is @NULL (default), it is corresponds
#    to using the default collapse.}
#  \item{maxCount, abbreviate}{An positive @integer (also @Inf) 
#    specifying the number of elements to be outputted.  If there 
#    are more elements in \code{x} than \code{maxCount+1}, then 
#    \code{x} is truncated to consist of \code{x[1:(maxCount-1)]},
#    \code{abbreviate}, and \code{x[length(x)]}.
#  }
#  \item{quote}{An @character string used to quote each element.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string.
# }
# 
# @author 
#
# @examples "../incl/hpaste.Rex"
#
# \seealso{
#   @see "base::paste".
# }
#
# @keyword programming
#*/########################################################################### 
setMethodS3("hpaste", "default", function(x, collapse=", ", lastCollapse=NULL, maxCount=if (missing(lastCollapse)) 4 else Inf, abbreviate="...", quote=NULL, ...) {
  # Argument 'maxCount':
  maxCount <- Arguments$getNumeric(maxCount, range=c(1, Inf));

  if (is.null(lastCollapse)) {
    lastCollapse <- collapse;
  }

  n <- length(x);

  # Nothing todo?
  if (n == 0) return(x);
  if (is.null(collapse)) return(x);

  # Quote each element?
  if (!is.null(quote)) {
    x <- paste(quote, x, quote, sep="");
  }

  head <- x[-n];
  tail <- x[n];

  # Abbreviate?
  if (length(x) > maxCount + 1) {
    head <- c(head[1:(maxCount-1L)], abbreviate);
  }

  s <- tail;
  if (length(head) > 0) {
    head <- paste(head, collapse=collapse);
    s <- paste(head, s, sep=lastCollapse);
  }

  s;
}) # hpaste()


##############################################################################
# HISTORY:
# 2011-03-30
# o Added hpaste() for human-readable pasting of elements in a vector.
# o Created.
##############################################################################
