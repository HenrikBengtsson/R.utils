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
#   print(seqToHumanReadable(1:10))  # "1-10"
#   print(seqToHumanReadable(c(1:10, 15:18, 20)))  # "1-10, 15-18, 20"
# }
#
# @keyword "attribute"
#*/#########################################################################t 
setMethodS3("seqToHumanReadable", "default", function(idx, delimiter="-", collapse=", ", ...) {
  idx <- as.integer(idx);
  idx <- unique(idx);
  idx <- sort(idx);

  s <- "";
  if (length(idx) == 0)
    return(s);

  fromValue <- idx[1];
  toValue <- fromValue-1;
  lastValue <- fromValue;

  count <- 0;
  for (kk in seq(along=idx)) {
    value <- idx[kk];
    if (value - lastValue > 1) {
      toValue <- lastValue;
      if (count > 0)
        s <- paste(s, collapse, sep="");
      if (toValue - fromValue == 0) {
        s <- paste(s, fromValue, sep="");
      } else {
        s <- paste(s, fromValue, delimiter, toValue, sep="");
      }
      fromValue <- value;
      count <- count + 1;
    }
    lastValue <- value;
  }

  if (toValue < fromValue) {
    toValue <- lastValue;
    if (count > 0)
      s <- paste(s, collapse, sep="");
    if (toValue - fromValue == 0) {
      s <- paste(s, fromValue, sep="");
    } else if (toValue - fromValue == 1) {
      s <- paste(s, fromValue, collapse, toValue, sep="");
    } else {
      s <- paste(s, fromValue, delimiter, toValue, sep="");
    }
  }

  s;
})

###########################################################################
# HISTORY: 
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
