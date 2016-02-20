########################################################################/**
# @RdocDefault findFiles
#
# @title "Finds one or several files in multiple directories"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{pattern}{A regular expression file name pattern to match.}
#  \item{paths}{A @character @vector of paths to be searched.}
#   \item{recursive}{If @TRUE, subdirectories are recursively processed,
#    and not if @FALSE.  Alternatively, the maximum recursive depth can
#    be specified as a non-negative @numeric, where @FALSE corresponds to
#    \code{0L} depth and @TRUE corresponds \code{+Inf} depth.}
#  \item{firstOnly}{If @TRUE, the method returns as soon as a matching
#    file is found, otherwise not.}
#  \item{allFiles}{If @FALSE, files and directories starting with
#    a period will be skipped, otherwise not.}
#  \item{...}{Arguments passed to @see "base::list.files".}
# }
#
# \value{
#  Returns a @vector of the full pathnames of the files found.
# }
#
# \section{Search path}{
#   The \code{paths} argument may also contain paths specified as
#   semi-colon (\code{";"}) separated paths, e.g.
#   \code{"/usr/;usr/bin/;.;"}.
# }
#
# \section{Recursive searching}{
#   Recursive searching of directory structure is done breath-first
#   in a lexicographic order.
# }
#
# \section{Windows Shortcut links}{
#   Windows Shortcut links (*.lnk) are recognized and can be used
#   to immitate links to directories elsewhere.
#   For more details, see @see "filePath".
# }
#
# @author
#
# @keyword file
# @keyword IO
# @keyword internal
#**/#######################################################################
setMethodS3("findFiles", "default", function(pattern=NULL, paths=NULL, recursive=FALSE, firstOnly=TRUE, allFiles=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  splitPaths <- function(paths, ...) {
    if (length(paths) == 0)
      return(NULL);
    # If in format "path1; path2;path3", split it to multiple strings.
    paths <- unlist(strsplit(paths, split=";"));
    paths <- gsub("[ \t]*$", "", gsub("^[ \t]*", "", paths));
    paths <- paths[nchar(paths, type="chars") > 0];
    if (length(paths) == 0)
      return(NULL);
    paths;
  } # splitPaths()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'paths':
  paths <- splitPaths(paths);
  if (is.null(paths)) {
    paths <- ".";
  }

  # Argument 'pattern':
  if (!is.null(pattern)) {
    pattern <- as.character(pattern);
  }

  # Argument 'recursive':
  depth <- Arguments$getNumeric(recursive, range=c(0,+Inf));
  if (is.logical(recursive) && recursive) depth <- +Inf; ## TRUE => +Inf

  # Argument 'firstOnly':
  firstOnly <- as.logical(firstOnly);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Prepare list of paths to be scanned
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Don't search the same path twice
  paths <- unique(paths);

  # Don't search non-existing paths
  for (kk in seq_along(paths)) {
    path <- paths[kk];
    # Example any '~':s
    path <- file.path(dirname(path), basename(path));
    path <- gsub("^[.][/\\]", "", path);

    # Follow Windows shortcut links
    # NB: Here 'mustExist=TRUE' means that filePath() will always return
    # a pathname, not that it will give an error if file does not exist.
    path <- filePath(path, expandLinks="any", mustExist=TRUE);

    # Does the path exist and is it a directory
    # Note, isdir is TRUE for directories, FALSE for files,
    # *and* NA for non-existing files, e.g. items found by
    # list.files() but are broken Unix links.
    if (!isDirectory(path)) {
      path <- NA;
    }

    paths[kk] <- path;
  }

  # Drop unknown paths
  if (length(paths) > 0) {
    paths <- paths[!is.na(paths)];
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Search for files
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  pathnames <- c();
  for (path in paths) {
    files <- list.files(path, all.files=allFiles, full.names=TRUE);

    # Exclude listings that are neither files nor directories
    files <- gsub("^[.][/\\]", "", files);
    files <- files[nchar(files, type="chars") > 0L];
    if (length(files) > 0) {
      excl <- (basename(files) %in% c(".", "..", "/", "\\"));
      files <- files[!excl];
    }

    # Nothing to do?
    if (length(files) == 0) {
      next;
    }

    # Expand Windows shortcut links
    files0 <- files;
    # Remember these
    files <- sapply(files, FUN=filePath, expandLinks="any", USE.NAMES=FALSE);

    # Keep only existing files and directories
    ok <- sapply(files, FUN=function(file) {
      (file.exists(path) && !is.na(file.info(file)$isdir));
    }, USE.NAMES=FALSE);
    files <- files[ok];
    files0 <- files0[ok];

    # Nothing to do?
    if (length(files) == 0) {
      next;
    }

    # First search the files, then the directories, so...
    # Note, isdir is TRUE for directories, FALSE for files,
    # *and* NA for non-existing files, e.g. items found by
    # list.files() but are broken Unix links.
    isDir <- sapply(files, FUN=function(file) {
      ## identical(file.info(file)$isdir, TRUE);
      file.info(file)$isdir;
    }, USE.NAMES=FALSE);

    # In case some files are non-accessible, exclude them
    ok <- (!is.na(isDir));
    files <- files[ok];
    files0 <- files0[ok];
    isDir <- isDir[ok];

    # Nothing to do?
    if (length(files) == 0) {
      next;
    }

    # Directories and files in lexicographic order
    dirs <- files[isDir];
    files <- files[!isDir];
    files0 <- files0[!isDir];

    # Keep only files that match the filename pattern
    # of the non-expanded filename.
    if (!is.null(pattern)) {
      keep <- grep(pattern, basename(files0));
      files <- files[keep];
    }

    if (length(files) > 0) {
      files <- sort(files);
      if (firstOnly) {
        return(files[1]);
      }

      # Store results
      pathnames <- c(pathnames, files);
    }

    # Search directories recursively?
    if (recursive) {
      if (length(dirs) == 0) {
        next;
      }

      for (dir in sort(dirs)) {
        files <- findFiles(pattern=pattern, paths=dir, recursive=depth-1,
                                                 firstOnly=firstOnly, ...);
        if (length(files) > 0 && firstOnly) {
          return(files[1]);
        }

        pathnames <- c(pathnames, files);
      }
    }
  } # for (path ...)

  pathnames;
}) # findFiles()


############################################################################
# HISTORY:
# 2015-02-04 [HB]
# o Now argument 'recursive' of findFiles() can also specify
#   the maximum recursive depth, cf. listDirectory().
# 2012-04-16 [HB]
# o Turned findFiles() into a "default" method.
# o Now code assumes availability of needed R.utils methods.
# o Copied from affxparser package to R.utils.
# 2008-02-20 [KH]
# o Replaced require("R.utils") with a "isLoaded()" feature.
# 2008-02-14
# o Added argument 'allFiles=TRUE' to findFiles().
# 2007-09-17
# o ROBUSTNESS: Now findFiles() are robust against broken Unix links.
# 2007-08-30
# o BUG FIX: Pattern matching was done on expanded filenames, whereas they
#   should really be done on the non-expanded ones.  This, only applies to
#   Windows shortcuts, but it is not the destination file that is of
#   interest, but the name of the shortcut file.
# o BUG FIX: The recent update was not grep():ing correctly; forgot to
#   extract the basename().
# 2007-08-27
# o Now findFiles(..., recursive=TRUE) does a breath-first search in
#   lexicographic order.
# o Now findFiles() don't search replicated directories.
# 2006-11-01
# o Removed usage of R.utils for now.
# 2006-03-14
# o Created from findCdf.R.
############################################################################
