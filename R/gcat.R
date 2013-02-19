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
#   \item{append}{Only applied if \code{file} specifies a pathname;
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
  s <- gstring(..., envir=envir);
  cat(s, file=file, append=append);
  invisible(s);
})

setMethodS3("gcat", "default", function(..., file="", append=FALSE, envir=parent.frame()) {
  s <- gstring(..., envir=envir);
  cat(s, file=file, append=append);
  invisible(s);
})



######################################################################
# HISTORY:
# 2013-02-18
# o BUG FIX: evaluate(..., where="parent") for GString would result
#   in an endless loop.
# o Now it is possible to escape the sed-like search replace format
#   for GString:s via quoting, e.g. ${'R.rsp/HttpDaemon/RspVersion'} .
# 2013-02-14
# o Added gstring() and gcat().
# 2013-02-13
# o Added evaluate() for GString.
# 2011-11-19
# o Now parse() and as.character() also handle "empty" GString:s.
# 2011-11-15
# o KNOWN ISSUES: as.character() is also finding objects of the
#   local environment.
# o SPEEDUP: Now as.character() and parse() for GString return
#   faster if the string is a plain string without markup etc.
#   This made as.character() about 10-15 times faster.
# 2005-12-05
# o BUG FIX: getVariableValue() would generate an error if a
#   functions was detected. Now, NA is returned.
# 2005-09-06
# o BUG FIX of yesterdays patch. Forgot to extract the 'match.length'.
# 2005-09-05
# o Expected in parse() that regexpr() only returned one value, but
#   sometimes it did return more and a warning was generated.
# 2005-06-09
# o Added print() to get rid of the class attributes.
# o Made static method static.
# 2005-06-08
# o Added Rdoc comments to all methods.
# o Created.
######################################################################
