###########################################################################/**
# @RdocDefault printf
#
# @title "C-style formatted output"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{fmt}{A @character vector of format strings.
#     See same argument for @see "base::sprintf".}
#  \item{...}{Additional arguments @see "base::sprintf".}
#  \item{sep}{A @character @vector of strings to append after each element.}
#  \item{file}{A @connection, or a @character of a file to print to.
#     See same argument for @see "base::cat".}
# }
#
# \value{
#   Returns nothing.
# }
#
# \examples{
#   cat("Hello world\n")
#   printf("Hello world\n")
#
#   x <- 1.23
#   cat(sprintf("x=\%.2f\n", x))
#   printf("x=\%.2f\n", x)
#
#   y <- 4.56
#   cat(sprintf(c("x=\%.2f\n", "y=\%.2f\n"), c(x,y)), sep="")
#   printf(c("x=\%.2f\n", "y=\%.2f\n"), c(x,y))
# }
#
# @author
#
# \seealso{
#    For C-style formatting of @character strings, see @see "base::sprintf".
# }
#
# @keyword utilities
#*/########################################################################### 
setMethodS3("printf", "default", function(fmt, ..., sep="", file="") {
  base::cat(base::sprintf(fmt, ...), file=file, sep=sep);
})


############################################################################
# HISTORY:
# 2006-06-09
# o Created.
############################################################################
