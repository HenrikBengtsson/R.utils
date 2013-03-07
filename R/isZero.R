#########################################################################/**
# @RdocDefault isZero
#
# @title "Checks if a value is (close to) zero or not"
#
# @synopsis
#
# \description{
#   Checks if a value (or a vector of values) is (close to) zero or not
#   where "close" means if the absolute value is less than \code{neps*eps}.
#   \emph{Note that \code{x == 0} will not work in all cases.}
#
#   By default \code{eps} is the smallest possible floating point value
#   that can be represented by the running machine, i.e. 
#   \code{.Machine$double.eps} and \code{neps} is one.
#   By changing \code{neps} it is easy to adjust how close to zero "close"
#   means without having to know the machine precision (or remembering how
#   to get it).
# }
#
# \arguments{
#   \item{x}{A @vector of values.}
#   \item{eps}{The smallest possible floating point.}
#   \item{neps}{A scale factor of \code{eps} specifying how close to zero
#      "close" means. If \code{eps} is the smallest value such that 
#      \code{1 + eps != 1}, i.e. \code{.Machine$double.eps}, \code{neps} must
#      be greater or equal to one.}
#   \item{...}{Not used.}
# }
#
# \value{Returns a @logical @vector indicating if the elments are zero or not.}
#
# @author
#
# \seealso{
#   @see "base::all.equal".
#   @see "base::Comparison".
#   \code{\link[base:zMachine]{.Machine}}.
# }
#
# @examples "../incl/isZero.Rex"
#
# @keyword "logic"
#*/#########################################################################
setMethodS3("isZero", "default", function(x, neps=1, eps=.Machine$double.eps, ...) {
  if (is.character(eps)) {
    eps <- match.arg(eps, choices=c("double.eps", "single.eps"));
    if (eps == "double.eps") {
      eps <- .Machine$double.eps;
    } else if (eps == "single.eps") {
      eps <- sqrt(.Machine$double.eps);
    }
  }

  (abs(x) < neps*eps);
})




############################################################################
# HISTORY:
# 2003-02-20
# o Created!
############################################################################
