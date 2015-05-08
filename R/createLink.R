###########################################################################/**
# @RdocDefault createLink
#
# @title "Creates a link to a file or a directory"
#
# @synopsis
#
# \description{
#   @get "title".
#   This method tries to create a link to a file/directory on the
#   file system, e.g. a symbolic link and Windows Shortcut links.
#   It depends on operating and file system (and argument settings),
#   which type of link is finally created, but all this is hidden
#   internally so that links can be created the same way regardless
#   of system.
# }
#
# \arguments{
#   \item{link}{The path or pathname of the link to be created.
#     If \code{"."} (or @NULL), it is inferred from the
#     \code{target} argument, if possible.}
#   \item{target}{The target file or directory to which the shortcut should
#     point to.}
#   \item{skip}{If @TRUE and a file with the same name as argument
#     \code{link} already exists, then the nothing is done.}
#   \item{overwrite}{If @TRUE, an existing link file is overwritten,
#     otherwise not.}
#   \item{methods}{A @character @vector specifying what methods (and in
#     what order) should be tried for creating links.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the path or pathname to the link.
#   If no link was created, @NULL is returned.
# }
#
# \section{Required privileges on Windows}{
#   In order for \code{method="unix-symlink"} (utilizing
#   \code{\link[base:files]{file.symlink}()}),
#   \code{method="windows-ntfs-symlink"} (utilizing executable \code{mklink}),
#   and/or \code{method="windows-shortcut"} (utilizing
#   @see "createWindowsShortcut") to succeed on Windows,
#   the client/R session must run with sufficient privileges
#   (it has been reported that Administrative rights are necessary).
# }
#
# @author
#
# \seealso{
#   @see "createWindowsShortcut" and
#   \code{\link[base:files]{file.symlink}()}
# }
#
# \references{
#   Ben Garrett, \emph{Windows File Junctions, Symbolic Links and Hard Links},
#   September 2009 [\url{http://goo.gl/R21AC}]\cr
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("createLink", "default", function(link=".", target, skip=!overwrite, overwrite=FALSE, methods=getOption("createLink/args/methods", c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut")), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'skip':
  skip <- Arguments$getLogical(skip);

  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Argument 'target':
  target <- normalizePath(target);
  target <- Arguments$getReadablePathname(target, mustExist=TRUE);
  target <- getAbsolutePath(target);

  # Argument 'link':
  if (is.null(link) || link == ".") {
    # Infer from 'target'
    link <- basename(target);
    if (regexpr("^[a-zA-Z]:$", link) != -1) {
      throw("Cannot infer a valid link name from argument 'target': ", target);
    }
  }

  links <- c(link, sprintf("%s.LNK", link));
  if (any(file.exists(links))) {
    if (skip) {
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);

      resA <- getAbsolutePath(Sys.readlink2(res, what="corrected"))
      equal <- identical(resA, target)
      # Be more forgiving on Windows system, i.e. assume a
      # case-insensitive file system
      if (!equal && (.Platform$OS.type == "windows")) {
        equal <- identical(tolower(resA), tolower(target));
      }
      if (!equal) {
        warning(sprintf("Existing link (%s) was skipped, but it links to different target file than requested: %s != %s", sQuote(link), sQuote(resA), sQuote(target)));
      }

      # If a Windows Shortcut, avoid returning the target.
      if (file.exists(links[2L]) && !file.exists(link)) {
        res <- link;
        attr(res, "linkType") <- "windows-shortcut";
      }

      return(res);
    }
    if (!overwrite) {
      throw("Cannot create link. Link file already exists: ", link);
    }
  }

  # Argument 'methods':
  methods <- match.arg(methods, several.ok=TRUE);


  # Keep only 'methods' that are supported on the current platform
  if (.Platform$OS != "windows") {
    methods <- grep("windows-", methods, value=TRUE, invert=TRUE);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Create directory where link should be, if missing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  path <- dirname(getAbsolutePath(link));
  path <- Arguments$getWritablePath(path);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Overwrite?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (overwrite) {
    linksS <- links[file.exists(links)];
    if (length(linksS) > 0) {
      linksD <- sprintf("%s.%s", linksS, basename(tempdir()));
      # Remove current link, by renaming to a temporary name.
      file.rename(linksS, linksD);
      on.exit({
        # Undo if failing to create link below.
        if (length(linksS) > 0) {
          file.rename(linksD, linksS);
        } else if (length(linksD) > 0) {
          file.remove(linksD);
        }
      });
    }
  }


  # Default result
  res <- NULL


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Unix: Try to create a symbolic link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("unix-symlink", methods)) {
    targetF <- getAbsolutePath(target);
    tryCatch({
      file.symlink(from=targetF, to=link);
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);
      attr(res, "linkType") <- "unix-symlink";
    }, warning = function(ex) {
    });
    if (!is.null(res)) {
      if (overwrite) linksS <- NULL;  # Don't undo above "overwrite"
      return(res);
    }

    # Cleanup, in case something was created but the link is not
    # working, which can happen on Windows.  If it worked, then
    # 'res' should be non-NULL above.
    if (file.exists(link)) {
      file.remove(link);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows Vista + NTFS: Try to create a symbolic link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("windows-ntfs-symlink", methods)) {
    # Are we linking to a directory (or a file)?
    if (isDirectory(target)) {
      cmd <- sprintf("mklink /D \"%s\" \"%s\"", link, target);
    } else {
      cmd <- sprintf("mklink \"%s\" \"%s\"", link, target);
    }
    tryCatch({
      shell(cmd, intern=TRUE, mustWork=TRUE, ignore.stderr=TRUE, shell=Sys.getenv("COMSPEC"));
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);
      attr(res, "linkType") <- "windows-ntfs-symlink";
    }, error = function(ex) {
    });
    if (!is.null(res)) {
      if (overwrite) linksS <- NULL;  # Don't undo above "overwrite"
      return(res);
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows: Try to create a Windows Shortcut link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("windows-shortcut", methods)) {
    tryCatch({
      pathname <- sprintf("%s.LNK", link);
      createWindowsShortcut(pathname, target=target, overwrite=overwrite);
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);
      # Make sure to return the link and not the target
      res <- link;
      attr(res, "linkType") <- "windows-shortcut";
    }, error = function(ex) {
    });
    if (!is.null(res)) {
      if (overwrite) linksS <- NULL;  # Don't undo above "overwrite"
      return(res);
    }
  }

  if (is.null(res)) {
    throw("Failed to create file link: ", link, "[.lnk] -> ", target);
  }

  res;
}) # createLink()


