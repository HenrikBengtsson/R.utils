########################################################################/**
# @RdocDefault popBackupFile
#
# @title "Drops a backup suffix from the backup pathname"
#
# @synopsis
#
# \description{
#  @get "title" and, by default, restores an existing backup file
#  accordingly by renaming it.
# }
#
# \arguments{
#   \item{filename}{The filename of the backup file.}
#   \item{path}{The path of the file.}
#   \item{suffix}{The suffix of the filename to be dropped.}
#   \item{isFile}{If @TRUE, the backup file must exist and
#      will be renamed.  If @FALSE, it is only the pathname string
#      that will be modified. For details, see below.}
#   \item{onMissing}{A @character string specifying what to do if the
#      backup file does not exist.}
#   \item{drop}{If @TRUE, the backup file will be dropped in case
#      the original file already exists or was successfully restored.}
#   \item{...}{Not used.}
#   \item{verbose}{A @logical or @see "Verbose".}
# }
#
# \value{
#   Returns the pathname with the backup suffix dropped.
# }
#
# @author
#
# \seealso{
#  See @see "pushBackupFile" for more details and an example.
# }
#
# @keyword "utilities"
# @keyword "programming"
# @keyword "IO"
#*/#########################################################################
setMethodS3("popBackupFile", "default", function(filename, path=NULL, suffix=".bak", isFile=TRUE, onMissing=c("ignore", "error"), drop=TRUE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'isFile':
  isFile <- Arguments$getLogical(isFile);

  # Argument 'onMissing':
  onMissing <- match.arg(onMissing);

  # Argument 'filename' & 'path':
  if (!is.null(filename)) {
    pathnameB <- Arguments$getWritablePathname(filename, path=path,
                                mustExist=(isFile && (onMissing == "error")));
  } else {
    pathnameB <- NULL;
  }

  # Argument 'suffix':
  suffix <- Arguments$getCharacter(suffix);

  # Argument 'drop':
  drop <- Arguments$getLogical(drop);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  # If file does not exist, silently ignore it and returns NULL?
  if ((onMissing == "ignore") && !isFile(pathnameB)) {
    return(invisible(NULL));
  }

  verbose && enter(verbose, "Dropping backup suffix from file");

  verbose && cat(verbose, "Backup pathname: ", pathnameB);
  verbose && cat(verbose, "Suffix: ", suffix);

  # Drop suffix from backup pathname
  pattern <- sprintf("%s$", suffix);
  pattern <- gsub(".", "\\.", pattern, fixed=TRUE);
  pattern <- gsub("[\\$]+$", "$", pattern);
  pattern <- Arguments$getRegularExpression(pattern);
  verbose && cat(verbose, "Regular expression for suffix: ", pattern);

  # Assert that suffix exists in the temporary pathname
  if (!regexpr(pattern, "", pathnameB) == -1) {
    throw(sprintf("Cannot rename backup pathname. The specified temporary pathname does not contain the specified suffix ('%s'): %s", suffix, pathnameB));
  }

  pathname <- gsub(pattern, "", pathnameB);
  verbose && cat(verbose, "Pathname: ", pathname);


  # If both backup and target pathname exists, should we drop the backup?
  if (drop && isFile(pathname) && isFile(pathnameB)) {
    verbose && enter(verbose, "Dropping backup file because target file already exists");
    res <- file.remove(pathnameB);
    verbose && cat(verbose, "Result: ", res);
    verbose && exit(verbose);

    verbose && exit(verbose);
    return(pathname);
  }

  pathname <- Arguments$getWritablePathname(pathname, mustNotExist=TRUE);

  if (isFile && isFile(pathnameB)) {
    if (drop) {
      verbose && enter(verbose, "Renaming existing backup file");
      res <- file.rename(pathnameB, pathname);
      verbose && cat(verbose, "Result: ", res);
      verbose && exit(verbose);
    } else {
      verbose && enter(verbose, "Copying existing backup file");
      res <- copyFile(pathnameB, pathname);
      verbose && cat(verbose, "Result: ", res);
      verbose && exit(verbose);
    }

    if (!isFile(pathname)) {
      throw("Failed to rename temporary file (final file does not exist): ", pathnameB, " -> ", pathname);
    }

    if (!drop) {
      if (isFile(pathnameB)) {
        throw("Failed to rename temporary file (temporary file still exists): ", pathnameB, " -> ", pathname);
      }
    }
  } # if (isFile)


  verbose && exit(verbose);

  pathname;
}) # popTemporaryFile()



############################################################################
# HISTORY:
# 2011-03-01
# o Created from popTemporaryFile.R.
############################################################################
