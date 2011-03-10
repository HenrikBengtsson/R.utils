# This must not be an S3 method; we cannot dispatch on '...', because
# then any expression is evaluated.
newEnvEval <- function(..., hash=FALSE, parent=parent.frame(), size=29L) {
  envir <- new.env(hash=hash, parent=parent, size=size);
  evalq(..., envir=envir);
  envir;
} # newEnvEval()

###########################################################################
# HISTORY:
# 2011-03-09
# o Added newEnvEval().
###########################################################################
