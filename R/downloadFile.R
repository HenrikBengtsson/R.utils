###########################################################################/**
# @set "class=character"
# @RdocMethod downloadFile
#
# @title "Downloads a file"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{url}{A @character string specifying the URL to be downloaded.}
#  \item{filename, path}{(optional) @character strings specifying the 
#    local filename and the path of the downloaded file.}
#  \item{skip}{If @TRUE, an already downloaded file is skipped.}
#  \item{overwrite}{If @TRUE, an already downloaded file is overwritten,
#    otherwise an error is thrown.}
#  \item{...}{Additional arguments passed to @see "utils::download.file".}
#  \item{binary}{If @TRUE, the file is downloaded exactly "as is", that is,
#    byte by byte (strongly recommended).}
#    which means it willand the downloaded file is empty, the file
#  \item{dropEmpty}{If @TRUE and the downloaded file is empty, the file
#    is ignored and @NULL is returned.}
#  \item{verbose}{A @logical, @integer, or a @see "Verbose" object.}
# }
#
# \value{
#   Returns the local pathname to the downloaded filename,
#   or @NULL if no file was downloaded.
# }
#
# \examples{\dontrun{
#  pathname <- downloadFile("http://www.r-project.org/index.html", path="www.r-project.org/")
#  print(pathname)
# }}
#
# @author
#
# \seealso{
#   Internally @see "utils::download.file" is used.
#   That function may generate an empty file if the URL is not available.
# }
#
# @keyword programming
# @keyword file
#*/###########################################################################
setMethodS3("downloadFile", "character", function(url, filename=basename(url), path=NULL, skip=TRUE, overwrite=!skip, ..., binary=TRUE, dropEmpty=TRUE, verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'url':
  url <- Arguments$getCharacter(url);

  # Argument 'skip':
  skip <- Arguments$getLogical(skip);

  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Argument 'filename' & 'path':
  pathname <- Arguments$getWritablePathname(filename, path=path,
                                         mustNotExist=(!overwrite && !skip));

  # Argument 'binary':
  binary <- Arguments$getLogical(binary);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  verbose && enter(verbose, "Downloading URL");
  verbose && cat(verbose, "URL: ", url);
  verbose && cat(verbose, "Pathname: ", pathname);

  if (isFile(pathname)) {
    if (skip) {
      verbose && cat(verbose, "Already downloaded. Skipping.");
      verbose && exit(verbose);
      return(pathname);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Download to a temporary pathname
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  pathnameT <- sprintf("%s.tmp", pathname);
  pathnameT <- Arguments$getWritablePathname(pathnameT, mustNotExist=TRUE);
  on.exit({
    if (isFile(pathnameT)) {
      file.remove(pathnameT);
    }
  }, add=TRUE); 


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Download file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  mode <- ifelse(binary, "wb", "w");
  verbose && cat(verbose, "Download mode: ", mode);
  res <- download.file(url, destfile=pathnameT, mode=mode, 
                                             quiet=!isVisible(verbose), ...);

  # Remove failed or "empty" downloads
  fi <- file.info(pathnameT);
  verbose && cat(verbose, "Downloaded file:");
  verbose && str(verbose, fi);
  if (res != 0 || is.na(fi$size) || (dropEmpty && fi$size == 0)) {
    file.remove(pathnameT);
    verbose && cat(verbose, "Removed downloaded file because download failed or the file was empty: ", pathnameT);
    pathnameT <- NULL;
    pathname <- NULL;
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Rename temporary pathname
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!is.null(pathnameT)) {
    file.rename(pathnameT, pathname);
    if (!isFile(pathname)) {
      throw("Failed to rename temporary filename: ", 
                                               pathnameT, " -> ", pathname);
    }
    if (isFile(pathnameT)) {
      throw("Failed to remove temporary filename: ", pathnameT);
    }
  }

  verbose && exit(verbose);

  pathname;
})


############################################################################
# HISTORY:
# 2010-05-27
# o Created.
############################################################################
