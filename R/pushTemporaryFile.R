########################################################################/**
# @RdocDefault pushTemporaryFile
#
# @title "Appends a temporary suffix to the pathname"
#
# @synopsis
#
# \description{
#  @get "title" and, optionally, renames an existing file accordingly.
#
#  In combination with @see "popTemporaryFile", this method is useful
#  for creating a file/writing data to file \emph{atomically}, by
#  first writing to a temporary file which is the renamed.  If for
#  some reason the generation of the file was interrupted, for instance
#  by a user interrupt or a power failure, then it is only the temporary
#  file that is incomplete.
# }
#
# \arguments{
#   \item{filename}{The filename of the file.}
#   \item{path}{The path of the file.}
#   \item{suffix}{The suffix to be appended.}
#   \item{isFile}{If @TRUE, the file must exist and will be renamed
#      on the file system.  If @FALSE, it is only the pathname string
#      that will be modified. For details, see below.}
#   \item{...}{Not used.}
#   \item{verbose}{A @logical or @see "Verbose".}
# }
#
# \value{
#   Returns the pathname with the suffix appended.
# }
#
# \details{
#   If \code{isFile} is @FALSE, the pathname where the suffix of the
#   temporary pathname has been added is returned.
#   If \code{isFile} is @TRUE, the file is also renamed.
#   Then, if the file does not exists or it was not successfully
#   renamed, an exception is thrown.
# }
#
# @examples "../incl/pushTemporaryFile.Rex"
#
# @author
#
# \seealso{
#  @see "popTemporaryFile".
# }
#
# @keyword "utilities"
# @keyword "programming"
# @keyword "IO"
#*/#########################################################################
setMethodS3("pushTemporaryFile", "default", function(filename, path=NULL, suffix=".tmp", isFile=FALSE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'isFile':
  isFile <- Arguments$getLogical(isFile);

  # Argument 'filename' & 'path':
  pathname <- Arguments$getWritablePathname(filename, path=path,
                    mustExist=isFile, mustNotExist=!isFile);

  # Argument 'suffix':
  suffix <- Arguments$getCharacter(suffix);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  verbose && enter(verbose, "Adding temporary suffix from file");
  verbose && cat(verbose, "Pathname: ", pathname);
  verbose && cat(verbose, "Suffix: ", suffix);
  verbose && cat(verbose, "Rename existing file?: ", isFile);

  pathnameT <- sprintf("%s%s", pathname, suffix);
  verbose && cat(verbose, "Temporary pathname: ", pathnameT);

  pathnameT <- Arguments$getWritablePathname(pathnameT, mustNotExist=TRUE);

  if (isFile) {
    verbose && enter(verbose, "Renaming existing file");
    res <- file.rename(pathname, pathnameT);
    verbose && cat(verbose, "Result: ", res);
    verbose && exit(verbose);

    if (!isFile(pathnameT)) {
      throw("Failed to rename file (final file does not exist): ", pathname, " -> ", pathnameT);
    }
    if (isFile(pathname)) {
      throw("Failed to rename file (file still exists): ", pathname, " -> ", pathnameT);
    }
  } # if (isFile)

  verbose && exit(verbose);

  pathnameT;
}) # pushTemporaryFile()


############################################################################
# HISTORY:
# 2011-02-28
# o Added pushTemporaryFile().
# o Created.
############################################################################
