# getOption("R.archive/tz", "");
# getOption("R.archive/devEval", FALSE);

getArchivePath <- function(dirs=NULL, ..., rootPath="~/.Rarchive/") {
  # Argument 'rootPath':
  rootPath <- Arguments$getWritablePath(rootPath);

  # Argument 'dirs'
  dirs <- Arguments$getCharacters(dirs);


  # Generate identifiers
  tz <- getOption("R.archive/tz", "");
  # Example: 2011-03-10GMT
  datestamp <- format(Sys.time(), "%Y-%m-%d", tz=tz);
  datestamp <- sprintf("%s%s", datestamp, tz);

  # Generate archive path
  paths <- list(rootPath, dirs, datestamp);
  paths <- paths[sapply(paths, FUN=length) > 0];
  path <- do.call("file.path", args=paths);
  path <- Arguments$getWritablePath(path);

  path;
} # getArchivePath()


getArchiveFilename <- function(filename, ...) {
  # Argument 'filename':
  filename <- basename(filename);  # In case a pathname was given

  # Generate identifiers
  tz <- getOption("R.archive/tz", "");
  # Example: 04:13:59.03
  # timestamp <- format(Sys.time(), "%H%M%OS0", tz=tz);
  # Example: 04:13:59
  timestamp <- format(Sys.time(), "%H%M%S", tz=tz);
  timestamp <- sprintf("%s%s", timestamp, tz);

  tags <- c(timestamp);
  filenameN <- paste(c(tags, filename), collapse="_");

  filenameN;
} # getArchiveFilename()


getArchivePathname <- function(filename, ..., mustNotExist=TRUE) {
  path <- getArchivePath(...);

  filename <- getArchiveFilename(filename, ...);

  pathname <- Arguments$getWritablePathname(filename, path=path, mustNotExist=mustNotExist);

  pathname;
} # getArchivePathname()


archiveFile <- function(filename, path=NULL, ..., onError=c("ignore", "error")) {
  # Argument 'onError':
  onError <- match.arg(onError);

  pathnameA <- NULL;

  tryCatch({
    # Arguments 'filename' & 'path':
    pathname <- Arguments$getReadablePathname(filename, path=path, mustExist=TRUE);

    # Create archive pathname
    pathnameA <- getArchivePathname(pathname, ...);

    # Archive file
    copyFile(pathname, pathnameA, overwrite=TRUE);
  }, error = function(ex) {
    if (onError == "error") {
      throw(ex);
    }
  });

  invisible(pathnameA);
} # archiveFile()


############################################################################
# HISTORY:
# 2011-03-09
# o Added getArchivePath(), getArchiveFilename(), getArchivePathname(),
#   and archiveFile().
# o Created.
############################################################################
