###########################################################################/**
# @set "class=character"
# @RdocMethod downloadFile
# @alias downloadFile
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
#  \item{username, password}{@character strings specifying the username
#    and password for authenticated downloads.  The alternative is to
#    specify these via the URL.}
#  \item{binary}{If @TRUE, the file is downloaded exactly "as is", that is,
#    byte by byte (recommended).}
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
# \details{
#   Currently arguments \code{username} and \code{password} are only used
#   for downloads via URL protocol 'https'.  The 'https' protocol requires
#   that either of 'curl' or 'wget' are available on the system.
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
setMethodS3("downloadFile", "character", function(url, filename=basename(url), path=NULL, skip=TRUE, overwrite=!skip, ..., username=NULL, password=NULL, binary=TRUE, dropEmpty=TRUE, verbose=FALSE) {
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
  filename <- Arguments$getReadablePathname(filename, adjust="url",
                                            mustExist=FALSE);
  pathname <- Arguments$getWritablePathname(filename, path=path,
                   mustNotExist=(!overwrite && !skip));

  # Argument 'username':
  if (!is.null(username)) {
    username <- Arguments$getCharacter(username);
  }

  # Argument 'password':
  if (!is.null(password)) {
    password <- Arguments$getCharacter(password);
  }

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

  protocol <- gsub("^([^:]*)://.*", "\\1", url, ignore.case=TRUE);
  protocol <- tolower(protocol);
  verbose && cat(verbose, "Protocol: ", protocol);

  # Is username and password given by the URL?
  pattern <- "^([^:]*)://([^:]*):([^:]*)@.*";
  if (regexpr(pattern, url) != -1) {
    if (!is.null(username)) {
      warning("Argument 'username' was overridden by username specified by argument 'url'.");
    }
    if (!is.null(password)) {
      warning("Argument 'password' was overridden by password specified by argument 'url'.");
    }
    username <- gsub(pattern, "\\2", url);
    password <- gsub(pattern, "\\3", url);
  }

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
  verbose && enter(verbose, "Downloading");
  if (is.element(protocol, c("https"))) {
    verbose && enter(verbose, "Downloading via HTTPS");
    # Locate external executables
    bin <- Sys.which(c("curl", "wget"));
    verbose && cat(verbose, "Available external executables:");
    verbose && print(verbose, bin);
    keep <- nzchar(bin);
    if (!any(keep)) {
      throw("Cannot download file over HTTPS protocol. Failed to locate external download software (%s): %s", paste(sQuote(names(bin)), collapse=", "), url);
    }
    bin <- bin[keep];
    bin <- bin[1L];
    verbose && printf(verbose, "Using external download software %s: %s\n", sQuote(names(bin)), bin);

    verbose && enter(verbose, "Setting up command-line options");
    # Command-line options
    args <- NULL;

    if (names(bin) == "curl") {
      # Less strict (=more likely to succeed)
      arg <- "--insecure";
      args <- c(args, arg);

      # Follow redirects
      arg <- "--location"
      args <- c(args, arg);

      if (!is.null(username)) {
        arg <- sprintf("--user %s", username);
        if (!is.null(password)) {
          arg <- sprintf("%s:%s", arg, password);
        }
        args <- c(args, arg);
      }

      # Output file
      arg <- sprintf("--output \"%s\"", pathnameT);
      args <- c(args, arg);

      # URL to download
      args <- c(args, url);
    } else if (names(bin) == "wget") {
      # Less strict (=more likely to succeed)
      arg <- "--no-check-certificate";
      args <- c(args, arg);

      if (!is.null(username)) {
        arg <- sprintf("--http-user=%s", username);
        args <- c(args, arg);
      }

      if (!is.null(password)) {
        arg <- sprintf("--http-passwd=%s", password);
        args <- c(args, arg);
      }

      # Output file
      arg <- sprintf("--output-document=\"%s\"", pathnameT);
      args <- c(args, arg);

      # URL to download
      args <- c(args, url);
    }

    verbose && print(verbose, args);
    verbose && exit(verbose);

    res <- system2(bin, args=args);

    verbose && exit(verbose);
  } else {
    mode <- ifelse(binary, "wb", "w");
    verbose && cat(verbose, "Download mode: ", mode);
    res <- download.file(url, destfile=pathnameT, mode=mode,
                                             quiet=!isVisible(verbose), ...);
  }
  verbose && cat(verbose, "Downloading finished\n");
  verbose && cat(verbose, "Download result:", res);
  verbose && exit(verbose);

  # Remove failed or "empty" downloads
  fi <- file.info2(pathnameT);
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
# 2014-10-03
# o Now downloadFile("https://...") will use 'curl', and if not available
#   'wget', to download the file over the HTTPS protocol.  Previously
#   only 'wget' was use.  The 'curl' software is available on more
#   operating systems, include OS X, whereas 'wget' sometimes needs
#   a separate installation.
# 2014-05-04
# o Now downloadFile() "adjusts" the output filename by decoding URL
#   encoded characters, e.g. 'Hello%20world.txt' becomes 'Hello world.txt'.
#   Also, unsafe filename characters (':', '*', '\') are encoded, e.g.
#   'How_to:_RSP.txt' becomes 'How_to%3A_RSP.txt'.
# 2013-10-13
# o CLEANUP: downloadFile() no longer attaches 'R.utils'.
# 2013-03-29
# o BUG FIX: downloadFile('https://...') did not work if 'username' or
#   'password' was NULL.
# 2010-08-23
# o Added support for https authentication via wget.
# 2010-05-27
# o Created.
############################################################################
