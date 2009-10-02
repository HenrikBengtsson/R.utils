###########################################################################/**
# @RdocDefault createLink
#
# @title "Creates a link to a file or a directory"
#
# @synopsis
#
# \description{
#   @get "title".
#   First it tries to create a (Unix-like) symbolic links and if that was
#   not successful it tries to create a Windows Shortcut links.
#   If neither works, an exception is thrown.
# }
#
# \arguments{
#   \item{link}{The path or pathname of the link to be created.}
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
#   @see "createWindowsShortcut"
#   \code{\link[base:files]{file.symlink()}}
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("createLink", "default", function(link, target, overwrite=FALSE, methods=c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut"), ...) {
  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Argument 'link':
  if (!overwrite && file.exists(link)) {
    throw("Cannot create link. File already exists: ", link);
  }

  # Argument 'target':
  target <- Arguments$getReadablePathname(target, mustExist=TRUE);
  target <- getAbsolutePath(target);

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
    res <- NULL;
    tryCatch({
      file.symlink(target, link);
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
      shell(cmd, intern=TRUE, mustWork=TRUE);
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
# 2009-10-01
# o Created.
############################################################################
