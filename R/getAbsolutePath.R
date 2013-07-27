###########################################################################/**
# @RdocDefault getAbsolutePath
#
# @title "Gets the absolute pathname string"
#
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#  \item{pathname}{A @character string of the pathname to be converted into
#    an absolute pathname.}
#  \item{workDirectory}{A @character string of the current working directory.}
#  \item{expandTilde}{If @TRUE, tilde (\code{~}) is expanded to the
#    corresponding directory, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string of the absolute pathname.
# }
#
# \details{
#  This method will replace replicated slashes ('/') with a single one,
#  except for the double forward slashes prefixing a Microsoft Windows UNC
#  (Universal Naming Convention) pathname.
# }
#
# @author
#
# \seealso{
#   @see "isAbsolutePath".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("getAbsolutePath", "default", function(pathname, workDirectory=getwd(), expandTilde=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getName <- function(pathname, removeSuffix=FALSE, ...) {
    components <- strsplit(pathname, split="[/\\]")[[1]];

    len <- length(components);
    if (len == 0) {
      return("");
    }

    name <- components[len];
    if (name == ".") {
      return("");
    }

    reg <- regexpr("^.:", name);
    if (reg != -1) {
      name <- substring(name, attr(reg, "match.length")+1);
    }

    if (removeSuffix) {
      name <- gsub("[.][^.]*$", "", name); # Remove the suffix.
    }

    name;
  } # getName()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  if (length(pathname) > 1L) {
    throw("Argument 'pathname' must be a single character string: ",
                                           paste(pathname, collapse=", "));
  }

  if (is.na(pathname)) {
    naValue <- as.character(NA);
    return(naValue);
  }

  if (is.null(pathname)) {
    pathname <- ".";
  }

  if (isUrl(pathname)) {
    return(pathname);
  }

  if (!isAbsolutePath(pathname)) {
    workDirectory <- strsplit(workDirectory, split="[/\\]")[[1L]];

    name <- getName(pathname);
    if (name == "" || name == ".")
      name <- NULL;                        # Only, details, but as in Java!

    pathname <- strsplit(pathname, split="[/\\]")[[1]];
    len <- length(pathname);
    if (len != 0L) {
      pathname <- pathname[-len];
    }

    pathname <- c(workDirectory, pathname, name);
    pathname <- paste(pathname, sep="", collapse=.Platform$file.sep);
  }
  pathname <- filePath(pathname, removeUps=TRUE);

  if (expandTilde) {
    pathname <- file.path(dirname(pathname), basename(pathname));
  }

  # Especially expandTilde=TRUE may add an extra slash ('/').
  # Replace all replicated slashes ('/') with single ones, except
  # if they are at the beginning of the path, because then they
  # are Microsoft Windows UNC paths.
  isWindowsUNC <- (regexpr("^//", pathname) != -1L);
  pathname <- gsub("//*", "/", pathname);
  if (isWindowsUNC) {
    # Make sure WindowsUNC starts with "//".
    pathname <- paste("/", pathname, sep="");
  }

  pathname;
})


###########################################################################
# HISTORY:
# 2013-07-27
# o Now getAbsolutePath() shortens paths if possible, e.g. "C:/foo/.."
#   becomes "C:/".
# 2013-02-21
# o For conveniency, getAbsolutePath() and getRelativePath() returns
#   the same pathname if it is a URL.
# 2010-06-23
# o BUG FIX: getAbsolutePath("//server/dir/") would incorrectly drop
#   the initial double-slashes ('//') and return "/server/dir/".
# 2009-12-30
# o ROBUSTNESS: Now getParent(), getAbsolutePath() and getRelativePath()
#   returns a (character) NA if the input is NA.
# 2007-04-03
# o BUG FIX: getAbsolutePath("C:/foo/", expandTilde=TRUE) would return
#   "C://foo" and not "C:/foo".
# 2005-12-05
# o Added argument 'expandTilde'.  This is needed to get a valid output
#   path for a graphics device!
# 2005-06-16
# o Now getAbsolutePath() removes ".." too.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
