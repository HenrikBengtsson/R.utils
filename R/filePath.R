###########################################################################/**
# @RdocDefault filePath
#
# @title "Construct the path to a file from components and expands Windows Shortcuts along the pathname from root to leaf"
#
# @synopsis
#
# \description{
#   @get "title".  This function is backward compatible with
#   @see "base::file.path" when argument \code{removeUps=FALSE} and
#   \code{expandLinks="none"}, except that a (character) @NA is
#   return if any argument is NA.
#
#   This function exists on all platforms, not only Windows systems.
# }
#
# \arguments{
#   \item{...}{Arguments to be pasted together to a file path and then be
#      parsed from the root to the leaf where Windows shortcut files are
#      recognized and expanded according to argument \code{which} in each
#      step.}
#   \item{fsep}{the path separator to use.}
#   \item{removeUps}{If @TRUE, relative paths, for instance "foo/bar/../"
#      are shortend into "foo/", but also "./" are removed from the final
#      pathname, if possible.}
#   \item{expandLinks}{A @character string. If \code{"none"}, Windows
#      Shortcut files are ignored.  If \code{"local"}, the absolute target
#      on the local file system is used. If \code{"relative"}, the relative
#      target is used. If \code{"network"}, the network target is used. If
#      \code{"any"}, first the local, then the relative and finally the
#      network target is searched for.}
#   \item{unmap}{If @TRUE, paths on mapped Windows drives are "followed"
#      and translated to their corresponding "true" paths.}
#   \item{mustExist}{If @TRUE and if the target does not exist, the original
#      pathname, that is, argument \code{pathname} is returned. In all other
#      cases the target is returned.}
#   \item{verbose}{If @TRUE, extra information is written while reading.}
# }
#
# \value{
#   Returns a @character string.
# }
#
# \details{
#   If \code{expandLinks != "none"}, each component, call it \emph{parent},
#   in the absolute path is processed from the left to the right as follows:
#   1. If a "real" directory of name \emph{parent} exists, it is followed.
#   2. Otherwise, if Microsoft Windows Shortcut file with name
#      \emph{parent.lnk} exists, it is read. If its local target exists, that
#      is followed, otherwise its network target is followed.
#   3. If no valid existing directory was found in (1) or (2), the expanded
#      this far followed by the rest of the pathname is returned quietly.
#   4. If all of the absolute path was expanded successfully the expanded
#      absolute path is returned.
# }
#
# \section{On speed}{
#   Internal \code{file.exists()} is call while expanding the pathname.
#   This is used to check if there exists a Windows shortcut file named
#   'foo.lnk' in 'path/foo/bar'. If it does, 'foo.lnk' has to be followed,
#   and in other cases 'foo' is ordinary directory.
#   The \code{file.exists()} is unfortunately a bit slow, which is why
#   this function appears slow if called many times.
# }
#
# @examples "../incl/filePath.Rex"
#
# @author
#
# \seealso{
#   @see "readWindowsShellLink".
#   @see "readWindowsShortcut".
#   @see "base::file.path".
# }
#
# @keyword IO
#*/###########################################################################
setMethodS3("filePath", "default", function(..., fsep=.Platform$file.sep, removeUps=TRUE, expandLinks=c("none", "any", "local", "relative", "network"), unmap=FALSE, mustExist=FALSE, verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getWindowsDrivePattern <- function(fmtstr, ...) {
    # Windows drive letters
    drives <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    # Support also lower case
    drives <- paste(c(drives, tolower(drives)), collapse="");
    sprintf(fmtstr, drives);
  } # getWindowsDrivePattern()

  unmapOnWindows <- function(pathname, ...) {
    if (.Platform$OS.type != "windows") return(pathname)
    if (!file.exists(pathname)) return(pathname)
    isAbs <- isAbsolutePath(pathname)
    if (!isAbs) pathname <- getAbsolutePath(pathname)
    pattern <- getWindowsDrivePattern("^([%s]:)(/.*)$")
    drive <- gsub(pattern, "\\1", pathname)
    drive <- tolower(drive)
    # NOTE: Identifying mapped drives introduces a delay.
    # Should this be memomized? /HB 2014-10-02
    drives <- System$getMappedDrivesOnWindows()
    names(drives) <- tolower(names(drives))
    target <- drives[drive]
    if (!is.na(target)) {
      pathname <- paste(target, gsub(pattern, "\\2", pathname), sep="")
    }
    # Undo absolute path?
    if (!isAbs) pathname <- getRelativePath(pathname)
    pathname
  } # unmapOnWindows()

  removeEmptyDirs <- function(pathname) {
    # Check if it is a pathname on a Windows network
    isOnNetworkBwd <- (regexpr("^\\\\\\\\", pathname) != -1L);
    isOnNetworkFwd <- (regexpr("^//", pathname) != -1L);

    # Remove empty directories
    pathname <- gsub("///*", "/", pathname);
    pathname <- gsub("\\\\\\\\\\\\*", "\\\\", pathname);

    # If on a network, add the path back again.
    if (isOnNetworkBwd) {
      pathname <- paste("\\\\", pathname, sep="");
      pathname <- gsub("^\\\\\\\\\\\\*", "\\\\\\\\", pathname);
    }
    if (isOnNetworkFwd) {
      pathname <- paste("//", pathname, sep="");
      pathname <- gsub("^///*", "//", pathname);
    }
    pathname;
  } # removeEmptyDirs()

  removeUpsFromPathname <- function(pathname, split=FALSE) {
    # Treat C:, ... special
    pattern <- getWindowsDrivePattern("^[%s]:$");
    if (regexpr(pattern, pathname) != -1L)
      return(pathname);

    # Treat C:/, C:\\, ... special
    pattern <- getWindowsDrivePattern("^[%s]:[/\\]$");
    if (regexpr(pattern, pathname) != -1L)
      return(gsub("\\\\", "/", pathname));

    components <- strsplit(pathname, split="[/\\]")[[1L]];

    # Remove all "." parts, because they are non-informative
    if (length(components) > 1L) {
      components <- components[components != "."];
      # But if they're all dropped (e.g. ././././) then
      # return '.'
      if (length(components) == 0L) return(".");
    }

    # Remove ".." and its parent by reading from the left(!)
    pos <- 2L;
    while (pos <= length(components)) {
      if (components[pos] == ".." && components[pos-1L] != "..") {
        # Remove the ".." and its parent
        if (verbose) {
          message("Removing: ", paste(components[c(pos-1L,pos)], collapse=", "));
        }
        components <- components[-c(pos-1L,pos)];
        pos <- pos - 1L;
      } else {
        pos <- pos + 1L;
      }
    }

    pathname <- components;
    if (!split) {
      pathname <- paste(pathname, collapse=fsep);
      pattern <- getWindowsDrivePattern("^[%s]:$");
      if (regexpr(pattern, pathname) != -1L) {
        pathname <- sprintf("%s/", pathname);
      }
    }

    pathname;
  } # removeUpsFromPathname()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Arguments '...':
  args <- list(...);

  # First, remove NULL and other empty arguments
  isEmpty <- unlist(lapply(args, FUN=function(x) (length(x) == 0L)));
  args <- args[!isEmpty];

  # Second, convert into character strings
  args <- lapply(args, FUN=as.character);

  # Argument 'expandLinks':
  expandLinks <- match.arg(expandLinks);

  # Argument 'unmap':
  unmap <- as.logical(unmap);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Create pathname
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (length(args) == 0L) {
    return(NULL);
  }

  if (any(sapply(args, FUN=is.na))) {
    return(NA_character_);
  }

  pathname <- paste(args, collapse=fsep);
  # Remove repeated '/' and '\\'.
  pathname <- removeEmptyDirs(pathname);

  if (expandLinks == "none") {
    if (removeUps) {
      pathname <- removeUpsFromPathname(pathname);
    }
    # Undo Windows drive mapping?
    if (unmap) pathname <- unmapOnWindows(pathname);
    return(pathname);
  }

  # Treat C:/, C:\\, ... special
  pattern <- getWindowsDrivePattern("^[%s]:[/\\]$");
  if (regexpr(pattern, pathname) != -1L)
    pathname <- gsub("\\\\", "/", pathname);
    # Undo Windows drive mapping?
    if (unmap) pathname <- unmapOnWindows(pathname);
    return(pathname);

  # Requires that the 'pathname' is a absolute pathname.
  pathname0 <- pathname;

  # 1. Remove ".." and their parents and keep "splits".
  components <- removeUpsFromPathname(pathname, split=TRUE);


  # 3. Expand the components from the root into a new absolute pathname
  isFirst <- TRUE;
  expandedPathname <- NULL;

  while(length(components) > 0L) {
    # Get next component
    component <- components[1L];
    components <- components[-1L];

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # a. Create the pathname to check
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (isFirst) {
      pathname <- component;
    } else {
      pathname <- paste(expandedPathname, component, sep=fsep);
    }

    if (verbose) {
      print(pathname);
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # b. Is it an explicit Windows Shortcut?
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    isWindowsShortcut <- (regexpr("[.](lnk|LNK)$", pathname) != -1L);
    if (isWindowsShortcut) {
      # i. ...then follow it.
      lnkFile <- pathname;
    } else {
      # ii. otherwise, check if the pathname exists
      if (file.exists(pathname)) {
        expandedPathname <- pathname;
        isFirst <- FALSE;
        next;
      }

      if (isFirst) {
        isFirst <- FALSE;
        if (file.exists(paste(pathname, "", sep=fsep))) {
          expandedPathname <- pathname;
          next;
        }
      }

      # iii. If not, assert that a Windows shortcut exists
      lnkFile <- paste(pathname, c("lnk", "LNK"), sep=".");
      lnkFile <- lnkFile[file.exists(lnkFile)];
      if (length(lnkFile) == 0L) {
        if (verbose) {
          message("Failed to expand pathname '", pathname0, "'. No target found for: ", pathname);
        }
        break;
      }
      lnkFile <- lnkFile[1L];
    } # if (isWindowsShortcut)


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # c. Try to read Windows shortcut
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    lnk <- tryCatch({
      # (i) using new reader
      readWindowsShellLink(lnkFile);
    }, error=function(ex) {
      # (ii) using old reverse-enginered reader
      tryCatch({
        readWindowsShortcut(lnkFile);
      }, error=function(ex) {
        if (verbose) {
          message("Invalid Windows shortcut found when expanding pathname '", pathname0, "': ", lnkFile);
          print(ex);
        }
        return(NULL);
      });
    });

    # Failed to read Windows Shell Link, then don't continue
    if (is.null(lnk)) {
      break;
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # d. Check for a local pathname and then for a network pathname
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    pathname <- NULL;
    if (expandLinks == "any") {
      pathname <- lnk$pathname;
      if (is.null(pathname)) {
        pathname <- lnk$relativePathname;
        if (is.null(pathname)) {
          pathname <- lnk$networkPathname;
        }
      }
    } else if (expandLinks == "local") {
      pathname <- lnk$pathname;
    } else if (expandLinks %in% c("relative")) {
      if (is.null(expandedPathname)) {
        expandedPathname <- removeUpsFromPathname(pathname0);
      }
      pathname <- paste(expandedPathname, lnk$relativePathname, sep=fsep);
      if (removeUps) {
        pathname <- removeUpsFromPathname(pathname);
      }
    } else if (expandLinks %in% c("network")) {
      pathname <- lnk$networkPathname;
    }

    if (is.null(pathname)) {
      if (verbose) {
        message("No target found in Windows shortcut when expanding pathname '", pathname0, "': ", lnkFile);
      }
      break;
    }

    expandedPathname <- pathname;
  } # while(...)

  # Are there any remaining components.
  if (length(components) > 0L) {
    if (mustExist) {
      pathname <- pathname0;
    } else {
      pathname <- paste(pathname, paste(components, collapse=fsep), sep=fsep);
    }
  }

  if (is.null(pathname)) {
    if (mustExist) {
      pathname <- pathname0;
    } else {
      stop(sprintf("Failed to expand file path (expandLinks=c(%s)): %s", paste(sQuote(expandLinks), collapse=", "), pathname0));
    }
  }

  if (removeUps && !is.null(pathname)) {
    pathname <- removeUpsFromPathname(pathname);
  }

  # Undo Windows drive mapping?
  if (unmap) pathname <- unmapOnWindows(pathname);

  pathname;
}) # filePath()


#############################################################################
# HISTORY:
# 2014-10-02
# o Added argument 'unmap' to filePath() for "following" paths that are
#   on mapped Windows drives.
# 2014-05-08
# o filePath("./././././") now returns "." (was "").
# 2013-07-27
# o BUG FIX: filePath("C:/foo/..") would return "C:", which should be "C:/".
# 2012-10-29
# o ROBUSTNESS: Now filePath(.., expandLinks, mustExist=FALSE) gives an
#   informative error if path could not be expanded.
# o GENERALIZATION: Now filePath() does a better job reading Windows
#   Shell Links/Windows Shortcut (*.lnk) files.
# o GENERALIZATION/CLEANUP: Now filePath() needs to know less about the
#   Windows Shell Link file format, when expanding *.lnk files.
# 2009-12-30
# o ROBUSTNESS: Any NA arguments in '...' to filePath(...) would be parsed
#   as "NA" resulting in paths such as "NA/foo/NA" (just as file.path()
#   does it).  Now a (character) NA is returned.
# 2008-12-03
# o BUG FIX: filePath("\\\\shared/foo") would return "\\shared/foo".
# 2005-11-21
# o BUG FIX: expandLinks="any" would return the relative link instead of
#   the network pathname, even if there were no local pathname.
# 2005-10-18
# o BUG FIX: filePath(".") would return "".
# o BUG FIX: filePath("//shared/foo") would return "/shared/foo".
# 2005-09-24
# o Now filePath() removes repeated '/' and '\\', except for network files
#   such as \\server\foo\bar.
# 2005-08-12
# o If no arguments or only NULL arguments are passed, NULL is returned.
# 2005-06-15
# o BUG FIX: filePath("../foo/bar/") would incorrectly remove initial "../"
#   and give an error.
# 2005-05-31
# o Now also "./" are removed as "foo/../" are removed.
# 2005-05-27
# o Added argument 'removeUps' and 'expandLinks'.
# o Cleaned up so it is not dependent of the File class.
# o Created (again?). Used to be a local function of getAbsolutePath() in
#   the File class of the R.io package.
#############################################################################
