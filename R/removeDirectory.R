###########################################################################/**
# @RdocDefault removeDirectory
#
# @title "Removes a directory"
#
# \description{
#  @get "title", and if requested, also its contents.
# }
#
# @synopsis
#
# \arguments{
#   \item{path}{A @character string specifying the directory to be removed.}
#   \item{recursive}{If @TRUE, subdirectories and files are also removed.
#     If @FALSE, and directory is non-empty, an exception is thrown.}
#   \item{mustExist}{If @TRUE, and the directory does not exist,
#     an exception is thrown.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns (invisibly) @TRUE, the directory was successfully removed,
#  otherwise @FALSE, unless an exception is thrown.
# }
#
# \section{Symbolic links}{
#  This function can also be used to remove symbolic links to directories
#  without removing the target.
#  Note that neither @see "base::file.remove" nor @see "base::unlink"
#  is capable of remove symbolic \emph{directory} links on Windows.
# }
#
# @author
#
# \seealso{
#   Internally @see "base::unlink" is used.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("removeDirectory", "default", function(path, recursive=FALSE, mustExist=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'path':
  path <- Arguments$getReadablePath(path, mustExist=mustExist);
  # WORKAROUND: base::unlink() does not support paths with leading tilde,
  # cf. https://stat.ethz.ch/pipermail/r-help/2010-October/254998.html
  # /HB 2010-11-17
  path <- path.expand(path);
  path <- Arguments$getReadablePath(path, mustExist=mustExist);

  # Argument 'recursive':
  recursive <- Arguments$getLogical(recursive);


  # Check if a symbolic link
  pathT <- Sys.readlink2(path, what="corrected");
  isSymlink <- (!is.na(pathT) && nchar(pathT, type="chars") > 0L);
  if (isSymlink) {
    # Special case: Windows
    if (.Platform$OS == "windows") {
      cmd <- sprintf("rmdir %s", dQuote(normalizePath(path)));
      shell(cmd, shell=Sys.getenv("COMSPEC"), intern=TRUE, mustWork=TRUE);
    } else {
      file.remove(path);
    }
    return(invisible(!isDirectory(path)));
  }

  # Check if directory is empty
  pathnames <- list.files(path=path, all.files=TRUE, full.names=FALSE);
  pathnames <- setdiff(pathnames, c(".", ".."));
  isEmpty <- (length(pathnames) == 0);
  if (!isEmpty && !recursive) {
    throw("Cannot remove directory. Directory is not empty: ", path);
  }

  # Remove directory (if 'recursive' is FALSE, the actual directory
  # will not be removed).
  res <- unlink(path, recursive=TRUE);

  return(invisible(!isDirectory(path)));
}) # removeDirectory()


###########################################################################
# HISTORY:
# 2014-01-07
# o ...and also on non-Windows platforms.
# 2014-01-06
# o Now removeDirectory() can remove symbol links on Windows.
# 2013-10-13
# o CLEANUP: removeDirectory() no longer attaches 'R.utils'.
# 2010-11-17
# o BUG FIX: Now removeDirectory() also works for paths starting with
#   a tilde (~).  The reason was/is that base::unlink() used internally
#   does not support that.  We now use base::path.expand() first.
# 2008-12-27
# o Created.
###########################################################################
