###########################################################################/**
# @RdocDefault copyFile
#
# @title "Copies a file atomically"
#
# \description{
#  @get "title",
#  by first copying to a temporary file and then renaming that file.
# }
#
# @synopsis
#
# \arguments{
#   \item{srcPathname}{The source file to be copied.}
#   \item{destPathname}{The destination file to be created.
#    If an emph{existing directory}, then the destination file
#    becomes \code{file.path(destPathname, basename(srcPathname))}.}
#   \item{skip, overwrite}{If a destination file does not exist, these
#    arguments have no effect.
#    If such a file exists and \code{skip} is @TRUE, then no copying is
#    attempted and @FALSE is returned (indicating that no copying was made).
#    If such a file exists, both \code{skip} and \code{overwrite} are @FALSE
#    then an exception is thrown.
#    If a destination file exists, \code{skip} is @FALSE and
#    \code{overwrite} is @TRUE, then it is overwritten and @TRUE is returned.
#    If the copying/overwriting failed, for instance due to non sufficient
#    file permissions, an informative exception is thrown.}
#   \item{...}{Additional \emph{named} arguments passed to @see "base::file.copy".
#    Non-named or unknown arguments are ignored.}
#   \item{validate}{If @TRUE, validation of the copied file is applied,
#    otherwise not.}
#   \item{verbose}{See @see "R.utils::Verbose".}
# }
#
# \value{
#   Returns a @logical indicating whether a successful file copy was
#   completed or not, or equivalently.  In other words, @TRUE is returned
#   if the file was succesfully copied, and @FALSE if not.
#   If an error occurs, an informative exception is thrown.
#   If the error occurs while renaming the temporary file to the final name,
#   the temporary file will remain in the destination directory.
# }
#
# \details{
#   If the source file does not exists (or is not a file), then an
#   informative exception is thrown.
#
#   If the source and destination pathnames are the same, it is not safe
#   to copy (which can lead to either corrupt or lost files) and an
#   informative exception is thrown.
#
#   If (and only if) the file is successfully copied and argument
#   \code{validate} is @TRUE, then this method also asserts that the
#   file size of the destination matches that of the source, otherwise
#   an informative exception is thrown.
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
setMethodS3("copyFile", "default", function(srcPathname, destPathname, skip=FALSE, overwrite=FALSE, ..., validate=TRUE, verbose=FALSE) {
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

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Special case: Copying to an existing directory?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (isDirectory(destPathname)) {
    destPath <- destPathname
    destPath <- Arguments$getWritablePath(destPath)
    verbose && cat(verbose, "Destination directory: ", destPath);
    destPathname <- file.path(destPath, basename(srcPathname))
  }
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


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Destination file already exists?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (isFile(destPathname)) {
    # Nothing to do?
    if (skip) return(FALSE);

    # Overwrite or not?
    if (!overwrite) {
      throw("Failed to copy file. Destination file already exists (with skip=FALSE, overwrite=FALSE): ", destPathname);
    }
  }


  # 1. Copy to a temporary file
  verbose && enter(verbose, "Copying to temporary file using file.copy()");
  tmpPathname <- paste(destPathname, "tmp", sep=".");
  if (isFile(tmpPathname)) {
    throw("Failed to copy file. Temporary copy file exists: ", tmpPathname);
  }

  # Setup arguments to file.copy()
  args <- list(from=srcPathname, to=tmpPathname, ...);

  # Keep only named arguments
  args <- args[nzchar(names(args))];

  # Keep only arguments known to file.copy()
  args <- args[is.element(names(args), names(formals(file.copy)))];

  # Call file.copy()
  res <- do.call(file.copy, args=args);

  # Failed to copy?
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

  # 4. Make sure it is file
  if (!isFile(destPathname)) {
    throw("Failed to copy file: ", destPathname);
  }

  if (validate) {
    verbose && enter(verbose, "Validating destination file");
    # 5. Validate file size
    srcSize <- file.info2(srcPathname)$size;
    destSize <- file.info2(destPathname)$size;
    if (!identical(srcSize, destSize)) {
      throw("File copy got a different size than the source file: ",
                                                 destSize, " !=", srcSize);
    }
    verbose && exit(verbose);
  } # if (validate)

  verbose && exit(verbose);

  TRUE;
}) # copyFile()


############################################################################
# HISTORY:
# 2014-01-06
# o For backward compatibilities, argument 'skip' of fileCopy() defaults
#   to FALSE, but may be changed to skip=!overwrite in a future version.
# o Added argument 'validate' to fileCopy().
# o Added argument 'skip' to fileCopy() and added more documentation.
# o fileCopy() now passes arguments '...' to base::file.copy().  Thanks
#   Taku Tokuyasu (UCSF) for reporting on this.
# 2007-11-26
# o Renamed from fileCopy() to be consistent with copyDirectory().
# 2007-09-15
# o Created.
############################################################################
