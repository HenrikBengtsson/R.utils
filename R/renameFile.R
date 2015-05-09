###########################################################################/**
# @RdocDefault renameFile
#
# @title "Renames a file (or a directory) atomically/safely"
#
# \description{
#  @get "title",
#  by also asserting that it was successfully renamed without side effects.
#  If failing to rename and overwrite an existing file, the original file
#  is kept.
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{The pathname of the file to be renamed.}
#   \item{newPathname}{The new pathname.
#    If an emph{existing directory} and the source is a file, then the
#    destination becomes \code{file.path(newPathname, basename(pathname))}.}
#   \item{overwrite}{If @TRUE and there exists a file with new pathname,
#    then it is overwritten.}
#   \item{...}{Not used.}
#   \item{verbose}{See @see "R.utils::Verbose".}
# }
#
# \value{
#   Returns @TRUE if the file was successfully renamed.
#   If it failed, an exception is thrown.
# }
#
# @author
#
# \seealso{
#   \code{\link[base:files]{file.rename}()}.
# }
#
# @keyword internal
#*/###########################################################################
setMethodS3("renameFile", "default", function(pathname, newPathname, overwrite=FALSE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  pathname <- Arguments$getCharacter(pathname, nchar=c(1,512));
  pathname <- Arguments$getWritablePathname(pathname, mustExist=TRUE);

  # Argument 'newPathname':
  newPathname <- Arguments$getCharacter(newPathname, nchar=c(1,512));
  # Special case: Source is a file and destination is an existing directory?
  if (isFile(pathname) && isDirectory(newPathname)) {
    newPathname <- file.path(newPathname, basename(pathname))
  }
  newPathname <- Arguments$getWritablePathname(newPathname,
                                                    mustNotExist=!overwrite);

  if (newPathname == pathname) {
    throw("Cannot rename file. Source and target are identical: ", pathname);
  }

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }

  isDir <- isDirectory(pathname);
  pType <- if (isDir) "directory" else "file";
  pExists <- if (isDir) isDirectory else isFile;

  verbose && enterf(verbose, "Renaming %s safely", pType);
  verbose && cat(verbose, "Pathname: ", pathname);
  verbose && cat(verbose, "New pathname: ", newPathname);

  if (overwrite && pExists(newPathname)) {
    newPathnameB <- pushBackupFile(newPathname, verbose=verbose);
    on.exit({
      popBackupFile(newPathnameB, verbose=verbose);
    });
  }

  verbose && enter(verbose, "Renaming file using file.rename()");
  res <- file.rename(pathname, newPathname);
  verbose && cat(verbose, "Result: ", res);
  if (!res) {
    throw(sprintf("Failed to rename %s: %s -> %s", pType, pathname, newPathname));
  }
  verbose && exit(verbose);

  verbose && enter(verbose, "Validating");
  if (!pExists(newPathname)) {
    throw(sprintf("Failed to rename %s (target does not exist): %s -> %s", pType, pathname, newPathname));
  }

  if (pExists(pathname)) {
    throw(sprintf("Failed to rename %s (source still exists): %s -> %s", pType, pathname, newPathname));
  }

  verbose && exit(verbose);

  verbose && exit(verbose);

  TRUE;
}) # renameFile()


############################################################################
# HISTORY:
# 2011-03-01
# o Created from copyFile.R.
############################################################################
