###########################################################################/**
# @RdocFunction withCapture
# @alias evalCapture
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
#   \item{expr}{The R expression to be evaluated.}
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
#   \item{envir}{The @environment in which the expression is evaluated.}
# }
#
# \value{
#   Returns a @character string class 'CapturedEvaluation'.
# }
#
# @examples "../incl/withCapture.Rex"
#
# @author
#
# \seealso{
#   Internally, @see "base::eval" is used to evaluate the expression.
# }
#
# @keyword utilities
#*/###########################################################################
withCapture <- function(expr, substitute=getOption("withCapture/substitute", ".x."), code=TRUE, output=code, ..., max.deparse.length=getOption("max.deparse.length", 10e3), trim=TRUE, newline=getOption("withCapture/newline", TRUE), collapse="\n", envir=parent.frame()) {
  # Get code/expression without evaluating it
  expr2 <- substitute(expr);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Substitute?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # (a) Substitute by "constant" symbols?
  if (is.list(substitute) && (length(substitute) > 0L)) {
    names <- names(substitute);
    if (is.null(names)) throw("Argument 'substitute' must be named.");
    expr2 <- do.call(base::substitute, args=list(expr2, substitute))
  }

  # (b) Substitute code by regular expressions?
  if (is.character(substitute) && (length(substitute) > 0L)) {
    patterns <- names(substitute);
    replacements <- substitute;

    # Predefined rules?
    if (is.null(patterns)) {
      patterns <- rep(NA_character_, times=length(replacements));
      for (kk in seq_along(replacements)) {
        replacement <- replacements[kk];
        if (identical(replacement, ".x.")) {
          patterns[kk] <- "^[.]([a-zA-Z0-9_.]+)[.]$"
          replacements[kk] <- "\\1";
        } else if (identical(replacement, "..x..")) {
          patterns[kk] <- "^[.][.]([a-zA-Z0-9_.]+)[.][.]$"
          replacements[kk] <- "\\1";
        }
      }
      unknown <- replacements[is.na(patterns)];
      if (length(unknown) > 0L) {
        throw("Unknown substitution rules: ", paste(sQuote(unknown), collapse=", "));
      }
    }

    if (is.null(patterns)) throw("Argument 'substitute' must be named.");

    # (b) Substitute via regular expression
    for (kk in seq_along(replacements)) {
      pattern <- patterns[kk];
      replacement <- replacements[kk];
      expr2 <- egsub(pattern, replacement, expr2, envir=envir);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Deparse
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # WAS:
  ## sourceCode <- capture.output(print(expr2));
  sourceCode <- deparse(expr2, width.cutoff=getOption("deparse.cutoff", 60L));


  # Nothing todo?
  if (length(sourceCode) == 0L) {
    ## Can this ever happen? /HB 2015-05-27
    return(structure(character(0L), class=c("CapturedEvaluation", "character")));
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Trim code
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Trim of surrounding { ... }
  if (sourceCode[1L] == "{") {
    sourceCode <- sourceCode[-c(1L, length(sourceCode))];

    # Nothing todo?
    if (length(sourceCode) == 0L) {
      return(structure(character(0L), class=c("CapturedEvaluation", "character")));
    }

    # Drop shortest white space prefix
    prefix <- gsub("^([ \t]*).*", "\\1", sourceCode);
    minPrefix <- min(nchar(prefix), na.rm=TRUE);
    if (minPrefix > 0L) {
      sourceCode <- substring(sourceCode, first=minPrefix+1);
    }

    # WORKAROUND: Put standalone 'else':s together with previous statement.
    # This solves the problem described in R help thread "deparse() and the
    # 'else' statement" by Yihui Xie on 2009-11-09
    # [http://tolstoy.newcastle.edu.au/R/e8/help/09/11/4204.html], where
    # deparse puts 'else' on a new line iff if-else statement is enclosed
    # in an { ... } expression, e.g.
    # cat(deparse(substitute({if (T) 1 else 2})), sep="\n") gives:
    # {
    #     if (T)
    #         1
    #     else 2
    # }
    # whereas deparse(substitute(if (T) 1 else 2)) gives:
    # if (T) 1 else 2
    # /HB 2014-08-12
    idxs <- grep("^[ ]*else[ ]*", sourceCode);
    if (length(idxs) > 0L) {
      if (any(idxs == 1L)) {
        stop("INTERNAL ERROR: Detected 'else' statement at the very beginning: ", paste(sourceCode, collapse="\n"));
      }
      sourceCode[idxs-1L] <- paste(sourceCode[idxs-1L], sourceCode[idxs], sep=" ");
      sourceCode <- sourceCode[-idxs];
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Evalute code expression
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # WORKAROUND: The following will *not* evaluate in environment
  # 'envir' due to capture.output() *unless* we evaluate 'envir'
  # before.  This sanity check will do that. /HB 2011-11-23
  stopifnot(is.environment(envir));

  # Evaluate the sourceCode via source()
  con <- textConnection(sourceCode, open="r");
  res <- captureOutput({
    sourceTo(file=con, echo=code, print.eval=output, max.deparse.length=max.deparse.length, ..., envir=envir);
  });


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Cleanup captured output?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop empty lines?
  if (trim) {
    res <- res[nchar(res) > 0L];
  }

  if (!is.null(collapse)) {
    if (newline) res <- c(res, "");
    res <- paste(res, collapse=collapse);
  }

  class(res) <- c("CapturedEvaluation", class(res));

  res;
} # withCapture()

# BACKWARD COMPATIBIILTY
evalCapture <- withCapture


setMethodS3("print", "CapturedEvaluation", function(x, ...) {
  cat(x);
})



##############################################################################
# HISTORY:
# 2014-12-02
# o withCapture({}) no longer generates a warning.
# 2014-08-12
# o BUG FIX: withCapture({ if (T) 1 else 2 }) would give a parse error on
#   "unexpected 'else'", because the internal deparsing puts the 'else'
#   statement on a new line whenever an if-else statement is enclosed
#   in an { ... } expression.  This problem is also described in R help
#   thread "deparse() and the 'else' statement" by Yihui Xie on 2009-11-09
#   [http://tolstoy.newcastle.edu.au/R/e8/help/09/11/4204.html].  The
#   workaround is to detect standalone 'else' statements and merge them
#   with the previous line.
# 2014-05-06
# o Added support for expression substitution via regular expressions.
#   The default is now to substitute any '.x.' with gstring("${x}").
# 2014-05-01
# o Renamed evalCapture() to withCapture().  Old name kept for backward
#   compatibility, but will eventually be deprecated.
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
