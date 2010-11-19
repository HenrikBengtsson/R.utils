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
# 
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
# 2010-11-17
# o BUG FIX: Now removeDirectory() also works for paths starting with
#   a tilde (~).  The reason was/is that base::unlink() used internally
#   does not support that.  We now use base::path.expand() first.
# 2008-12-27
# o Created.
###########################################################################
