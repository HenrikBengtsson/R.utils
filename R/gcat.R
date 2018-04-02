###########################################################################/**
# @RdocDefault gcat
# @alias gcat.GString
#
# @title "Parses, evaluates and outputs a GString"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{@character strings passed to @see "gstring".}
#   \item{file}{A @connection, or a pathname where to direct the output.
#               If \code{""}, the output is sent to the standard output.}
#   \item{append}{Only applied if \code{file} specifies a pathname
#     If @TRUE, then the output is appended to the file, otherwise 
#     the files content is overwritten.}
#  \item{envir}{The @environment in which the @see "GString" is evaluated.}
# }
#
# \value{
#   Returns (invisibly) a @character string.
# }
#
# @author
#
# \seealso{
#   @see "gstring".
# }
#*/###########################################################################
setMethodS3("gcat", "GString", function(..., file="", append=FALSE, envir=parent.frame()) {
  s <- gstring(..., envir=envir)
  cat(s, file=file, append=append)
  invisible(s)
})

setMethodS3("gcat", "default", function(..., file="", append=FALSE, envir=parent.frame()) {
  s <- gstring(..., envir=envir)
  cat(s, file=file, append=append)
  invisible(s)
})
