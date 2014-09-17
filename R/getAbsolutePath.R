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
  pathname <- as.character(pathname);

  # BACKWARD COMPATIBILITY: Treat empty path specially?
  pathname <- .getPathIfEmpty(pathname, where="getAbsolutePath")

  nPathnames <- length(pathname);

  # Nothing to do?
  if (nPathnames == 0L) return(logical(0L));

  # Multiple pathnames to be checked?
  if (nPathnames > 1L) {
    res <- sapply(pathname, FUN=getAbsolutePath, workDirectory=workDirectory, expandTilde=expandTilde, ...);
    return(res);
  }

  # Missing path?
  if (is.na(pathname)) return(NA_character_);

  # A URL?
  if (isUrl(pathname)) return(pathname);

  if (!isAbsolutePath(pathname)) {
    workDirectory <- strsplit(workDirectory, split="[/\\]")[[1L]];

    name <- getName(pathname);
    if (name == "" || name == ".")
      name <- NULL;                        # Only, details, but as in Java!

    pathname <- strsplit(pathname, split="[/\\]")[[1L]];
    len <- length(pathname);
    if (len != 0L) {
      pathname <- pathname[-len];
    }

    pathname <- c(workDirectory, pathname, name);
    pathname <- paste(pathname, sep="", collapse=.Platform$file.sep);
  }
  pathname <- filePath(pathname, removeUps=TRUE);

  if (expandTilde) {
    ## Can we replace this with base::path.expand()? /HB 2014-09-16
    path <- dirname(pathname) # Does tilde expansion
    if (path == "/") path <- ""  ## To avoid /tmp -> //tmp
    filename <- basename(pathname)
    pathname <- file.path(path, filename);
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
# 2014-09-16
# o BUG FIX: getAbsolutePath("/tmp", expandTilde=TRUE) returned "//tmp".
# 2014-04-06
# o Vectorized getAbsolutePath().
# o Preparing to vectorize getAbsolutePath() by introducing option to
#   generate a warning or an error if a zero-length path is given.  This
#   way we can detect packages making this error, without breaking them.
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
