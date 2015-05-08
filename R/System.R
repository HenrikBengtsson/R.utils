###########################################################################/**
# @RdocClass System
#
# @title "Static class to query information about the system"
#
# \description{
#  @classhierarchy
#
#  The System class contains several useful class fields and methods. It
#  cannot be instantiated.
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# @author
#*/###########################################################################
setConstructorS3("System", function() {
  extend(Object(), "System")
})



########################################################################/**
# @RdocMethod getHostname
#
# @title "Retrieves the computer name of the current host"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \value{
#  Returns a @character string.
# }
#
# \details{
#  First, this function checks the system environment variables \code{HOST},
#  \code{HOSTNAME}, and \code{COMPUTERNAME}.
#  Second, it checks \code{Sys.info()["nodename"]} for host name details.
#  Finally, it tries to query the system command \code{uname -n}.
# }
#
# \seealso{
#   @seemethod "getUsername".
# }
#**/#######################################################################
setMethodS3("getHostname", "System", function(static, ...) {
  host <- Sys.getenv(c("HOST", "HOSTNAME", "COMPUTERNAME"));
  host <- host[host != ""];
  if (length(host) == 0) {
    # Sys.info() is not implemented on all machines, if not it returns NULL,
    # which the below code will handle properly.
    host <- Sys.info()["nodename"];
    host <- host[host != ""];
    if (length(host) == 0) {
      host <- readLines(pipe("/usr/bin/env uname -n"));
    }
  }
  host[1];
}, static=TRUE)


########################################################################/**
# @RdocMethod getUsername
#
# @title "Retrieves the name of the user running R"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \value{
#  Returns a @character string.
# }
#
# \details{
#  First, this function checks the system environment variables \code{USER},
#  and \code{USERNAME}.
#  Second, it checks \code{Sys.info()["user"]} for user name details.
#  Finally, it tries to query the system command \code{whoami}.
# }
#
# \seealso{
#   @seemethod "getHostname".
# }
#**/#######################################################################
setMethodS3("getUsername", "System", function(static, ...) {
  user <- Sys.getenv(c("USER", "USERNAME"));
  user <- user[user != ""];
  if (length(user) == 0) {
    # Sys.info() is not implemented on all machines, if not it returns NULL,
    # which the below code will handle properly.
    user <- Sys.info()["user"];
    user <- user[user != "" & user != "unknown"];
    if (length(user) == 0) {
      user <- readLines(pipe("/usr/bin/env whoami"));
    }
  }
  user[1];
}, static=TRUE)




