###########################################################################/**
# @RdocDefault createLink
#
# @title "Creates a link to a file or a directory"
#
# @synopsis
#
# \description{
#   @get "title".
#   First it tries to create a (Unix-like) symbolic link and if that was
#   not successful it tries to create a Windows Shortcut link.
#   If neither works, an exception is thrown.
# }
#
# \arguments{
#   \item{link}{The path or pathname of the link to be created.
#     If \code{"."} (or @NULL), it is inferred from the
#     \code{target} argument.}
#   \item{target}{The target file or directory to which the shortcut should
#     point to.}
#   \item{overwrite}{If @TRUE, an existing link file is overwritten, 
#     otherwise not.}
#   \item{methods}{A @character @vector specifying what methods (and in
#     what order) should be tried for creating links.}
#   \item{...}{Not used.}
# }
# 
# \value{
#   Returns (invisibly) the path or pathname to the destination.
# }
# 
# @author
#
# \seealso{
#   @see "createWindowsShortcut" and
#   \code{\link[base:files]{file.symlink}()}
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("createLink", "default", function(link=".", target, overwrite=FALSE, methods=c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut"), ...) {
  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Argument 'target':
  target <- Arguments$getReadablePathname(target, mustExist=TRUE);
  target <- getAbsolutePath(target);

  # Argument 'link':
  if (is.null(link) || link == ".") {
    # Infer from 'target'
    link <- basename(target);
  }
  if (!overwrite && file.exists(link)) {
    throw("Cannot create link. File already exists: ", link);
  }

  # Argument 'methods':
  methods <- match.arg(methods, several.ok=TRUE);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Create directory where link should be, if missing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  path <- dirname(getAbsolutePath(link));
  path <- Arguments$getWritablePath(path);
  rm(path);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Unix: Try to create a symbolic link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("unix-symlink", methods)) {
    targetF <- getAbsolutePath(target);
    res <- NULL;
    tryCatch({
      file.symlink(targetF, link);
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);
    }, warning = function(ex) {
    });
    if (!is.null(res)) {
      return(res);
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
    res <- NULL;
    tryCatch({
      shell(cmd, intern=TRUE, mustWork=TRUE, ignore.stderr=TRUE);
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);
    }, error = function(ex) {
    });
    if (!is.null(res)) {
      return(res);
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows: Try to create a Windows Shortcut link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("windows-shortcut", methods)) {
    res <- NULL;
    tryCatch({
      pathname <- sprintf("%s.LNK", link);
      createWindowsShortcut(pathname, target=target, overwrite=overwrite);
      res <- Arguments$getReadablePathname(link, mustExist=TRUE);
    }, error = function(ex) {
    });
    if (!is.null(res)) {
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
