########################################################################/**
# @RdocDefault pushBackupFile
#
# @title "Appends a backup suffix to the pathname"
#
# @synopsis
#
# \description{
#  @get "title" and, optionally, renames an existing file accordingly.
#
#  In combination with @see "popBackupFile", this method is useful
#  for creating a backup of a file and restoring it.
# }
#
# \arguments{
#   \item{filename}{The filename of the file to backup.}
#   \item{path}{The path of the file.}
#   \item{suffix}{The suffix to be appended.}
#   \item{isFile}{If @TRUE, the file must exist and will be renamed
#      on the file system.  If @FALSE, it is only the pathname string
#      that will be modified. For details, see below.}
#   \item{onMissing}{A @character string specifying what to do if the
#      file does not exist.}
#   \item{copy}{If @TRUE, an existing original file remains after 
#      creating the backup copy, otherwise it is dropped.}
#   \item{overwrite}{If @TRUE, any existing backup files are overwritten,
#      otherwise an exception is thrown.}
#   \item{...}{Not used.}
#   \item{verbose}{A @logical or @see "Verbose".}
# }
#
# \value{
#   Returns the pathname with the suffix appended.
# }
#
# @examples "../incl/pushBackupFile.Rex"
#
# @author
# 
# \seealso{
#  @see "popBackupFile".
# }
#
# @keyword "utilities" 
# @keyword "programming"
# @keyword "IO"
#*/#########################################################################  
setMethodS3("pushBackupFile", "default", function(filename, path=NULL, suffix=".bak", isFile=TRUE, onMissing=c("ignore", "error"), copy=FALSE, overwrite=TRUE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'isFile':
  isFile <- Arguments$getLogical(isFile);

  # Argument 'onMissing':
  onMissing <- match.arg(onMissing);

  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Argument 'filename' & 'path':
  pathname <- Arguments$getWritablePathname(filename, path=path, 
                                mustExist=(isFile && (onMissing == "error")));

  # Argument 'suffix':
  suffix <- Arguments$getCharacter(suffix);

  # Argument 'copy':
  copy <- Arguments$getLogical(copy);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  # If file does not exist, returns NULL?
  if ((onMissing == "ignore") && !isFile(pathname)) {
    return(invisible(NULL));
  }

  verbose && enter(verbose, "Adding backup suffix from file");
  verbose && cat(verbose, "Pathname: ", pathname);
  verbose && cat(verbose, "Suffix: ", suffix);
  verbose && cat(verbose, "Rename existing file?: ", (isFile && !copy));
  
  pathnameB <- sprintf("%s%s", pathname, suffix);
  verbose && cat(verbose, "Backup pathname: ", pathnameB);

  pathnameB <- Arguments$getWritablePathname(pathnameB, mustNotExist=!overwrite);
  if (overwrite && isFile(pathnameB)) {
    file.remove(pathnameB);
  }

  if (isFile) {
    if (copy) {
      verbose && enter(verbose, "Copy existing file");
      res <- copyFile(pathname, pathnameB);
      verbose && cat(verbose, "Result: ", res);
      verbose && exit(verbose);
    } else {
      verbose && enter(verbose, "Renaming existing file");
      res <- file.rename(pathname, pathnameB);
      verbose && cat(verbose, "Result: ", res);
      verbose && exit(verbose);
    }
  
    if (!isFile(pathnameB)) {
      throw("Failed to copy/rename file (final file does not exist): ", pathname, " -> ", pathnameB);
    }

    if (!copy) {
      if (isFile(pathname)) {
        throw("Failed to rename file (file still exists): ", pathname, " -> ", pathnameB);
      }
    }
  } # if (isFile)

  verbose && exit(verbose);

  pathnameB;
}) # pushBackupFile()


############################################################################
# HISTORY:
# 2011-03-01
# o Created from pushTemporaryFile.R.
############################################################################
