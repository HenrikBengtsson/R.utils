###########################################################################/**
# @RdocClass Settings
#
# @title "Class for applicational settings"
#
# \description{
#  @classhierarchy
#
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{basename}{A @character string of the basename of the settings file.}
#   \item{...}{Arguments passed to constructor of superclass \link{Options}.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# \section{Load settings with package and save on exit}{
#  Here is a generic \code{.First.lib()} function for loading settings
#  with package. It also (almost) assures that the package is detached
#  when R finishes. See @see "onSessionExit" why it is not guaranteed!
#
#  The almost generic \code{.Last.lib()} function, which will prompt
#  user to save settings, is called when a package is detached.
#
#  It is custom to put these functions in a file named \code{zzz.R}.
#
#  \bold{.First.lib():}
#  \preformatted{
#   .First.lib <- function(libname, pkgname) {
#     # Write a welcome message when package is loaded
#     pkg <- Package(pkgname);
#     assign(pkgname, pkg, pos=getPosition(pkg));
#
#     # Read settings file ".<pkgname>Settings" and store it in package
#     # variable '<pkgname>Settings'.
#     varname <- paste(pkgname, "Settings");
#     basename <- paste(".", varname, sep="");
#     settings <- Settings$loadAnywhere(basename, verbose=TRUE);
#     if (is.null(settings))
#       settings <- Settings(basename);
#     assign(varname, settings, pos=getPosition(pkg));
#
#     # Detach package when R finishes, which will save package settings too.
#     onSessionExit(function(...) detachPackage(pkgname));
#
#     packageStartupMessage(getName(pkg), " v", getVersion(pkg),
#         " (", getDate(pkg), ") successfully loaded. See ?", pkgname,
#         " for help.\n", sep="");
#   } # .First.lib()
#  }
#
#  \bold{.Last.lib():}
#  \preformatted{
#   .Last.lib <- function(libpath) {
#     pkgname <- "<package name>";
#
#     # Prompt and save package settings when package is detached.
#     varname <- paste(pkgname, "Settings", sep="");
#     if (exists(varname)) {
#       settings <- get(varname);
#       if (inherits(settings, "Settings"))
#         promptAndSave(settings);
#     }
#   } # .Last.lib()
#  }
# }
#
# @examples "../incl/Settings.Rex"
#
# @author
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("Settings", function(basename=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'basename':
  if (!is.null(basename)) {
    basename <- as.character(basename);
  }

  extend(Options(...), "Settings",
    .basename = basename,
    .loadedPathname = NULL
  )
})




###########################################################################/**
# @RdocMethod getLoadedPathname
#
# @title "Gets the pathname of the settings file loaded"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns the absolute pathname (@character string) of the settings file
#   loaded. If no file was read, @NULL is returned.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("getLoadedPathname", "Settings", function(this, ...) {
  this$.loadedPathname;
})



###########################################################################/**
# @RdocMethod isModified
#
# @title "Checks if settings has been modified compared to whats on file"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if settings have been modified since lasted loaded, or if
#   they never have been loaded. Otherwise @FALSE is returned.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("isModified", "Settings", function(this, ...) {
  file <- getLoadedPathname(this);
  if (is.null(file))
    return(FALSE);

  settingsOnFile <- Settings$load(file);
  !equals(this, settingsOnFile);
})



###########################################################################/**
# @RdocMethod findSettings
#
# @title "Searches for the settings file in one or several directories"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{basename}{A @character string of the basename of the settings file.}
#  \item{paths}{A @vector of @character string specifying the directories to
#    be searched.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns the absolute pathname (@character string) of the first settings
#   file found, otherwise @NULL.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("findSettings", "Settings", function(static, basename, paths=c(".", "~"), ...) {
  # Search for the settings file
  for (path in paths) {
    pathname <- filePath(path, basename);
    if (file.exists(pathname))
      return(pathname);
  }

  return(NULL);
}, static=TRUE)



#########################################################################/**
# @RdocMethod saveAnywhere
#
# @title "Saves settings to file"
#
# \description{
#  @get "title". If the settings was read from file, they are by default
#  written back to the same file. If this was not the case, it defaults
#  to the settings file in the home directory of the current user.
# }
#
# @synopsis
#
# \arguments{
#   \item{file}{A @character string or a @connection where to write too.
#      If @NULL, the file from which the settings were read is used. If
#      this was not the case, argument \code{path} is used.}
#   \item{path}{The default path, if no settings files are specified.
#      This defaults to the current user's home directory.}
#   \item{...}{Arguments passed to
#      \code{\link[R.oo:save.Object]{save}()} in superclass Object.}
# }
#
# \value{
#   Returns (invisibly) the pathname to the save settings file.
# }
#
# @author
#
# \seealso{
#   @seemethod "loadAnywhere".
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("saveAnywhere", "Settings", function(this, file=NULL, path="~", ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'path':
  path <- as.character(path);
  if (!isDirectory(path))
    throw("Argument 'path' is not a directory: ", path);

  # Get file location
  if (is.null(file))
    file <- this$.loadedPathname;
  if (is.null(file))
    file <- filePath(path, this$.basename);

  # Save Object
  save(this, file=file, ...);

  invisible(file);
})