###########################################################################/**
# @RdocMethod currentTimeMillis
#
# @title "Get the current time in milliseconds"
#
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \value{
#   Returns an @integer.
# }
#
# @author
#
# \seealso{
#   @see "base::Sys.time".
#   @see "base::proc.time".
#   @seeclass
# }
#*/###########################################################################
setMethodS3("currentTimeMillis", "System", function(this, ...) {
  secs <- as.numeric(Sys.time());
  times <- proc.time();
  time <- times[2];  # System CPU time

  # CPU time is not available on Win 98/Me;
  if (is.na(time))
    time <- times[3]; # Total elapsed times
  (secs + time %% 1)*1000;
}, static=TRUE);




###########################################################################/**
# @RdocMethod parseDebian
#
# @title "Parses a string, file or connection for Debian formatted parameters"
#
# @synopsis
#
# \arguments{
#   \item{text}{The text to be parsed. Default value is @NULL.}
#   \item{file}{Name file, a \code{File} object or connection to be parsed.
#     Default value is @NULL.}
#   \item{keys}{The keys (names of the parameters) to be retrieved.
#     If @NULL all fields are returned. Default value is @NULL.}
#
#  Either, \code{text} or \code{file} must be given.
# }
#
# \description{
#   Parses a text, file or a connection for Debian formatted parameters.
#   A file in Debian format contains rows with parameters of the form
#   \code{KEY=VALUE}. It is allowed to have duplicated keys.
# }
#
# \value{
#   Returns a named @list of parameter values.
# }
#
# \examples{
#  file <- file.path(Package("R.utils")$path, "DESCRIPTION")
#  l <- System$parseDebian(file=file)
#  print(l)
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("parseDebian", "System", function(this, text=NULL, file=NULL, keys=NULL, ...) {
  if (is.null(text) && is.null(file))
    throw("Either argument text or argument file must be specified.");

  # Retrieve the text to be parsed.
  if (is.null(text)) {
    file <- as.character(file);
    text <- scan(file=file, what="", sep="\n", quiet=TRUE);
    text <- paste(text, "", sep="");
  } else {
    text <- unlist(text);
    text <- strsplit(text, "\n");
    text <- unlist(text);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get the keys (names) and values of the parameters
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  nbrOfLines <- length(text);
  keyMatches <- regexpr("^[^:]*:", text);
  keyLines <- which(keyMatches == 1);
  keyLengths <- attr(keyMatches, "match.length")[keyLines]-1;
  pkeys <- substring(text[keyLines], 1, keyLengths);
  text[keyLines] <- substring(text[keyLines], keyLengths+2);
  valueNbrOfLines <- c(keyLines, 0) - c(0, keyLines);
  valueNbrOfLines <- valueNbrOfLines[-length(valueNbrOfLines)];
  valueNbrOfLines <- valueNbrOfLines[-1];
  len <- length(valueNbrOfLines);
  valueNbrOfLines[len+1] <- keyLines[len+1]-length(text)+1;
  values <- c();
  for (k in 1:length(keyLines)) {
    valueLines <- keyLines[k] + 1:valueNbrOfLines[k] - 1;
    value <- paste(text[valueLines], sep="", collapse="\n");
    values <- c(values, value);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Some cleanup of values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # 1. Replace all '\r' with '\n'.
  values <- gsub("\r", "\n", values);
  # 2. At the end of each line, remove all whitespaces and add a space.
  values <- gsub("[ \t]*\n", " \n", values);
  # 3. At the beginning of each line, remove all whitespaces.
  values <- gsub("\n[ \t]*", "\n", values);
  # 4. Replace all lines that contains a single '.' with '\r'.
  values <- gsub("\n[.] \n", "\n\r\n", values);
  values <- gsub("\n[.] \n", "\n\r\n", values);  # since we miss every second!
  # 4. Remove all '\n'.
  values <- gsub("\n", "", values);
  # 1. Replace all '\r' with '\n' (single '.' lines).
  values <- gsub("\r", "\n", values);
  # 4. Removes prefix whitespaces
  values <- gsub("^[ \t]", "", values);
  # 5. Removes suffix whitespaces
  # For some reason, the gsub below crashes once in a while, i.e. once every
  # 20:th time. Strange! But, I think I tracked it down to happen when one
  # of the strings in values has zero length. So, by making all zero length
  # strings equal to " " the gsub call won't crash. I think! /hb 2001-05-11
  values[nchar(values) == 0] <- " ";
  values <- gsub("[ \t]*$", "", values);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Return the wanted parameters
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(keys)) {
    parameters <- as.list(values);
    names(parameters) <- pkeys;
  } else {
    idx <- na.omit(match(keys, pkeys));
    parameters <- as.list(values[idx]);
    names(parameters) <- pkeys[idx];
  }

  parameters;
}, static=TRUE);




###########################################################################/**
# @RdocMethod openBrowser
#
# @title "Opens an HTML document using the OS default HTML browser"
#
# @synopsis
#
# \arguments{
#   \item{query}{The path to document to be opened by the browser.}
# }
#
# \description{
#  @get "title". Note that this
#  call is dependent on the operating system (currently only Windows and
#  Unix are supported).
#  The document given by \code{query} can either be a local file or a
#  web page. If the \code{query} was given as non-url string, i.e. as a
#  standard file pathname, the method will automatically check if the
#  file exists and conform the query to a correct url starting with
#  \code{file:}. The used url will be returned as a string.
#
#  Any suggestion how implement this on Apple system are welcome!
# }
#
# \value{
#   Returns the url of the \code{query}.
# }
#
# \details{
#   It is hard to create a good cross-platform \code{openBrowser()} method,
#   but here is one try.
#
#   In the following text \code{<browser>} is the value returned by
#   \code{getOption("browser")} and \code{<url>} is the URL conformed
#   query, which starts with either \code{file:} or \code{http:}.
#
#   On a \emph{Windows} system, if \code{<browser>} is not @NULL,
#   first
#
#     \code{shell.exec(<browser> <url>)}
#
#   is tried. If this fails, then
#
#     \code{shell.exec(<url>)}
#
#   is tried. Using this latter approach will \emph{not} guarantee that
#   an HTML browser will open the url, e.g. depending on the Windows file
#   associations, a \code{*.txt} file might be opened by NotePad. However,
#   it will most likely open something.
#   If \code{<browser>} contains spaces, make sure it is quoted.
#
#   On \emph{Unix} systems, \code{system()} will be used to call:
#
#   \code{ <browser> -remote "openURL(<url>)" 2> /dev/null || <browser> <url> &}
#
# }
#
# \examples{\dontrun{
#   System$openBrowser("http://www.r-project.org/")
# }}
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("openBrowser", "System", function(this, query, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  startsWith <- function(prefix, s, ...) {
    res <- regexpr(paste("^", prefix, sep=""), as.character(s));
    (res[[1]] != -1);
  }

  endsWith <- function(suffix, s, ...) {
    res <- regexpr(paste(suffix, "$", sep=""), as.character(s));
    (res[[1]] != -1);
  }

  url <- as.character(query);
  if (regexpr("^[abcdefghijklmnopqrstuvwxyz]+:", url) == -1) {
    # Assume we are dealing with a file
    file <- filePath(url);
    if (!file.exists(file))
      throw("File not found: ", file);
    url <- toUrl(file);
  }

  browser <- getOption("browser");
  if (!is.null(browser)) {
    # Check if 'browser' contains spaces, but the user forgot to quote it.
    if (regexpr(" ", browser) != -1) {
      if (regexpr("^\"", browser) == -1 || regexpr("\"$", browser) == -1) {
        browser <- paste("\"", browser, "\"", sep="");
        msg <- paste("getOption(\"browser\") contains spaces, but it is not quoted:", browser);
        warning(msg);
      }
    }
  }

  OST <- .Platform$OS.type;
  # ---------------------------------------------------------------------
  # W i n d o w s
  # ---------------------------------------------------------------------
  if (OST == "windows") {
    first <- 1;
    tmp <- tolower(url);

    if (is.null(browser) &&
      !startsWith(tmp, "http:") && !startsWith(tmp, "file:") &&
        !endsWith(tmp, ".html") && !endsWith(tmp, ".htm")) {
      first <- 2;
      msg <- paste("The extension of the URL might not be opened in a HTML browser on your Windows system: ", url, sep="");
      warning(msg);
    }

    if (first == 1) {
      # 1. Try to call <url>
      shell.exec(url);
    } else {
      # 2a. Try to call <browser> <url>
      loaded <- FALSE;
      if (!is.null(browser)) {
        # 2a.i.
        cmd <- paste(browser, url);
        res <- system(cmd, wait=FALSE);
        loaded <- (res == 0);
        if (!loaded) {
          # 2a.ii. Check if "start" exists, because that might help us
          start <- "start /minimized";
          tryCatch({
            system(start, intern=TRUE)
          }, error = function(ex) {
            start <<- NULL
          })
          cmd <- paste(start, browser, url);
          res <- system(cmd, wait=FALSE);
          loaded <- (res == 0);
        }
        if (!loaded) {
          warning("Could not find the browser specified in options(). Please make sure it is specified with the absolute path *and* if it contains spaces, it has to be quoted.");
        }
      }
      # 2b. Try to call <url>
      if (!loaded)
        shell.exec(url);
    }
  }
  # ---------------------------------------------------------------------
  # U n i x
  # ---------------------------------------------------------------------
  else if (OST == "unix") {
    if (is.null(browser))
       throw("options(\"browser\") not set.");
    # 1. Try to call <browser> -remote "openURL(<url>)", which opens the
    #    document in an already existing browser.
    cmd1 <- paste(browser, " -remote \"openURL(", url, ")\" 2>/dev/null", sep="");
    # 2. Try to call <browser> <url>, which opens the document in a new
    #    browser.
    cmd2 <- paste(browser, url);

    # If 1 fails, try 2.
    cmd  <- paste(cmd1, "||", cmd2);
    system(cmd);
  } else {
    throw("Don't know how to open the browser on", OST);
  }

  # Return the url, which was tried to be opened.
  invisible(url);
}, static=TRUE);


#########################################################################/**
# @RdocMethod findGhostscript
#
# @title "Searches for a Ghostview executable on the current system"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{updateRGSCMD}{If @TRUE and Ghostscript is found, then the system
#     environment variable @see "base::R_GSCMD" is set to the (first) path
#     found.}
#   \item{firstOnly}{If @TRUE, only the first executable is returned.}
#   \item{force}{If @TRUE, existing @see "base::R_GSCMD" is ignored,
#     otherwise not.}
#   \item{...}{Not used.}
# }
#
#
# \value{
#   Returns a @character @vector of full and normalized pathnames
#   where Ghostscript executables are found.
# }
#
# \examples{\dontrun{
#   print(System$findGhostscript())
# }}
#
# @author
#
# \references{
#  [1] \emph{How to use Ghostscript}, Ghostscript, 2013
#      \url{http://ghostscript.com/doc/current/Use.htm}\cr
#  [2] \emph{Environment variable}, Wikipedia, 2013.
#      \url{http://www.wikipedia.org/wiki/Environment_variable}\cr
#  [3] \emph{Environment.SpecialFolder Enumeration},
#      Microsoft Developer Network, 2013.
#      \url{http://msdn.microsoft.com/en-us/library/system.environment.specialfolder.aspx}\cr
# }
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("findGhostscript", "System", function(static, updateRGSCMD=TRUE, firstOnly=TRUE, force=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  isFileX <- function(pathname, ...) {
    if (length(pathname) == 0L) return(logical(0L));
    (nchar(pathname, type="chars") > 0L) & sapply(pathname, FUN=isFile);
  } # isFileX()

  isDirectoryX <- function(path, ...) {
    if (length(path) == 0L) return(logical(0L));
    (nchar(path, type="chars") > 0L) & sapply(path, FUN=isDirectory);
  } # isDirectoryX()

  findGSBySysEnv <- function(names=c("R_GSCMD"), ...) {
    pathnames <- Sys.getenv(names, "");
    pathnames <- pathnames[isFileX(pathnames)];
    pathnames;
  } # findGSBySysEnv()

  findGSByWhich <- function(names=c("gswin64c", "gswin32c", "gs"), ...) {
    pathnames <- Sys.which(names);
    pathnames <- pathnames[isFileX(pathnames)];
    pathnames;
  } # findGSByWhich()

  findGSOnWindows <- function(patterns=c("^gswin64c.exe$", "^gswin32c.exe$"), ...) {
    # (a) Look in "Program Files" directories
    paths <- Sys.getenv(c("ProgramFiles(X86)", "ProgramFiles", "Programs"));

    # (b) Look also in C:\ and %SystemDrive%
    paths <- c(paths, "C:", Sys.getenv("SystemDrive"))

    # (c) Drop non-existing directories
    paths <- unique(paths);
    paths <- paths[isDirectoryX(paths)];
    if (length(paths) == 0L) return(NULL);

    # Assume Ghostscript is installed under <path>\gs\
    paths <- file.path(paths, "gs");
    paths <- paths[isDirectoryX(paths)];
    if (length(paths) == 0L) return(NULL);

    # Now search each of the directories for Ghostscript executables
    pathnames <- NULL;
    for (pattern in patterns) {
      for (path in paths) {
        pathnamesT <- list.files(pattern=pattern, ignore.case=TRUE,
                                 path=path, recursive=TRUE, full.names=TRUE);
        pathnamesT <- pathnamesT[isFileX(pathnamesT)];
        pathnames <- c(pathnames, pathnamesT);
      } # for (path ...)
    } # for (pattern ...)

    pathnames;
  } # findGSOnWindows()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Check environment variable 'R_GSCMD'
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  pathnames <- findGSBySysEnv("R_GSCMD");
  if (!force && firstOnly && length(pathnames) > 0L) {
    return(pathnames[1L]);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Search for Ghostscript
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  OST <- .Platform$OS.type;
  if (OST == "windows") {
    # (1) Check environment variable 'GSC'
    pathnames <- findGSBySysEnv("GSC");
    # (2) Search executable on the system PATH
    pathnames <- c(pathnames, findGSByWhich(c("gswin64c", "gswin32c")));
    # (3) Search known Windows locations
    pathnames <- c(pathnames, findGSOnWindows());
  } else {
    # Search executable on the system PATH
    pathnames <- c(pathnames, findGSByWhich("gs"));
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Found Ghostscript?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Cleanup and normalize paths
  if (length(pathnames) > 0L) {
    pathnames <- unique(pathnames);
    pathnames <- normalizePath(pathnames);
  }

  # Return only first one found?
  if (firstOnly && length(pathnames) > 0L) {
    pathnames <- pathnames[1L];
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Update environment variable R_GSCMD?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (updateRGSCMD) {
    if (length(pathnames) > 0L) {
      pathnameT <- pathnames[1L];
      if (OST == "windows" && exists("shortPathName", mode="function")) {
        # To please R CMD check
        shortPathName <- NULL; rm(list="shortPathName");
        pathnameT <- shortPathName(pathnameT);
      }
      Sys.setenv("R_GSCMD"=pathnameT);
    } else {
      warning("R_GSCMD not set, because Ghostscript was not found.");
    }
  }

  pathnames;
}, static=TRUE)


#########################################################################/**
# @RdocMethod findGraphicsDevice
#
# @title "Searches for a working PNG device"
#
# \description{
#  @get "title".
#
#  On Unix, the png device requires that X11 is available, which it is not
#  when running batch scripts or running \R remotely.  In such cases, an
#  alternative is to use the \code{bitmap()} device, which generates an
#  EPS file and the uses Ghostscript to transform it to a PNG file.
#
#  Moreover, if identical looking bitmap and vector graphics (EPS) files
#  are wanted for the same figures, in practice, \code{bitmap()} has
#  to be used.
#
#  By default, this method tests a list of potential graphical devices and
#  returns the first that successfully creates an image file.
#  By default, it tries to create a PNG image file via the built-in
#  \code{png()} device.
# }
#
# @synopsis
#
# \arguments{
#   \item{devices}{A @list of graphics device driver @functions to be
#     tested.}
#   \item{maxCount}{The maximum number of subsequent tests for the
#     the existances of \code{bitmap()} generated image files.}
#   \item{sleepInterval}{The time in seconds between above subsequent
#     tests.}
#   \item{findGhostscript}{If @TRUE, Ghostscript, which is needed by
#     the \code{bitmap()} device, is searched for on the current system.
#     If found, its location is recorded.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @function that generates images, or @NULL.
# }
#
# @author
#
# \examples{
#   fcn <- System$findGraphicsDevice();
#   if (identical(fcn, png)) {
#     cat("PNG device found: png()");
#   } else if (identical(fcn, bitmap)) {
#     cat("PNG device found: bitmap()");
#   } else {
#     cat("PNG device not found.");
#   }
# }
#
# \seealso{
#   For supported graphical devices, see @see "capabilities".
#   @see "grDevices::png",
#   \code{bitmap()} and @see "grDevices::dev2bitmap".
#   @seemethod "findGhostscript".
#   @seeclass
# }
#
# @keyword device
#*/#########################################################################
setMethodS3("findGraphicsDevice", "System", function(static, devices=list(png), maxCount=100, sleepInterval=0.1, findGhostscript=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'devices':
  devices <- as.list(devices);
  for (device in devices) {
    if (!is.function(device)) {
      throw("Argument 'devices' specifies a non-function element: ",
                                                              mode(device));
    }
  }

  # Argument 'maxCount':
  maxCount <- Arguments$getInteger(maxCount, range=c(1,Inf));

  # Argument 'sleepInterval':
  sleepInterval <- Arguments$getDouble(sleepInterval, range=c(0,60));

  # Argument 'findGhostscript':
  findGhostscript <- Arguments$getLogical(findGhostscript);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Check for a valid ghostscript installation
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (findGhostscript)
    System$findGhostscript();

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Temporary output file for testing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  file <- tempfile("findGraphicsDevice-testFile");
  on.exit({
    if (file.exists(file)) {
      file.remove(file);
    }
  })


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Find the first functional device
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (device in devices) {
    # Check capabilities
    if (identical(device, png)) {
      if (!capabilities("png"))
        next;
    }

    if (identical(device, jpeg)) {
      if (!capabilities("jpeg"))
        next;
    }

    tryCatch({
      device(file);
      plot(0);
      dev.off();

      # The following wait-and-poll code is typically only necessary for
      # the bitmap() device since it calls Ghostscript, which is called
      # without waiting for it to finish.  The default is to poll for the
      # dummy image file for 10 seconds in intervals of 0.1 seconds.
      # If not found by then, the device is considered not to be found.
      # Hopefully, this is never the case.
      count <- 0L;
      while (count < maxCount) {
        if (file.exists(file)) {
          size <- file.info2(file)$size;
          if (!is.na(size) && size > 0L) {
            return(device);
          }
        }
        Sys.sleep(sleepInterval);
        count <- count + 1L;
      }
    }, error = function(error) {
    });
  } # for (device in ...)

  NULL;
}, static=TRUE)


setMethodS3("mapDriveOnWindows", "System", function(static, drive, path=getwd(), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  isWindowsUncPath <- function(path, ...) {
    (regexpr("^(//|\\\\)", path) != -1L);
  } # isWindowsUncPath()

  getWindowsDrivePattern <- function(fmtstr, ...) {
    # Windows drive letters
    drives <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    # Support also lower case
    drives <- paste(c(drives, tolower(drives)), collapse="");
    sprintf(fmtstr, drives);
  } # getWindowsDrivePattern()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'drive':
  drive <- Arguments$getCharacter(drive, length=c(1L,1L), nchar=2L);
  pattern <- getWindowsDrivePattern("[%s]:");
  if (regexpr(pattern, toupper(drive)) == -1L) {
    drive0 <- drive;
    # Add a colon, in case user forgot
    drive <- sprintf("%s:", drive);
    if (regexpr(pattern, toupper(drive)) == -1L) {
      throw("Argument 'drive' is not a valid drive (e.g. 'Y:'): ", drive0);
    }
  }

  # Argument 'path':
  if (isWindowsUncPath(path)) {
    path <- gsub("\\", "/", path, fixed=TRUE);
    # Network drives cannot have trailing slashes
    path <- gsub("[/\\\\]*$", "", path);
  } else {
    path <- Arguments$getReadablePath(path, mustExist=TRUE);
  }

  # New path, if successful
  newPath <- sprintf("%s/", drive);

  # Already mapped?
  mapped <- System$getMappedDrivesOnWindows();
  mappedTo <- mapped[drive];
  if (!is.na(mappedTo)) {
    if (!isWindowsUncPath(path)) {
      mappedTo <- Arguments$getReadablePath(mappedTo);
    }
    if (path != mappedTo) {
      throw(sprintf("Drive letter %s is already mapped to another path ('%s'), which is different from the requested one: %s", drive, mappedTo, path));
    }

    # If mapped to the same path, nothing to do
    return(invisible(newPath));
  }

  # UNC paths should be mapped by 'net',
  # cf. http://support.microsoft.com/kb/218740
  if (isWindowsUncPath(path)) {
    # Map using 'net use', which:
    #  (i) only recognized backslashes
    pathT <- gsub("/", "\\", path, fixed=TRUE);
    cmd <- sprintf("net use %s \"%s\"", toupper(drive), pathT);
    res <- system(cmd, intern=FALSE);
    if (res != 0L) {
      res <- "???";
      throw(sprintf("Failed to map drive '%s' to path '%s': %s (using '%s')",
                                                     drive, path, res, cmd));
    }
  } else {
    # Map using 'subst'
    cmd <- sprintf("subst %s \"%s\"", toupper(drive), path);
    res <- system(cmd, intern=TRUE);
    if (length(res) > 0L) {
      throw(sprintf("Failed to map drive '%s' to path '%s': %s (using '%s')",
                                                     drive, path, res, cmd));
    }
  }


  # Return new path
  invisible(newPath);
}, static=TRUE)



setMethodS3("unmapDriveOnWindows", "System", function(static, drive, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  isWindowsUncPath <- function(path, ...) {
    (regexpr("^(//|\\\\)", path) != -1L);
  } # isWindowsUncPath()

  getWindowsDrivePattern <- function(fmtstr, ...) {
    # Windows drive letters
    drives <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    # Support also lower case
    drives <- paste(c(drives, tolower(drives)), collapse="");
    sprintf(fmtstr, drives);
  } # getWindowsDrivePattern()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'drive':
  drive <- Arguments$getCharacter(drive, length=c(1L,1L), nchar=2L);
  pattern <- getWindowsDrivePattern("[%s]:");
  if (regexpr(pattern, toupper(drive)) == -1L) {
    drive0 <- drive;
    # Add a colon, in case user forgot
    drive <- sprintf("%s:", drive);
    if (regexpr(pattern, toupper(drive)) == -1L) {
      throw("Argument 'drive' is not a valid drive (e.g. 'Y:'): ", drive);
    }
  }

  # Get old paths
  maps <- getMappedDrivesOnWindows(static);
  oldPath <- maps[toupper(drive)];
  if (is.na(oldPath)) {
    return(invisible(NULL));
  }

  # Unmap
  if (isWindowsUncPath(oldPath)) {
    # Unmap using 'net use'
    cmd <- sprintf("net use /delete \"%s\"", toupper(drive));
    res <- system(cmd, intern=FALSE);
    if (res != 0L) {
      res <- "???";
      throw(sprintf("Failed to unmap drive '%s': %s (using '%s')",
                                                     drive, res, cmd));
    }
  } else {
    # Unmap using 'subst'
    cmd <- sprintf("subst \"%s\" /D", toupper(drive));
    res <- system(cmd, intern=TRUE);
    if (length(res) > 0L) {
      throw(sprintf("Failed to unmap drive '%s': %s (using '%s')",
                                                     drive, res, cmd));
    }
  }

  # Return old path
  invisible(oldPath);
}, static=TRUE)


setMethodS3("getMappedDrivesOnWindows", "System", function(static, ...) {
  # (1) By 'subst'
  mounts <- system("subst", intern=TRUE);
  pattern <- "^(.:).*[ ]*=>[ ]*(.*)[ ]*";
  drives <- gsub(pattern, "\\1", mounts);
  paths <- gsub(pattern, "\\2", mounts);
  paths <- trim(paths);
  names(paths) <- drives;
  paths1 <- paths;

  # (1) By 'net use'
  mounts <- system("net use", intern=TRUE);
  pattern <- "^(.*)[ ]+(.:)[ ]+(.*)[ ]+(.*)$";
  mounts <- grep(pattern, mounts, value=TRUE);
  drives <- gsub(pattern, "\\2", mounts);
  paths <- gsub(pattern, "\\3", mounts);
  paths <- trim(paths);
  names(paths) <- drives;
  paths2 <- paths;

  paths <- c(paths1, paths2);

  # Standardize
  paths <- gsub("\\", "/", paths, fixed=TRUE);

  # Order by drive letters
  if (length(paths) > 1L) {
    o <- order(names(paths));
    paths <- paths[o];
  }

  paths;
}, static=TRUE)


############################################################################
# HISTORY:
# 2013-10-30
# o BUG FIX: System$getMappedDrivesOnWindows() failed to return the
#   proper path for 'net use' mounted drives, iff the path contained
#   spaces.
# 2013-07-30
# o ROBUSTNESS/BUG FIX: System$findGraphicsDevice() could still give
#   errors.  Completely rewrote how Ghostscripts is searched.  On Windows,
#   environment variable 'GSC' is now also searched.
#   Thanks to Brian Ripley for the feedback.
# 2013-07-29
# o BUG FIX: System$findGraphicsDevice() would give "Error in
#   pathname[sapply(pathname, FUN = isFile)]: invalid subscript type 'list'"
#   if no device was found.
# 2013-07-27
# o On Windows, System$findGhostscript() sets R_GSCMD as shortPathName().
# o Added arguments 'firstOnly' and 'force' to System$findGhostscript().
# o Now System$findGhostscript() also searches for 'gswin64c.exe' in
#   addition to 'gswin32c.exe' on Windows.  It also utilizes Sys.which().
# 2012-07-10
# o  System$findGraphicsDevice() no longer tries to create a PNG device
#    using png2(), because that has now moved to R.devices.
# 2012-01-17
# o ROBUSTNESS: Now System$findGraphicsDevice() not only assert that
#   an image file is generated, but also that its filesize is non-zero.
#   This avoids returning devices that generates empty image files.
#   Also updated the time out to 10 secs (was 30 secs).
# 2011-09-19
# o Now System$getMappedDrivesOnWindows() always returns paths with
#   forward slashes and handles drive letters mapped by both 'subst'
#   and 'net use'.
# o Now System$mapDriveOnWindows() can also map Windows UNC path
#   (i.e. network resource).  This was triggered by a discussion with
#   Keith Jewell at Campden BRI Group, UK.
# o Now System$mapDriveOnWindows() and System$unmapDriveOnWindows()
#   accept drive letters with or without the trailing colon, e.g.
#   "C:" as well as "C".
# 2010-11-19
# o ROBUSTNESS: Now System$mapDriveOnWindows() does not give an error
#   if trying to map the same drive letter to the same path multiple times.
# o BUG FIX: System$mapDriveOnWindows() and System$unmapDriveOnWindows()
#   did not work if the path contained a space.  Now the path is quoted.
# 2010-01-06
# o Added System$mapDriveOnWindows(), System$unmapDriveOnWindows(), and
#   System$getMappedDrivesOnWindows().
# 2007-06-09
# o BUG FIX: Used omit.na() instead of na.omit() in static method
#   parseDebian() of System.
# 2007-04-12
# o BUG FIX: findGhostscript() would give error "paste(path0, collapse = ",
#   ") : object "path0" not found" on Windows if Ghostscript was not found.
# 2007-04-11
# o BUG FIX: findGhostscript() would give error on "invalid subscript type"
#   if non of the paths to be searched exist.
# 2007-04-07
# o Removed never needed require(R.io) in openBrowser() for System.
# 2007-01-22
# o Replaced Sys.putenv() with new Sys.setenv().
# 2007-01-10
# o Now findGhostscript() searches all 'Program Files' directories too, if
#   on Windows.
# 2005-12-12
# o Updated getHostname() and getUsername() in System to check details also
#   using Sys.info().
# 2005-09-23
# o BUG FIX: openBrowser() was broken, because startsWith() and endsWith()
#   were missing.
# 2005-09-18
# o Renamed findPngDevice() to findGraphicsDevice(), but it still defaults
#   to search for a PNG device.
# o Added arguments 'maxCount', 'sleepInterval' and 'findGhostscript' to
#   findPngDevice().
# 2005-09-16
# o Added static findPngDevice() to System.
#   Added argument 'devices' to findPngDevice() so it is possible to
#   specify in which order PNG devices should be tested.  Now bitmap() and
#   png() is tested by default.
# 2005-07-18
# o Example for parseDebian() used package R.lang. Fixed.
# 2005-05-29
# o Removed many unecessary (never used) methods and fields from the class:
#   fields 'inn', 'err' and 'out' with corresponding methods setIn(),
#   setErr() and setOut(). In addition, indentityHashCode() getenv(), gc(),
#   exit(), stop(), getProperties(), and getProperty() were removed.
# o Moved System from R.lang to R.utils.
# 2005-03-07
# o Added static method findGhostscript().
# 2004-07-25
# o Added getUsername() and getHostname(). This was formerly in
#   R.jobs::Jobs, but is better suited here.
# 2003-04-16
# o Updated the Rdocs.
# 2003-04-15
# o Updated openBrowser() to accept any protocols such as mailto: etc.
#   Note that an URL can only be 256 characters long.
# 2002-12-07
# o Added a test for "file://" (similar to "http://") to openBrowser() when
#   called on a Windows system.
# 2002-05-21
# * BUG FIX: In openBrowser() the system() call under Unix does not contain
#   a 'wait' argument!
# 2002-03-29
# * Updated openBrowser() to be somewhat smarter by using 'start' as a
#   third alternative for Windows systems.
# 2002-03-26
# * BUG FIX: Forgot some debug code in openBrowser(), which made the
#   function to fail on non Unix systems.
# 2002-03-08
# * Added Rdoc for class, getenv() and parseDebian().
# * Made <browser> more bullit-proof. If it is not quoted, but needs to be,
#   it is fixed and a warning is given.
# * If 'browser' is set in options() and it is found, system() will also
#   be used for Windows, otherwise system.exec(). The reason for this is
#   that file with "incorrect" extension, e.g. *.txt might be loaded by
#   NotePad instead of Netscape or Internet Explorer.
# 2002-03-07
# * Added openBrowser(), whose main part was written by Robert Gentleman.
#   I added the code which assert that the url is a correct url; this makes
#   use of the File class.
# 2002-03-06
# * Rewritten to make use of setMethodS3()'s.
# * Removed obsolete getInternalReferences()
# 2001-06-07
# * Added some Rdoc comments.
# 2001-05-14
# * Added getInternalReferences() for improving gco() performance.
# 2001-05-09
# * Added parseDebian(). Replaces parse.dcf() which does not work correctly.
# 2001-05-04
# * Now supports formal attributes.
# 2001-05-02
# * Added user.dir to properties.
# 2001-05-01
# * Added getenv().
# * made currentTimeMillis() using Sys.time().
# * Added R.home and R.class.path to the properties.
# 2001-04-30
# * Added setErr(), setIn(), exit(), gc(), and currentTimeMillis().
# 2001-04-29
# * Created.
############################################################################
