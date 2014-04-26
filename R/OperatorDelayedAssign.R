###########################################################################/**
# @RdocFunction "%<-%"
# @alias "%<-%"
#
# @title "Assignment operator for delayed assignments"
#
# \description{
#  @get "title" such that the expression on the right-hand side (RHS)
#  will not be evaluated until the value of the assigned variable
#  (on left-hand side (LHS)) is evaluated.
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
  name <- as.character(substitute(x));
  delayedAssign(name, value=value, assign.env=parent.frame());
} # `%<-%`()


##############################################################################
# HISTORY:
# 2014-04-26
# o Created. Extracted from private RSP templates.
##############################################################################
