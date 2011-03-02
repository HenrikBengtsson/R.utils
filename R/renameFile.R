###########################################################################/**
# @RdocDefault renameFile
#
# @title "Renames a file safely"
#
# \description{
#  @get "title" by also asserting that it was correctly renamed without
#  side effects.
# }
# 
# @synopsis 
#
# \arguments{
#   \item{pathname}{The pathname of the file to be renamed.}
#   \item{newPathname}{The new pathname.}
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


  verbose && enter(verbose, "Renaming file safely");
  verbose && cat(verbose, "Pathname: ", pathname);
  verbose && cat(verbose, "New pathname: ", newPathname);

  if (overwrite && isFile(newPathname)) {
    newPathnameB <- pushBackupFile(newPathname, verbose=verbose);
    on.exit({
      popBackupFile(newPathnameB, verbose=verbose);
    });
  }

  verbose && enter(verbose, "Renaming file using file.rename()");
  res <- file.rename(pathname, newPathname);
  verbose && print(verbose, "Result: ", res);
  if (!res) {
    throw("Failed to rename file: ", pathname, " -> ", newPathname);
  }
  verbose && exit(verbose);

  verbose && enter(verbose, "Validating");
  if (!isFile(newPathname)) {
    throw("Failed to rename file (target file does not exist): ", pathname, " -> ", newPathname);
  }

  if (isFile(pathname)) {
    throw("Failed to rename file (source file still exists): ", pathname, " -> ", newPathname);
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
