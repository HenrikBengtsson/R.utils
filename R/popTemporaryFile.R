########################################################################/**
# @RdocDefault popTemporaryFile
#
# @title "Drops a temporary suffix from the temporary pathname"
#
# @synopsis
#
# \description{
#  @get "title" and, by default, renames an existing temporary file
#  accordingly.
# }
#
# \arguments{
#   \item{filename}{The filename of the temporary file.}
#   \item{path}{The path of the temporary file.}
#   \item{suffix}{The suffix of the temporary filename to be dropped.}
#   \item{isFile}{If @TRUE, the temporary file must exist and 
#      will be renamed.  If @FALSE, it is only the pathname string
#      that will be modified. For details, see below.}
#   \item{...}{Not used.}
#   \item{verbose}{A @logical or @see "Verbose".}
# }
#
# \value{
#   Returns the pathname with the temporary suffix dropped.
# }
#
# \details{
#   If \code{isFile} is @FALSE, the pathname where the suffix of the
#   temporary pathname has been dropped is returned.
#   If \code{isFile} is @TRUE, the temporary file is renamed.
#   Then, if the temporary file does not exists or it was not successfully
#   renamed, an exception is thrown.
# }
# 
# @author
# 
# \seealso{
#  See @see "pushTemporaryFile" for more details and an example.
# }
#
# @keyword "utilities" 
# @keyword "programming"
# @keyword "IO"
#*/#########################################################################  
setMethodS3("popTemporaryFile", "default", function(filename, path=NULL, suffix=".tmp", isFile=TRUE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'isFile':
  isFile <- Arguments$getLogical(isFile);

  # Argument 'filename' & 'path':
  pathnameT <- Arguments$getWritablePathname(filename, path=path, 
                                     mustExist=isFile, mustNotExist=!isFile);

  # Argument 'suffix':
  suffix <- Arguments$getCharacter(suffix);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  verbose && enter(verbose, "Dropping temporary suffix from file");

  verbose && cat(verbose, "Temporary pathname: ", pathnameT);
  verbose && cat(verbose, "Suffix: ", suffix);
  
  # Drop suffix from temporary pathname
  pattern <- sprintf("%s$", suffix);
  pattern <- gsub(".", "\\.", pattern, fixed=TRUE);
  pattern <- gsub("[\\$]+$", "$", pattern);
  pattern <- Arguments$getRegularExpression(pattern);
  verbose && cat(verbose, "Regular expression for suffix: ", pattern);

  # Assert that suffix exists in the temporary pathname
  if (!regexpr(pattern, "", pathnameT) == -1) {
    throw(sprintf("Cannot rename temporary pathname. The specified temporary pathname does not contain the specified suffix ('%s'): %s", suffix, pathnameT));
  }

  pathname <- gsub(pattern, "", pathnameT);
  verbose && cat(verbose, "Pathname: ", pathname);

  pathname <- Arguments$getWritablePathname(pathname, mustNotExist=TRUE);

  if (isFile) {
    verbose && enter(verbose, "Renaming existing file");

    res <- file.rename(pathnameT, pathname);
    verbose && cat(verbose, "Result: ", res);
    verbose && exit(verbose);

    if (!isFile(pathname)) {
      throw("Failed to rename temporary file (final file does not exist): ", pathnameT, " -> ", pathname);
    }
    if (isFile(pathnameT)) {
      throw("Failed to rename temporary file (temporary file still exists): ", pathnameT, " -> ", pathname);
    }
  } # if (isFile)

  verbose && exit(verbose);

  pathname;
}) # popTemporaryFile()



############################################################################
# HISTORY:
# 2011-02-28
# o Added popTemporaryFile().
# o Created.
############################################################################
