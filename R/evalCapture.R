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
#   \item{...}{Additional arguments passed to @see "R.utils::sourceTo"
#      which in turn passes arguments to @see "base::source".}
#   \item{code}{If @TRUE, the deparsed code of the expression is echoed.}
#   \item{output}{If @TRUE, the output of each evaluated subexpression
#      is echoed.}
#   \item{envir}{The @enviroment in which the expression is evaluated.}
#   \item{trim}{If @TRUE, the captured rows are trimmed.}
#   \item{collapse}{A @character string used for collapsing the captured
#      rows.  If @NULL, the rows are not collapsed.}
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
evalCapture <- function(expr, code=TRUE, output=code, ..., trim=TRUE, collapse="\n", envir=parent.frame()) {
  # Get code/expression without evaluating it
  expr2 <- substitute(expr);

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
    sourceTo(file=con, echo=code, print.eval=output, ..., envir=envir);
  });

  # Drop empty lines
  if (trim) {
    res <- res[nchar(res) > 0];
  }

  if (!is.null(collapse)) {
    res <- c(res, "");
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
