########################################################################/**
# @RdocFunction Sys.readlink2
#
# @title "Read File Symbolic Links (also on Windows)"
#
# \description{
#  @get "title" and returns the target of each link.
#  This implementation is fully compatible with the
#  @see "base::Sys.readlink" implementation in the \pkg{base} package.
# }
#
# @synopsis
#
# \arguments{
#  \item{paths}{A @character @vector of file paths.
#   Tilde expansion is done: see @see "base::path.expand".}
# }
#
# \value{
#  A @character @vector of the the same length as \code{paths}.
# }
#
# @author
#
# @keyword file
# @keyword IO
# @keyword internal
#**/#######################################################################
Sys.readlink2 <- function(paths) {
  if (.Platform$OS.type != "windows") {
    return(base::Sys.readlink(paths));
  }

  # Workaround for Windows
  readlink <- function(path) {
    if (!file.exists(path)) return(NA_character_);

    # Only files with zero size are candidates for symbolic file links
    info <- file.info(path);
    if (is.na(info$size) || info$size > 0) return("");

    # Temporarily change working directory
    path <- normalizePath(path, mustWork=FALSE);
    dir <- dirname(path);
    opwd <- setwd(dir);
    on.exit(setwd(opwd));
    path <- basename(path);

    # List all files
    bfr <- shell("dir", shell=Sys.getenv("COMSPEC"),
                        mustWork=TRUE, intern=TRUE);

    setwd(opwd);

    # Search for symbolic file or directory links
    pattern <- sprintf(".*[ ]+<SYMLINK(|D)>[ ]+(%s)[ ]+\\[(.+)\\][ ]*$", path);
    bfr <- grep(pattern, bfr, value=TRUE);

    # Not a symbolic link?
    if (length(bfr) == 0L) return("");

    # Sanity check
    link <- gsub(pattern, "\\2", bfr);
    stopifnot(identical(link, path));

    # Extract the target
    target <- gsub(pattern, "\\3", bfr);

    # Relative path?
    if (!isAbsolutePath(target)) {
      # Prepend working directory
      target <- file.path(dir, target);
      # Return the relative pathname, iff possible
      target <- getRelativePath(target);
    }

    target;
  } # readlink()

  sapply(paths, FUN=readlink, USE.NAMES=FALSE);
} # Sys.readlink2()



########################################################################/**
# @RdocFunction file.info2
#
# @title "Extract File Information (acknowledging symbolic file links also on Windows)"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{A @character @vectors containing file paths.
#   Tilde expansion is done: see @see "base::path.expand".}
# }
#
# \value{
#  A @data.frame.  See @see "base::file.info" for details.
# }
#
# \seealso{
#  Internally, @see "base::file.info" is used, which does not respect
#  symbolic links on Windows.  Instead, on Windows, @see "Sys.readlink2"
#  is used for such link to identify the target file and retrieve the
#  file information on that instead.
# }
#
# @author
#
# @keyword file
# @keyword IO
# @keyword internal
#**/#######################################################################
file.info2 <- function(...) {
  info <- base::file.info(...);

  # Nothing todo?
  if (.Platform$OS.type != "windows") {
    return(info);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Workaround for symbolic file links on Windows
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Only files with zero size are candidates for symbolic links
  idxs <- which(!is.na(info$size) & info$size == 0);

  # Nothing todo?
  if (length(idxs) == 0L) return(info);

  # Candidate pathnames
  pathnames <- rownames(info)[idxs];

  # Translate
  pathnames <- sapply(pathnames, FUN=Sys.readlink2);

  # Drop non-symbolic links
  keep <- (!is.na(pathnames) & nchar(pathnames) > 0L);
  pathnames <- pathnames[keep];
  idxs <- idxs[keep];

  # Nothing todo?
  if (length(idxs) == 0L) return(info);

  # Update file info for the targets (preserving the link names)
  info[idxs,] <- base::file.info(pathnames);

  info;
} # file.info2()


############################################################################
# HISTORY:
# 2014-01-06
# o Added file.info2().
# o Added Sys.readlink2().
# o Created. See also R-devel thread 'file.info() on a file.symlink():ed
#   file on Windows - is help correct?' on 2014-01-06.
############################################################################