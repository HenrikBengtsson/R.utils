###########################################################################/**
# @RdocFunction evalCapture
#
# @title "Evaluates an expression and captures the code and/or the output"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The @expression to be evaluated.}
#   \item{substitute}{An optional named @list used for substituting
#      symbols with other strings.}
#   \item{code}{If @TRUE, the deparsed code of the expression is echoed.}
#   \item{output}{If @TRUE, the output of each evaluated subexpression
#      is echoed.}
#   \item{...}{Additional arguments passed to @see "R.utils::sourceTo"
#      which in turn passes arguments to @see "base::source".}
#   \item{max.deparse.length}{A positive @integer specifying the maximum
#      length of a deparsed expression, before truncating it.}
#   \item{trim}{If @TRUE, the captured rows are trimmed.}
#   \item{newline}{If @TRUE and \code{collapse} is non-@NULL, a newline
#      is appended at the end.}
#   \item{collapse}{A @character string used for collapsing the captured
#      rows.  If @NULL, the rows are not collapsed.}
#   \item{envir}{The @enviroment in which the expression is evaluated.}
# }
#
# \value{
#   Returns a @character string class 'CapturedEvaluation'.
# }
#
# @examples "../incl/evalCapture.Rex"
#
# @author
#
# @keyword utilities
#*/###########################################################################
evalCapture <- function(expr, substitute=list(), code=TRUE, output=code, ..., max.deparse.length=getOption("max.deparse.length", 10e3), trim=TRUE, newline=getOption("evalCapture/newline", TRUE), collapse="\n", envir=parent.frame()) {
  # Get code/expression without evaluating it
  expr2 <- substitute(expr);

  # Substitute symbols?
  if (length(substitute) > 0L) {
    expr2 <- do.call(base::substitute, args=list(expr2, substitute))
  }

  # WAS:
  ## sourceCode <- capture.output(print(expr2));
  sourceCode <- deparse(expr2, width.cutoff=getOption("deparse.cutoff", 60L));

  # Trim of surrounding { ... }
  if (sourceCode[1] == "{") {
    sourceCode <- sourceCode[-c(1, length(sourceCode))];
    # Drop shortest white space prefix
    prefix <- gsub("^([ \t]*).*", "\\1", sourceCode);
    minPrefix <- min(nchar(prefix), na.rm=TRUE);
    if (minPrefix > 0) {
      sourceCode <- substring(sourceCode, first=minPrefix+1);
    }
  }

  # WORKAROUND: The following will *not* evaluate in environment
  # 'envir' due to capture.output() *unless* we evaluate 'envir'
  # before.  This sanity check will do that. /HB 2011-11-23
  stopifnot(is.environment(envir));

  # Evaluate the sourceCode via source()
  con <- textConnection(sourceCode, open="r");
  res <- capture.output({
    sourceTo(file=con, echo=code, print.eval=output, max.deparse.length=max.deparse.length, ..., envir=envir);
  });

  # Drop empty lines
  if (trim) {
    res <- res[nchar(res) > 0];
  }

  if (!is.null(collapse)) {
    if (newline) res <- c(res, "");
    res <- paste(res, collapse=collapse);
  }

  class(res) <- c("CapturedEvaluation", class(res));

  res;
} # evalCapture()


setMethodS3("print", "CapturedEvaluation", function(x, ...) {
  cat(x);
})



##############################################################################
# HISTORY:
# 2014-04-26
# o Added option "evalCapture/newline".
# 2014-04-24
# o Added argument 'newline' to evalCapture().
# 2014-04-22
# o Added argument 'substitute' to evalCapture() for substituting symbols
#   "on the fly" in the expression before it is evaluated.
# 2014-04-09
# o Added argument 'max.deparse.length' to evalCapture().
# 2014-04-06
# o Now evalCapture() utilizes deparse() to get the source code and
#   acknowledges options 'deparse.cutoff' to control the code wrapping.
#   Previously capture.output(print()) was used.
# 2011-11-23
# o BUG FIX: evalCapture() with argument 'envir' defaulting to parent.frame()
#   would not be evaluated in the parent frame as it should.  It appears
#   that the internal capture.output() prevents this from happening, unless
#   argument 'envir' is explictly evaluated within evalCapture().
# 2011-11-05
# o Added evalCapture(..., code=TRUE, output=TRUE), which is adopted from
#   evalWithEcho() in R.rsp v0.6.5.
#
# HISTORY of evalWithEcho() in R.rsp:
# 2011-03-28
# o Rewrote evalWithEcho() so that it utilizes source(..., echo=TRUE).
# o BUG FIX: evalWithEcho() would only add the prompt to the first line.
# 2011-03-15
# o Added evalWithEcho().
# o Created.
##############################################################################
