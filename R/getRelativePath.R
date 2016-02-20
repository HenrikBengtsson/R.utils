###########################################################################/**
# @RdocDefault getRelativePath
#
# @title "Gets the relative pathname relative to a directory"
#
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#  \item{pathname}{A @character string of the pathname to be converted into
#    an relative pathname.}
#  \item{relativeTo}{A @character string of the reference pathname.}
#  \item{caseSensitive}{If @TRUE, the comparison is case sensitive, otherwise
#    not.  If @NULL, it is decided from the relative path.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string of the relative pathname.
# }
#
# \section{Non-case sensitive comparison}{
#   If \code{caseSensitive == NULL}, the relative path is used to decide if
#   the comparison should be done in a case-sensitive mode or not.
#   The current check is if it is a Windows path or not, that is, if
#   the relative path starts with a device letter, then the comparison
#   is non-case sensitive.
# }
#
# \details{
#   In case the two paths are on different file systems, for instance,
#   C:/foo/bar/ and D:/foo/, the method returns \code{pathname} as is.
# }
#
# \examples{
#   getRelativePath("foo", "foo")                       # "."
#   getRelativePath("foo/bar", "foo")                   # "bar"
#   getRelativePath("foo/bar", "foo/bar/yah")           # ".."
#   getRelativePath("foo/bar/cool", "foo/bar/yah/sub/") # "../../cool"
#   getRelativePath("/tmp/bar/", "/bar/foo/")           # "../../tmp/bar"
#
#   # Windows
#   getRelativePath("C:/foo/bar/", "C:/bar/")           # "../foo/bar"
#   getRelativePath("C:/foo/bar/", "D:/bar/")           # "C:/foo/bar"
# }
#
# @author
#
# \seealso{
#   @see "getAbsolutePath".
#   @see "isAbsolutePath".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("getRelativePath", "default", function(pathname, relativeTo=getwd(), caseSensitive=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getWindowsDrivePattern <- function(fmtstr, ...) {
    # Windows drive letters
    drives <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    # Support also lower case
    drives <- paste(c(drives, tolower(drives)), collapse="");
    sprintf(fmtstr, drives);
  } # getWindowsDrivePattern()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  pathname <- as.character(pathname);
  # BACKWARD COMPATIBILITY: Treat empty path specially?
  pathname <- .getPathIfEmpty(pathname, where="getRelativePath")

  nPathnames <- length(pathname);

  # Nothing to do?
  if (nPathnames == 0L) return(logical(0L));

  # Multiple pathnames to be checked?
  if (nPathnames > 1L) {
    res <- sapply(pathname, FUN=getRelativePath, relativeTo=relativeTo, caseSensitive=caseSensitive, ...);
    return(res);
  }

  # A missing pathname?
  if (is.na(pathname)) return(NA_character_);

  # A URL?
  if (isUrl(pathname)) return(pathname);

  # If not an absolute path, assume it is a relative path already.
  pathname <- getAbsolutePath(pathname, expandTilde=TRUE);
  if (!isAbsolutePath(pathname)) return(pathname);

  # Argument 'relativeTo':
  if (is.null(relativeTo))
    relativeTo <- ".";

  if (length(relativeTo) > 1L) {
    throw("Argument 'relativeTo' must be a single character string: ", hpaste(relativeTo));
  }

  # Argument 'caseSensitive':
  if (is.null(caseSensitive)) {
    pattern <- getWindowsDrivePattern("^[%s]:");
    isWindows <- (regexpr(pattern, relativeTo) != -1L);
    caseSensitive <- !isWindows;
  } else {
    caseSensitive <- as.logical(caseSensitive);
    if (!caseSensitive %in% c(FALSE, TRUE))
      throw("Argument 'caseSensitive' must be logical: ", caseSensitive);
  }

  relativeTo <- getAbsolutePath(relativeTo, expandTilde=TRUE);

  # Split the two pathnames into their components
  relativeTo <- unlist(strsplit(relativeTo, split="[\\/]"));
  pathname <- unlist(strsplit(pathname, split="[\\/]"));
  pathnameC <- pathname;

  # Case sensitive comparisons?
  if (!caseSensitive) {
    relativeTo <- tolower(relativeTo);
    pathnameC <- tolower(pathnameC);
  }

  # 1. Check that the pathnames are "compatible".
  if (!identical(relativeTo[1L], pathnameC[1L])) {
    pathname <- paste(pathname, collapse="/");
    # warning("Cannot infer relative pathname, because the two pathnames are not refering to the same root/device (will use absolute pathname instead): ", paste(relativeTo, collapse="/"), " != ", pathname);
    return(pathname);
  }

  # 2. Remove all matching components in 'relativeTo' and 'pathname'.
  #    The removed parts constitute their common path.
  for (kk in seq_along(relativeTo)) {
    aPart <- relativeTo[1];
    bPart <- pathnameC[1];
    if (!identical(aPart, bPart))
      break;

    relativeTo <- relativeTo[-1L];
    pathname <- pathname[-1L];
    pathnameC <- pathnameC[-1L];
  }

  # 3. If there are more components in 'relativeTo', this means that the
  #    rest of 'relativeTo' is in a different subdirectory than 'pathname'.
  prefix <- rep("..", length.out=length(relativeTo));

  pathname <- c(prefix, pathname);
  pathname <- paste(pathname, collapse="/");

  if (pathname == "")
    pathname <- ".";

  pathname;
})

###########################################################################
# HISTORY:
# 2014-04-06
# o Vectorized getRelativePath().
# o Preparing to vectorize getRelativePath() by introducing option to
#   generate a warning or an error if a zero-length path is given.  This
#   way we can detect packages making this error, without breaking them.
# 2013-02-21
# o For conveniency, getAbsolutePath() and getRelativePath() returns
#   the same pathname if it is a URL.
# 2009-12-30
# o ROBUSTNESS: Now getParent(), getAbsolutePath() and getRelativePath()
#   returns a (character) NA if the input is NA.
# 2007-04-03
# o Removed the warning when a relative path could not be found because
#   the two paths are on different file systems.
# 2007-03-20
# o The warning message on "cannot refer relative pathname" didn't paste
#   the path resulting in a funny looking warning.
# 2005-12-05
# o Now getRelativePath() also recognizes tildes.
# 2005-08-02
# o Relative path "" is not returned as ".".
# o If path is not absolute, assume it is already relative.
# o Added argument 'caseSensitive'.
# o BUG FIX: The comparison of Windows devices was case sensitive.
# 2005-06-27
# o Created.
###########################################################################
