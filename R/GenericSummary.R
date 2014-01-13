setConstructorS3("GenericSummary", function(s="", ...) {
  class(s) <- "GenericSummary";
  s;
}, protected=TRUE)

setMethodS3("print", "GenericSummary", function(x, ..., collapse="\n") {
  # To please R CMD check
  this <- x;

  s <- as.character(this);
  s <- paste(s, collapse=collapse);
  cat(s, collapse, sep="");
}, protected=TRUE)

setMethodS3("c", "GenericSummary", function(x, ...) {
  s <- NextMethod("c");
  class(s) <- class(x);
  s;
}, protected=TRUE)

setMethodS3("[", "GenericSummary", function(x, i, ...) {
  s <- NextMethod("[");
  class(s) <- class(x);
  s;
}, protected=TRUE)


# setMethodS3("as.character", "GenericSummary", function(this, ..., indent="  ") {
#    toString <- function(s, currIndent="") {
#      if (is.list(s)) {
#        s <- sapply(s, FUN=function(x) {
#          paste(currIndent,
#                toString(x, currIndent=paste(currIndent, indent, sep="")),
#                sep="");
#        })
#        unlist(s, use.names=FALSE);
#      } else {
#        s;
#      }
#    }
#
#    toString(this);
# })


############################################################################
# HISTORY:
# 2014-01-12
# o Added [() for GenericSummary.
# 2013-11-16
# o Added c() for GenericSummary.
# 2009-12-30
# o Moved from aroma.core to R.utils.
# 2007-01-13
# o Added indentation support GenericSummary.
# 2006-11-22
# o Added GenericSummary.
# 2006-08-11
# o Created.
############################################################################
