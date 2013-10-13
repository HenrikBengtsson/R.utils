###########################################################################/**
# @RdocDefault copyDirectory
#
# @title "Copies a directory"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{from}{The pathname of the source directory to be copied.}
#   \item{to}{The pathname of the destination directory.}
#   \item{...}{Additional arguments passed to
#     \code{\link[base:files]{file.copy}}(), e.g. \code{overwrite}.}
#   \item{private}{If @TRUE, files (and directories) starting with
#         a period is also copied, otherwise not.}
#   \item{recursive}{If @TRUE, subdirectories are copied too,
#         otherwise not.}
# }
#
# \value{
#   Returns (invisibly) a @character @vector of pathnames copied.
# }
#
# @author
#
# @keyword file
#*/###########################################################################
setMethodS3("copyDirectory", "default", function(from, to=".", ..., private=TRUE, recursive=TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'from':
  if (!isDirectory(from))
    throw("Argument 'from' is not a directory: ", from);

  # Argument 'to':
  to <- Arguments$getWritablePath(to, mkdirs=TRUE, absolutePath=FALSE);

  # Argument 'private':
  private <- Arguments$getLogical(private);

  # Argument 'recursive':
  recursive <- Arguments$getLogical(recursive);

  # Use relative pathnames
  files <- list.files(from, all.files=private, full.names=FALSE);
  files <- files[!basename(files) %in% c(".", "..")];
  files <- file.path(from, files);

  copiedFiles <- c();
  for (file in files) {
    basename <- basename(file);
    if (isFile(file)) {
      if (file.copy(from=file, to=filePath(to, basename), ...)) {
        copiedFiles <- c(copiedFiles, file);
      }
    } else if (isDirectory(file)) {
      if (recursive) {
        copiedFiles <- c(copiedFiles,
         copyDirectory(file, to=filePath(to, basename), ..., recursive=TRUE));
      }
    }
  }

  invisible(copiedFiles);
})


##############################################################################
# HISTORY:
# 2013-10-13
# o CLEANUP: copyDirectory() no longer attaches 'R.utils'.
# 2005-09-06
# o Using relative paths instead of absolute; sometimes you have permission
#   to read the relative but not the absolute pathname of the same file.
# 2005-09-05
# o BUG FIX: copyDirectory() would not return copied files if recursive==TRUE.
# o Use relative pathnames now.
# 2005-08-01
# o Created.
##############################################################################
