########################################################################/**
# @RdocDefault patchCode
#
# @title "Patches installed and loaded packages and more"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#   \item{paths}{The path to the directory (and subdirectories) which
#      contains source code that will patch loaded packages.
#      If @NULL, the patch path is given by the option \code{R_PATCHES},
#      If the latter is not set, the system environment with the same name
#      is used. If neither is given, then \code{~/R-patches/} is used.}
#   \item{recursive}{If @TRUE, source code in subdirectories will also
#      get loaded. }
#   \item{suppressWarnings}{If @TRUE, @warnings will be suppressed,
#      otherwise not.}
#   \item{knownExtensions}{A @character @vector of filename extensions
#      used to identify source code files. All other files are ignored.}
#   \item{verbose}{If @TRUE, extra information is printed while patching,
#      otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the number of files sourced.
# }
#
# \details{
#   The method will look for source code files (recursively or not) that
#   match known filename extensions. Each found source code file is
#   then @see "base::source"d.
#
#   If the search is recursive, subdirectories are entered if and only if
#   either (1) the name of the subdirectory is the same as a \emph{loaded}
#   (and installed) package, or (2) if there is no installed package
#   with that name. The latter allows common code to be organized in
#   directories although it is still not assigned to packages.
#
#   Each of the directories given by argument \code{paths} will be
#   processed one by one. This makes it possible to have more than one
#   file tree containing patches.
#
#   To set an options, see @see "base::options". To set a system
#   environment, see @see "base::Sys.setenv".
#   The character \code{;} is interpreted as a separator. Due to
#   incompatibility with Windows pathnames, \code{:} is \emph{not} a
#   valid separator.
# }
#
# \examples{\dontrun{
#   # Patch all source code files in the current directory
#   patchCode(".")
#
#   # Patch all source code files in R_PATCHES
#   options("R_PATCHES"="~/R-patches/")
#   # alternatively, Sys.setenv("R_PATCHES"="~/R-patches/")
#   patchCode()
# }}
#
# @author
#
# \seealso{
#  @see "base::source".
#  @see "base::library".
# }
#
# @keyword "utilities"
# @keyword "programming"
#*/#########################################################################
setMethodS3("patchCode", "default", function(paths=NULL, recursive=TRUE, suppressWarnings=TRUE, knownExtensions=c("R","r","S","s"), verbose=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(paths)) {
    paths <- getOption("R_PATCHES");
    if (is.null(paths)) {
      paths <- Sys.getenv("R_PATCHES");
      if (is.null(paths)) {
        paths <- "~/R-patches/";
      }
    }
  }
  paths <- as.character(paths);
  paths <- unlist(strsplit(paths, split="[;]"));
  if (is.null(paths) || length(paths) == 0 || identical(paths, "")) {
    paths <- ".";
  }

  # Number of files sourced.
  count <- 0;

  # Loaded packages
  loadedPackages <- gsub("package:", "", search()[-1]);

  # Installed packages
#    installedPackages <- library()$results[,"Package"];  # Too slow!
  installedPackages <- NULL;
  for (libpath in .libPaths())
    installedPackages <- c(installedPackages, list.files(libpath));

  # Regular expression to match source code files.
  pattern <- paste(knownExtensions, collapse="|");
  pattern <- paste("\\.(", pattern, ")$", collapse="", sep="");

#  if (verbose) {
#    message("Patch paths: ", paste(paths, collapse=", "));
#  }

  # For each path in the list of paths, ...
  for (path in paths) {
    # Get all files and directories in the current path
    pathnames <- list.files(path=path, full.names=TRUE);
    excl <- grep("patchAll.R", pathnames);
    if (length(excl))
      pathnames <- pathnames[-excl];

    # For each file or directory...
    for (pathname in pathnames) {
      isDirectory <- isDirectory(pathname);
      isSourceCodeFile <- (regexpr(pattern, pathname) != -1);

      if (!isDirectory && isSourceCodeFile) {
        # ...for each R source file...
        if (verbose)
          message("Patching ", pathname);
        if (suppressWarnings) {
          suppressWarnings(source(pathname));
        } else {
          source(pathname);
        }
        count <- count + 1;
      } else if (isDirectory && recursive) {
        # ...for each directory...
        pkgname <- basename(pathname);
        isPkgLoaded <- (pkgname %in% loadedPackages);
        isPkgInstalled <- (pkgname %in% installedPackages);
        if (isPkgLoaded || !isPkgInstalled) {
          if (verbose) {
            if (isPkgInstalled) {
              message("Loaded and installed package found: ", pkgname);
            } else {
              message("Non-installed package found: ", pkgname);
            }
          }
          count <- count + patchCode(pathname, recursive=recursive,
                     suppressWarnings=suppressWarnings,
                     knownExtensions=knownExtensions, verbose=verbose);
        } else {
          if (verbose)
            message("Ignore non-loaded package: ", pkgname);
        }
      }
    } # for (pathname in pathnames)
  } # for (path in paths)

  # Return nothing.
  invisible(count);
}) # patchCode()


###########################################################################
# HISTORY:
# 2014-01-06
# o CLEANUP: Now patchCode() uses isDirectory() instead of file.info().
# 2005-02-20
# o Added '...' to please R CMD check.
# 2005-01-22
# o Moved into R.basic. Added Rdoc comments. Now looking for system
#   environment variable R_PATCHES as the default patch path.
# 2004-07-12
# o Added argument 'verbose'.
# 2004-05-22
# o Recreated from memory after HDD crash. Instead of using library() to
#   get all installed packages it is faster to list all files in the
#   .libPaths(). This is good enough for this "patch all" script.
# o Argh. HDD crash on my laptop. Totally dead! Impossible to restore
#   anything. I think I can recover most stuff from backups, but not
#   everything.
###########################################################################
