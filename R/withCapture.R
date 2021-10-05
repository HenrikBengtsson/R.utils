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
#   \item{replace}{An optional named @list used for substituting
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
withCapture <- function(expr, replace=getOption("withCapture/substitute", ".x."), code=TRUE, output=code, ..., max.deparse.length=getOption("max.deparse.length", 10e3), trim=TRUE, newline=getOption("withCapture/newline", TRUE), collapse="\n", envir=parent.frame()) {
  # Get code/expression without evaluating it
  expr2 <- substitute(expr)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Substitute?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # (a) Substitute by "constant" symbols?
  if (is.list(replace) && (length(replace) > 0L)) {
    names <- names(replace)
    if (is.null(names)) throw("Argument 'replace' must be named.")
    expr2 <- do.call(base::substitute, args=list(expr2, replace))
  }

  # (b) Replace code by regular expressions?
  if (is.character(replace) && (length(replace) > 0L)) {
    patterns <- names(replace)
    replacements <- replace

    # Predefined rules?
    if (is.null(patterns)) {
      patterns <- rep(NA_character_, times=length(replacements))
      for (kk in seq_along(replacements)) {
        replacement <- replacements[kk]
        if (identical(replacement, ".x.")) {
          patterns[kk] <- "^[.]([a-zA-Z0-9_.]+)[.]$"
          replacements[kk] <- "\\1"
        } else if (identical(replacement, "..x..")) {
          patterns[kk] <- "^[.][.]([a-zA-Z0-9_.]+)[.][.]$"
          replacements[kk] <- "\\1"
        }
      }
      unknown <- replacements[is.na(patterns)]
      if (length(unknown) > 0L) {
        throw("Unknown substitution rules: ", paste(sQuote(unknown), collapse=", "))
      }
    }

    if (is.null(patterns)) throw("Argument 'replace' must be named.")

    # (b) Replace via regular expression
    for (kk in seq_along(replacements)) {
      pattern <- patterns[kk]
      replacement <- replacements[kk]
      expr2 <- egsub(pattern, replacement, expr2, envir=envir)
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Deparse
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # WAS:
  ## sourceCode <- capture.output(print(expr2))
  sourceCode <- deparse(expr2, width.cutoff=getOption("deparse.cutoff", 60L))


  # Nothing todo?
  if (length(sourceCode) == 0L) {
    ## Can this ever happen? /HB 2015-05-27
    return(structure(character(0L), class=c("CapturedEvaluation", "character")))
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Trim code
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Trim of surrounding { ... }
  if (sourceCode[1L] == "{") {
    sourceCode <- sourceCode[-c(1L, length(sourceCode))]

    # Nothing todo?
    if (length(sourceCode) == 0L) {
      return(structure(character(0L), class=c("CapturedEvaluation", "character")))
    }

    # Drop shortest white space prefix
    prefix <- gsub("^([ \t]*).*", "\\1", sourceCode)
    minPrefix <- min(nchar(prefix), na.rm=TRUE)
    if (minPrefix > 0L) {
      sourceCode <- substring(sourceCode, first=minPrefix+1)
    }

    # WORKAROUND: Put standalone 'else':s together with previous statement.
    # This solves the problem described in R help thread "deparse() and the
    # 'else' statement" by Yihui Xie on 2009-11-09
    # [https://stat.ethz.ch/pipermail/r-help/2009-November/410758.html], where
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
    idxs <- grep("^[ ]*else[ ]*", sourceCode)
    if (length(idxs) > 0L) {
      if (any(idxs == 1L)) {
        stop("INTERNAL ERROR: Detected 'else' statement at the very beginning: ", paste(sourceCode, collapse="\n"))
      }
      sourceCode[idxs-1L] <- paste(sourceCode[idxs-1L], sourceCode[idxs], sep=" ")
      sourceCode <- sourceCode[-idxs]
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Evalute code expression
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # WORKAROUND: The following will *not* evaluate in environment
  # 'envir' due to capture.output() *unless* we evaluate 'envir'
  # before.  This sanity check will do that. /HB 2011-11-23
  .stop_if_not(is.environment(envir))

  # Evaluate the sourceCode via source()
  con <- textConnection(sourceCode, open="r")
  res <- captureOutput({
    sourceTo(file=con, echo=code, print.eval=output, keep.source=TRUE, max.deparse.length=max.deparse.length, ..., envir=envir)
  })


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Cleanup captured output?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop empty lines?
  if (trim) {
    res <- res[nchar(res) > 0L]
  }

  if (!is.null(collapse)) {
    if (newline) res <- c(res, "")
    res <- paste(res, collapse=collapse)
  }

  class(res) <- c("CapturedEvaluation", class(res))

  res
} # withCapture()

# BACKWARD COMPATIBIILTY
evalCapture <- withCapture


setMethodS3("print", "CapturedEvaluation", function(x, ...) {
  cat(x)
})
