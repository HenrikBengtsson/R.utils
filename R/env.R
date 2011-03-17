###########################################################################/**
# @RdocFunction env
#
# @title "Creates a new environment, evaluates an expression therein, and returns the environment"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @see "base::evalq", particularly a
#     @expression to be evaluated inside the newly created @environment.}
#   \item{hash, parent, size}{Arguments passed to @see "base::new.env".}
# }
#
# \value{
#   Returns an @environment.
# }
#
# @examples "../incl/env.Rex"
#
# @author
#
# \seealso{
#   Internally @see "base::new.env" and @see "base::evalq" are used.
# }
#
# \references{
#   [1] R-devel thread 'Create an environment and assign objects to it in 
#       one go?' on March 9-10, 2011.\cr
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
# NOTE: This must not be an S3 method, because we must *not* dispatch
# on '...'; if done, then any expression therein is evaluated.
env <- function(..., hash=FALSE, parent=parent.frame(), size=29L) {
  envir <- new.env(hash=hash, parent=parent, size=size);
  evalq(..., envir=envir);
  envir;
} # env()

###########################################################################
# HISTORY:
# 2011-03-10
# o Renamed to env().  Ideally it should be environment() but that is
#   already taken by a 'base' function.
# 2011-03-09
# o Added newEnvEval().
###########################################################################
