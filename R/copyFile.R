###########################################################################/**
# @RdocDefault copyFile
#
# @title "Copies a file safely"
#
# \description{
#  @get "title" by first copying to a temporary file and then renaming that
#  file.
# }
#
# @synopsis
#
# \arguments{
#   \item{srcPathname}{The source file to be copied.}
#   \item{destPathname}{The destination file to be created.}
#   \item{overwrite}{If @TRUE, an existing destination file is overwritten.}
#   \item{...}{Not used.}
#   \item{verbose}{See @see "R.utils::Verbose".}
# }
#
# \value{
#   Returns @TRUE if the file was copied succesfully.
# }
#
# @author
#
# \seealso{
#   \code{\link[base:files]{file.copy}()}.
# }
#
# @keyword internal
#*/###########################################################################
setMethodS3("copyFile", "default", function(srcPathname, destPathname, overwrite=FALSE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'srcPathname':
  srcPathname <- Arguments$getCharacter(srcPathname, nchar=c(1,512));

  # Argument 'destPathname':
  destPathname <- Arguments$getCharacter(destPathname, nchar=c(1,512));

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  verbose && enter(verbose, "Copying file safely");
  verbose && cat(verbose, "Source: ", srcPathname);
  verbose && cat(verbose, "Destination: ", destPathname);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Initial validation
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!isFile(srcPathname)) {
    throw("Failed to copy file. No such file: ", srcPathname);
  }

  if (srcPathname == destPathname) {
    throw("Failed to copy file. Source and destination are identical: ",
                                                           srcPathname);
  }

  if (!overwrite && isFile(destPathname)) {
    throw("Failed to copy file. Destination file will not be overwritten: ",
                                                              destPathname);
  }


  # 1. Copy to a temporary file
  verbose && enter(verbose, "Copying to temporary file using file.copy()");
  tmpPathname <- paste(destPathname, "tmp", sep=".");
  if (isFile(tmpPathname)) {
    throw("Failed to copy file. Temporary copy file exists: ", tmpPathname);
  }
  res <- file.copy(srcPathname, tmpPathname);
  if (!res) {
    throw("Failed to copy file: ", srcPathname, " -> ", tmpPathname);
  }
  verbose && exit(verbose);

  # 2. Overwrite?
  if (isFile(destPathname)) {
    verbose && enter(verbose, "Removing existing destination file");
    res <- file.remove(destPathname);
    if (!res)
      throw("Cannot overwrite file: ", destPathname);
    verbose && exit(verbose);
  }

  # 3. Rename temporary file
  verbose && enter(verbose, "Renaming temporary file to destination name");
  res <- file.rename(tmpPathname, destPathname);
  if (!res) {
    throw("Failed to rename temporary file: ",
                                        tmpPathname, " -> ", destPathname);
  }
  verbose && exit(verbose);

  verbose && enter(verbose, "Validating destination file");
  # 4a. Make sure it is file
  if (!isFile(destPathname)) {
    throw("Failed to copy file: ", destPathname);
  }

  # 4b. Validate file size
  srcSize <- file.info(srcPathname)$size;
  destSize <- file.info(destPathname)$size;
  if (!identical(srcSize, destSize)) {
    throw("File copy got a different size than the source file: ",
                                                  destSize, " !=", srcSize);
  }
  verbose && exit(verbose);

  verbose && exit(verbose);

  TRUE;
}) # copyFile()


############################################################################
# HISTORY:
# 2007-11-26
# o Renamed from fileCopy() to be consistent with copyDirectory().
# 2007-09-15
# o Created.
############################################################################
