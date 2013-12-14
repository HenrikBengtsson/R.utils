###########################################################################/**
# @RdocDefault systemR
# @alias systemR
#
# @title "Launches another R process from within R"
#
# @synopsis
#
# \description{
#   @get "title" via @see "base::system" by automatically locating the
#   R executable, cf [1].
# }
#
# \arguments{
#   \item{command}{A @character string be appended to the @see "base::system"
#         call.  If a @vector, then the strings are concatenated separated
#         with a space.}
#   \item{...}{Additional arguments passed to @see "base::system".}
#   \item{Rcommand}{A @character string specifying the basename of
#    the R executable.}
#   \item{verbose}{A @logical or a @see "Verbose" object.}
# }
#
# \value{
#   Returns what @see "base::system" returns.
# }
#
# @examples "../incl/systemR.Rex"
#
# @author
#
# \references{
#  [1] R-devel thread 'Best way to locate R executable from within R?',
#      May 22, 2012.
# }
#
# \seealso{
#  The R executable is located using @see "base::R.home", which
#  is then launched using @see "base::system".
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setMethodS3("systemR", "default", function(command="", ..., Rcommand="R", verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'command':
  command <- Arguments$getCharacters(command);

  # Locate the R executable, cf. help("R.home") and [1].
  # NB: R.home() is guaranteed to return a path without spaces.
  Rpath <- R.home("bin");
  Rpath <- Arguments$getReadablePath(Rpath, mustExist=TRUE);

  # Argument 'Rcommand':
  Rcommand <- Arguments$getCharacter(Rcommand);

  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose), add=TRUE);
  }


  # Setup the full system command
  Rbin <- file.path(Rpath, Rcommand);
  command <- paste(command, collapse=" ");
  command <- paste(command, sep=" ");
  cmd <- sprintf('%s %s', shQuote(Rbin), command);
  verbose && cat(verbose, "System command: ", cmd);

  system(cmd, ...);
})


############################################################################
# HISTORY:
# 2012-05-22
# o ROBUSTNESS: Now launching R without assuming it is on the search path,
#   cf. R-devel thread 'Best way to locate R executable from within R?'
#   on May 22, 2012.
# o Adopted from an affxparser system test.
# o Created.
############################################################################
