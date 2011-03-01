########################################################################/**
# @RdocDefault createFileAtomically
#
# @title "Creates a file atomically"
#
# @synopsis
#
# \description{
#  @get "title" by first creating and writing to a temporary file which
#  is then renamed.
# }
#
# \arguments{
#   \item{filename}{The filename of the file to create.}
#   \item{path}{The path to the file.}
#   \item{FUN}{A @function that creates and writes to the pathname that
#      is passed as the first argument.  This pathname is guaranteed
#      to be a non-existing temporary pathname.}
#   \item{...}{Additional argumentes passed to @see "pushTemporaryFile"
#      and @see "popTemporaryFile".}
#   \item{skip}{If @TRUE and a file with the same pathname already exists,
#      nothing is done/written.}
#   \item{overwrite}{If @TRUE and a file with the same pathname 
#      already exists, the existing file is overwritten.
#      This is also done atomically such that if the new file was not
#      successfully created, the already original file is restored.
#      If restoration also failed, the original file remains as
#      the pathname with suffix \code{".bak"} appended.}
#   \item{verbose}{A @logical or @see "Verbose".}
# }
#
# \value{
#   Returns (invisibly) the pathname.
# }
#
# @examples "../incl/createFileAtomically.Rex"
#
# @author
# 
# \seealso{
#  Internally @see "pushTemporaryFile" and @see "popTemporaryFile" is used.
# }
#
# @keyword "utilities" 
# @keyword "programming"
# @keyword "IO"
#*/#########################################################################  
setMethodS3("createFileAtomically", "default", function(filename, path=NULL, FUN, ..., skip=FALSE, overwrite=FALSE, verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'skip':
  skip <- Arguments$getLogical(skip);

  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Arguments 'filename' & 'path':
  pathname <- Arguments$getWritablePathname(filename, path=path, mustNotExist=(!skip && !overwrite));

  # Argument 'FUN':
  if (!is.function(FUN)) {
    throw("Argument 'FUN' is not a function: ", mode(FUN));
  }

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  verbose && enter(verbose, "Writes a file atomically");
  verbose && cat(verbose, "Pathname: ", pathname);
  verbose && cat(verbose, "Argument 'skip': ", skip);
  verbose && cat(verbose, "Argument 'overwrite': ", overwrite);

  if (skip && isFile(pathname)) {
    verbose && cat(verbose, "Returning already existing file (skip=TRUE).");
    verbose && exit(verbose);
    return(pathname);
  }

  # Backing up existing file?
  pathnameB <- NULL;
  if (overwrite && isFile(pathname)) {
    verbose && enter(verbose, "Backing up existing file");
    pathnameB <- sprintf("%s.bak", pathname);
    pathnameB <- Arguments$getWritablePathname(pathnameB, mustNotExist=TRUE);
    file.rename(pathname, pathnameB);
    pathnameB <- Arguments$getWritablePathname(pathnameB, mustExist=TRUE);
    verbose && exit(verbose);

    # Restore backup file, in case creation of new file was not succesful.
    on.exit({
      # Successful?
      successful <- isFile(pathname);
      if (successful) {
        # Drop backup
        verbose && enter(verbose, "Removing backup file because the new file was successfully created");
        file.remove(pathnameB);
        verbose && exit(verbose);
      } else {
        verbose && enter(verbose, "Restoring original file from backup because the creation of the new file failed");
        file.rename(pathnameB, pathname);
        pathname <- Arguments$getWritablePathname(pathname, mustExist=TRUE);
        verbose && exit(verbose);
      }
    }, add=TRUE);
  }


  # Write to a temporary pathname
  pathnameT <- pushTemporaryFile(pathname, ..., verbose=verbose);
  verbose && cat(verbose, "Writing to temporary file: ", pathname);

  tryCatch({
    verbose && enter(verbose, "Calling write function (argument 'FUN')");
    FUN(pathnameT);
    verbose && exit(verbose);

    # Rename temporary pathname
    pathname <- popTemporaryFile(pathnameT, ..., verbose=verbose);
  }, interrupt = function(intr) {
    verbose && cat(verbose, "An interrupt occurred while writing to temporary file. File was not created.");
  }, error = function(ex) {
    verbose && cat(verbose, "An error occurred while writing to temporary file. File was not created.");
  });

  verbose && exit(verbose);

  invisible(pathname);
}) # createFileAtomically()


############################################################################
# HISTORY:
# 2011-02-28
# o Added createFileAtomically().
# o Created.
############################################################################
