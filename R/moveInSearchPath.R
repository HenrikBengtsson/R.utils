###########################################################################/**
# @RdocDefault moveInSearchPath
#
# @title "Moves a environment in the search path to another position"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{from}{An @integer specifying the position of the environment
#     to be moved, or a @character specifying the name of the environment
#     to be moved.}
#   \item{to}{The destination position like the \code{from} argument.}
#   \item{where}{A @character string specify where in relation to the
#     destination position the enviroment should be moved.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the name of the environment moved, if it was
#   moved, otherwise @NULL.
# }
#
# \details{
#   It is not possible to move the first environment in the search path,
#   i.e. the so called global environment.
# }
#
# \examples{
#   # Make package 'utils' come behind 'datasets' in the search path
#   moveInSearchPath("package:utils", "package:datasets", where="after")
# }
#
# @author
#
# \seealso{
#   @see "base::search".
# }
#
# @keyword programming
# @keyword internal
#*/###########################################################################
setMethodS3("moveInSearchPath", "default", function(from, to, where=c("before", "after"), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Please R CMD check
  attachX <- base::attach;

  # WORKAROUND for R (<= 3.1.0)
  if (getRversion() <= "3.1.0") {
    # base::attach() sends messages about masked objects
    # to stdout and not to stderr.  This redirects such messages.
    # See R-devel thread 'attach() outputs messages to stdout - should
    # it be stderr?' on 2014-04-06.
    # This was patched in R v3.1.0 r65385 (2014-04-08)
    attachX <- function(...) {
      msg <- capture.output({ res <- base::attach(...) });
      if (length(msg) > 0L) cat(msg, sep="\n", file=stderr());
      invisible(res);
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get the current search path
  searchPath <- search();
  nPath <- length(searchPath);

  # Argument 'from':
  if (is.character(from)) {
    name <- from;
    from <- match(name, searchPath);
    if (is.na(from))
      throw("Argument 'from' specifies an environment not in the search path: ", name);
  } else {
    from <- Arguments$getIndices(from, range=c(2, nPath));
  }

  # Argument 'to':
  if (is.character(to)) {
    name <- to;
    to <- match(to, searchPath);
    if (is.na(to))
      throw("Argument 'to' specifies an environment not in the search path: ", name);
  } else {
    to <- Arguments$getIndices(to, range=c(2, nPath));
  }

  # Argument 'where':
  where <- match.arg(where);
  if (where == "after")
    to <- to + 1;

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Move the environment
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Nothing to do?
  if (from == to)
    return(invisible());

  # Get enviroment to be moved
  env <- pos.to.env(from);

  # Detach old position without side effects
  .detachPlain(from);

  if (to > from)
    to <- to - 1;

  # Attach at new position
  attachX(env, pos=to, name=attr(env, "name"));

  # Restore attributes (patch for bug in attach()? /HB 2007-09-17)
  attrs <- attributes(env);
  env <- as.environment(attr(env, "name"));
  attributes(env) <- attrs;

  # Return the name of the environment moved.
  invisible(attr(env, "name"));
})


############################################################################
# HISTORY:
# 2014-04-06
# o WORKAROUND: moveInSearchPath() redirects any messages that
#   base::attach() sends to stdout to stderr.
# 2012-12-18
# o R CMD check for R devel no longer gives a NOTE about attach().
# 2012-09-12
# o ROBUSTNESS/CRAN POLICY: moveInSearchPath() no longer calls
#   .Internal(detach(...)) but instead .detachPlain() which in turn
#   calls base::detach() in such a way that neither detach hook nor
#   .Last.lib() are called.
# 2007-09-17
# o BUG FIX: moveInSearchPath() would make the package environment loose
#   the 'path' attribute, which is for instance needed by
#   packageDescription().  Now moveInSearchPath() makes sure to set all
#   attributes on a moved package environment to what it used to be.
#   BTW, is this a bug in base::attach()?  Reported to r-devel 2007-09-17.
# 2007-03-24
# o Moved to R.utils from aroma.affymetrix.
# 2007-03-06
# o Created.
############################################################################