#########################################################################/**
# @RdocMethod loadAnywhere
#
# @title "Loads settings from file"
#
# \description{
#  @get "title". If the settings was read from file, they are by default
#  written back to the same file. If this was not the case, it defaults
#  to the settings file in the home directory of the current user.
# }
#
# @synopsis
#
# \arguments{
#   \item{file}{A @character string or a @connection from which settings
#      should be read. If @NULL, the settings file is searched for by
#      @seemethod "findSettings".}
#   \item{...}{Arguments passed to @seemethod "findSettings".}
#   \item{verbose}{If @TRUE, verbose information is written while reading,
#      otherwise not.}
# }
#
# \value{Returns a \link{Settings} object if file was successfully read,
#   otherwise @NULL.}
#
# @author
#
# \seealso{
#   @seemethod "saveAnywhere".
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("loadAnywhere", "Settings", function(static, file=NULL, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'file':
  if (is.null(file)) {
    file <- static$.basename;
  }

  if (inherits(file, "connection")) {
  } else {
    file <- as.character(file);
    if (!file.exists(file)) {
      file <- findSettings(static, basename=file, ...);
      if (is.null(file))
        return(NULL);
    }
  }

  settings <- NULL;
  tryCatch({
    settings <- Settings$load(file=file);
    settings$.loadedPathname <- getAbsolutePath(file);
    if (verbose) {
      message("Loaded settings: ", file, " (",
               format(lastModified(file), "%Y-%m-%d %H:%M:%S"), ")");
    }
  }, error = function(ex) {
    if (verbose)
      message("Failed to load settings: ", file);
  })

  settings;
})


#########################################################################/**
# @RdocMethod promptAndSave
#
# @title "Prompt user to save modified settings"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{saveOption}{A @character string of the option used to set
#      if user is prompted or not.}
#   \item{...}{Arguments passed to @see "saveAnywhere".}
# }
#
# \value{
#   Returns @TRUE if settings were successfully written to file,
#   otherwise @FALSE is returned. An exception may also be thrown.
# }
#
# \details{
#   If settings has been modified since loaded, the user is by default
#   prompted to save the settings (if \R runs interactively).
#   To save or not save without asking or when \R runs non-interactively,
#   set option \code{"saveSettings"} to "yes" or "no", respectively.
#   For prompting the user, use "prompt".
# }
#
# @author
#
# \seealso{
#   @seemethod "isModified".
#   @see "base::interactive".
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("promptAndSave", "Settings", function(this, saveOption="saveSettings", settingsName=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'saveOption':
  saveOption <- as.character(saveOption);
  if (length(saveOption) != 1) {
    throw("Argument 'saveOption' should be a single character string: ",
                                       paste(saveOption, collapse=", "));
  }

  # Check if settings have been updated since last read.
  if (!isModified(this))
    return(invisible(FALSE));

  answer <- getOption(this, saveOption, "prompt");
  if (answer == "prompt" && interactive()) {
    # Prompt user...
    msg <- "Do you wish to save modified";
    if (!is.null(settingsName))
      msg <- paste(msg, settingsName);
    msg <- paste(msg, "settings?");
    msg <- paste(msg, "[y/N]: ");

    answer <- readline(msg);
    answer <- tolower(answer);
    neverAskAgain <- (regexpr("!$", answer) != -1);
    if (neverAskAgain) {
      answer <- gsub("!$", "", answer);
      if (answer %in% c("y", "yes")) {
        answer <- "yes";
      } else {
        answer <- "no";
      }
      setOption(this, saveOption, answer);
    }
  }

  if (answer %in% c("y", "yes")) {
    saveAnywhere(this, ...);
    invisible(TRUE);
  } else {
    invisible(FALSE);
  }
})



############################################################################
# HISTORY:
# 2013-04-18
# o Now the verbose output of loadAnywhere() for Settings is sent
#   to standard error (was standard output).
# 2006-02-22
# o saveAnywhere() now returns the pathname where the settings were saved.
# o Rdoc: Fixed a missing link in saveAnywhere().
# 2005-10-20
# o Update loadAnywhere() so that it works on objects too for which the
#   default basename is the static basename.
# 2005-06-11
# o Added last modified date in loading message.
# 2005-06-01
# o Added isModified().
# o Added Rdoc comments.
# 2005-05-31
# o Created.
############################################################################