############################################################################
# HISTORY:
# 2014-04-26
# o CLEANUP: createLink(..., skip=TRUE) no longer warns if the link file
#   was skipped.  Now it only warns if the skipped link file links to a
#   different file than the intended target file.
# 2014-02-28
# o DOCUMENTATION: Added an Rd section on privileges required on Windows
#   for createLink() to work.
# 2014-01-22
# o CONSISTENCY: Now createLink(..., skip=TRUE) returns the Windows
#   Shortcut link if it already exists (instead of the target as before).
#   In this case, we can also set attribute 'linkType'.
# o Now the pathname returned by createLink() has attribute 'linkType'
#   set specifying what type of link was created.  For now, this attribute
#   will not be set if returning an already existing link (skip=TRUE).
# 2014-01-19
# o CONSISTENCY: Now createLink(..., method="windows-shortcut") returns
#   the path/pathname to the link (and not the target) just like it does
#   for the other types of file links.  By link we here mean the
#   path/pathname without the *.lnk extension.
# 2014-01-06
# o ROBUSTNESS: createLink() will no longer try to create Windows file
#   links on non-Windows platforms.
# 2013-10-13
# o CLEANUP: createLink() no longer attaches 'R.utils'.
# 2012-11-01
# o Updated the Rd help.
# 2012-09-26
# o Added argument 'skip' to createLink().
# o ROBUSTNESS: Now createLink(..., overwrite=TRUE) will try to undo
#   the overwrite, iff it failed to create the new link.
# o BUG FIX: createLink(..., overwrite=TRUE) would give an error saying
#   "file already exists" (iff that is true) when it tries to create
#   a "unix-symlink" link.  Thanks Taku Tokuyasu at UCSF for the report.
# 2012-09-07
# o Now createLink() also supports targets with '~' in the path.
# o ROBUSTNESS/BUG FIX: On Windows, it could happen that createLink()
#   would generate a zero-size link file that did not link to the target
#   as a result of a failed file.symlink().  This is now tested for such
#   that if an invalid link file was created, it is removed again.
# o ROBUSTNESS: createLink(target="C:/") would try to create a link with
#   name "C:", which is not valid resulting is the somewhat confusing
#   error on "cannot symlink 'S:' to 'S:', reason 'Access is denied'".
#   Now it instead throws "Cannot infer a valid link name from argument
#   'target': C:/".
# 2011-10-08
# o Now the default of argument 'methods' of createLink() can be set
#   via option "createLink/args/methods".
# 2010-10-13
# o Now the 'link' argument of createLink() is inferred from the 'target'
#   argument if it is NULL.
# 2009-10-30
# o CLEAN UP: On Windows Vista, createLink() produced a stderr message
#   "You do not have sufficient privilege to perform this operation", when
#   trying to use Windows 'mklink' command.  Now those message are silenced.
# 2009-10-03
# o BUG FIX: Argument 'from' in file.symlink(from, to) must be a path
#   accessible from dirname(to), i.e. it is best to use an absolute path.
# 2009-10-01
# o Created.
############################################################################
