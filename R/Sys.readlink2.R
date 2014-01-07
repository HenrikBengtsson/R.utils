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
    path <- normalizePath(path, mustWork=FALSE);
    if (!file.exists(path)) return(NA_character_);

    # Temporarily change working directory
    dir <- dirname(path);
    opwd <- setwd(dir);
    on.exit(setwd(opwd));
    path <- basename(path);
    bfr <- shell(sprintf("dir %s", path), intern=TRUE, mustWork=TRUE, shell=Sys.getenv("COMSPEC"));
    bfr <- grep(path, bfr, value=TRUE);
    setwd(opwd);

    # Sanity check
    stopifnot(length(bfr) == 1L);

    # Parse file information
    pattern <- sprintf(".*[ ]+<SYMLINK>[ ]+(%s)[ ]+\\[(.+)\\][ ]*$", path);

    # Not a symbolic link?
    if (regexpr(pattern, bfr) == -1L) return("");

    # Sanity check
    link <- gsub(pattern, "\\1", bfr);
    stopifnot(identical(link, path));

    # Extract the target
    target <- gsub(pattern, "\\2", bfr);

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
  # Non-directory files with zero size are candidates for symbolic links
  idxs <- which(info$size == 0 & !info$isdir);

  # Nothing todo?
  if (length(idxs) == 0L) return(info);

  # Candidate pathnames
  pathnames <- rownames(info)[idxs];

  # Translate
  pathnames <- sapply(pathnames, FUN=Sys.readlink2);

  # Drop non-symbolic links
  keep <- (!is.na(pathnames) & nchar(pathnames) > 0);
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
