###########################################################################/**
# @RdocFunction "%<-%"
# @alias "%<-%"
#
# @title "Assignment operator for delayed assignments ('lazy future')"
#
# \description{
#  \emph{This infix operator is deprecated. For an alternative, see
#    \code{\%<-\%} part of the future package.
#  }
#
#  @get "title" such that the expression on the right-hand side (RHS)
#  is evaluated using "lazy future" (a call by future that has lazy
#  evaluation semantics), which mean it "promised" to be evaluated
#  when the value of the assigned variable (on left-hand side (LHS))
#  is retrieved but not before.  This means that if the LHS variable
#  is never retrieved / used, then the RHS expression will never be
#  evaluated.
#
#  The "lazy evaluation" property of delayed assignments is in constrast
#  to the "eager evaluation" property of regular assignments, which
#  evaluate the RHS expression at the same time as the assignment take
#  place, i.e. immediately.
#
#  The RHS expression will be evaluted in a @see "base::local".
# }
#
# \usage{
#   x \%<-\% value
# }
#
# \arguments{
#   \item{x}{The variable name (possibly quoted).}
#   \item{value}{The value to be assigned to \code{x}.}
# }
#
# \value{
#   Returns (invisibly) @NULL.
#   Note, contrary to @see "base::<-", it is \emph{not}
#   meaniful to do \code{a \%<-\% b \%<-\% c \%<-\% 6}.
# }
#
# @examples "../incl/OperatorDelayedAssign.Rex"
#
# @author
#
# \seealso{
#   Internally @see "base::delayedAssign" is used.
# }
#
# @keyword internal
#*/###########################################################################
`%<-%` <- function(x, value) {
  .Deprecated(msg="Use `x %<-% { expr } %plan% lazy` from the future package instead.")
  envir <- parent.frame(1)
  target <- .asAssignTarget(substitute(x), envir=envir)
  assign.env <- target$envir
  name <- target$name
  expr <- substitute(value)
  call <- substitute(local(a), list(a=expr))
  delayedAssign(name, eval(call, envir=envir), assign.env=assign.env)
} # `%<-%`()


.asAssignTarget <- function(expr, envir=parent.frame()) {
  res <- list(envir=envir, name=NULL)

  if (is.symbol(expr)) {
    ## Assignment to variable specified as a symbol
    name <- deparse(expr)
    res$name <- name
  } else {
    n <- length(expr)
    name <- paste(deparse(expr), collapse="")
    if (n != 1L && n != 3L) {
      stop("Not a valid variable name for delayed assignments: ", name, call.=FALSE)
    }

    if (n == 1L) {
      ## Assignment to a variable name
      if (!grepl("^[.a-zA-Z]", name)) {
        stop("Not a valid variable name: ", name, call.=FALSE)
      }
      res$name <- name
    } else if (n == 3L) {
      ## Assignment to enviroment via $ and [[
      op <- expr[[1]]
      if (op == "$" || op == "[[") {
        ## Subset
        idx <- expr[[3]]
        if (is.symbol(idx)) {
          idx <- deparse(idx)
          if (op == "[[") {
            if (!exists(idx, envir=envir, inherits=TRUE)) {
              stop(sprintf("Object %s not found: %s", sQuote(idx), name), call.=FALSE)
            }
            idx <- get(idx, envir=envir, inherits=TRUE)
          }
        }
        if (is.character(idx)) {
        } else {
          stop(sprintf("Invalid subset %s: %s", sQuote(deparse(idx)), name), call.=FALSE)
        }
        res$name <- idx

        ## Target
        objname <- deparse(expr[[2]])
        if (!exists(objname, envir=envir, inherits=TRUE)) {
          stop(sprintf("Object %s not found: %s", sQuote(objname), name), call.=FALSE)
        }
        obj <- get(objname, envir=envir, inherits=TRUE)
        if (is.environment(obj)) {
        } else {
          stop(sprintf("Delayed assignments can not be done to a %s; only to variables and environments: %s", sQuote(mode(obj)), name), call.=FALSE)
        }
        res$envir <- obj
      } else {
        stop("Not a valid target for delayed assignments: ", name, call.=FALSE)
      }
    }
  }

  ## Sanity check
  stopifnot(is.environment(res$envir))
  stopifnot(is.character(res$name))

  res
} # .asAssignTarget()

##############################################################################
# HISTORY:
# 2016-03-28
# o Deprecated.
# 2015-02-13
# o Now %<-% can also assign to environments, e.g. env$a %<-% 1.
# o ROBUSTNESS: Now %<-% evaluates the expression in a local() environment.
# o Added internal .asAssignTarget().
# 2014-04-26
# o Created. Extracted from private RSP templates.
##############################################################################
