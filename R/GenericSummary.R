setConstructorS3("GenericSummary", function(s="", ...) {
  class(s) <- "GenericSummary"
  s
}, protected=TRUE)

setMethodS3("print", "GenericSummary", function(x, ..., collapse="\n") {
  # To please R CMD check
  this <- x

  s <- as.character(this)
  s <- paste(s, collapse=collapse)
  cat(s, collapse, sep="")
}, protected=TRUE)

setMethodS3("c", "GenericSummary", function(x, ...) {
  s <- NextMethod("c")
  class(s) <- class(x)
  s
}, protected=TRUE)

setMethodS3("[", "GenericSummary", function(x, i, ...) {
  s <- NextMethod("[")
  class(s) <- class(x)
  s
}, protected=TRUE)


# setMethodS3("as.character", "GenericSummary", function(this, ..., indent="  ") {
#    toString <- function(s, currIndent="") {
#      if (is.list(s)) {
#        s <- sapply(s, FUN=function(x) {
#          paste(currIndent,
#                toString(x, currIndent=paste(currIndent, indent, sep="")),
#                sep="")
#        })
#        unlist(s, use.names=FALSE)
#      } else {
#        s
#      }
#    }
#
#    toString(this)
# })
