###########################################################################/**
# @RdocFunction "%<-%"
# @alias "%<-%"
#
# @title "Assignment operator for delayed assignments ('lazy future')"
#
# \description{
#  \emph{This infix operator is defunct. For an alternative, see
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
# @author
#
# \seealso{
#   Internally @see "base::delayedAssign" is used.
# }
#
# @keyword internal
#*/###########################################################################
`%<-%` <- function(x, value) {
  .Defunct(msg="Use `x %<-% { expr } %plan% lazy` from the future package instead.")
}


##############################################################################
# HISTORY:
# 2016-07-10
# o Defunct.
# 2016-03-28
# o Deprecated.
# 2015-02-13
# o Now %<-% can also assign to environments, e.g. env$a %<-% 1.
# o ROBUSTNESS: Now %<-% evaluates the expression in a local() environment.
# o Added internal .asAssignTarget().
# 2014-04-26
# o Created. Extracted from private RSP templates.
##############################################################################
