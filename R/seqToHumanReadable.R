#########################################################################/**
# @RdocDefault seqToHumanReadable
#
# @title "Gets a short human readable string representation of an vector of indices"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{idx}{A @vector of @integer indices.}
#   \item{delimiter}{A @character string delimiter.}
#   \item{collapse}{A @character string used to collapse subsequences.}
#   \item{...}{Not used.}
# }
#
# @author
#
# \examples{
#   print(seqToHumanReadable(1:2))                 # "1, 2"
#   print(seqToHumanReadable(1:10))                # "1-10"
#   print(seqToHumanReadable(c(1:10, 15:18, 20)))  # "1-10, 15-18, 20"
# }
#
# \seealso{
#   Internally, @see "seqToIntervals" is used.
# }
#
# @keyword "attribute"
#*/#########################################################################
setMethodS3("seqToHumanReadable", "default", function(idx, delimiter="-", collapse=", ", ...) {
  data <- seqToIntervals(idx)

  ## Nothing to do?
  n <- nrow(data)
  if (n == 0) return("")

  s <- character(length=n)

  delta <- data[,2L] - data[,1L]

  idxs <- which(delta == 0)
  if (length(idxs) > 0L) {
    s[idxs] <- data[idxs,1L]
  }

  idxs <- which(delta == 1)
  if (length(idxs) > 0L) {
    s[idxs] <- paste(data[idxs,1L], data[idxs,2L], sep=collapse)
  }

  idxs <- which(delta > 1)
  if (length(idxs) > 0L) {
    s[idxs] <- paste(data[idxs,1L], data[idxs,2L], sep=delimiter)
  }

  paste(s, collapse=collapse)
})

###########################################################################
# HISTORY:
# 2010-02-22
# o Added Rdoc "see also" references.
# 2005-11-14
# o BUG FIX: Sequences of length one was given as intervals, e.g. 10-10.
# 2005-02-20
# o Added '...' to please R CMD check.
# 2004-10-21
# o Added Rdoc comments.
# 2004-07-24
# o BUG FIX: If length(idx) == 0, an error occured.
# 2004-07-12
# o Created.
###########################################################################
