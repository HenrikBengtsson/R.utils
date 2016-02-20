#########################################################################/**
# @RdocDefault installPackages
#
# @title "Install R packages by name or URL"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pkgs}{A @character @vector specifying the names and/or the URLs
#     of the R packages to be installed.}
#   \item{types}{A @character @vector of corresponding package types.}
#   \item{repos}{A @character @vector of package repository URLs.}
#   \item{...}{Additional arguments passed to @see "utils::install.packages".}
#   \item{destPath}{Path where any downloaded files are saved.}
#   \item{cleanup}{If @TRUE, downloaded and successfully installed package
#     files are removed, otherwise not.}
# }
#
# \value{
#   Returns nothing.
# }
#
# \section{Limitations}{
#   This method cannot install any packages that are already in use.
#   Certain packages are always in use when calling this method, e.g.
#   \pkg{R.methodsS3}, \pkg{R.oo}, and \pkg{R.utils}.
# }
#
# \examples{\dontrun{
#  installPackages("R.rsp")
#  installPackages("http://cran.r-project.org/src/contrib/Archive/R.rsp/R.rsp_0.8.2.tar.gz")
#  installPackages("http://cran.r-project.org/bin/windows/contrib/r-release/R.rsp_0.9.17.zip")
# }}
#
# @author
#
# @keyword file
#*/#########################################################################
setMethodS3("installPackages", "default", function(pkgs, types="auto", repos=getOption("repos"), ..., destPath=".", cleanup=TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pkgs':
  pkgs <- Arguments$getCharacters(pkgs);

  # Argument 'types':
  types <- Arguments$getCharacters(types);

  # Argument 'repos':
  if (!is.null(repos)) {
    repos <- Arguments$getCharacters(repos);
  }

  # Argument 'destPath':
  destPath <- Arguments$getWritablePath(destPath);

  # Argument 'cleanup':
  cleanup <- Arguments$getLogical(cleanup);



  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Infer 'type' for each package
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  defType <- getOption("pkgType");
  types <- rep(types, length.out=length(pkgs));
  for (kk in seq_along(pkgs)) {
    if (types[kk] == "auto") {
      pkg <- pkgs[kk];
      if (isUrl(pkg)) {
        filename <- basename(pkg);
        ext <- gsub("(.*)[.](tar.gz|tgz|zip)$", "\\2", tolower(filename));
        if (ext == "tar.gz") {
          types[kk] <- "source";
        } else if (ext == "tgz") {
          types[kk] <- "mac.binary.leopard";
        } else if (ext == "zip") {
          types[kk] <- "win.binary";
        } else {
          throw("Cannot install R package. Unknown filename extension: ", pkg);
        }
      } else {
        types[kk] <- defType;
      }
    }
  } # for (kk ...)


  # Install each package requested
  for (kk in seq_along(pkgs)) {
    pkg <- pkgs[kk];
    type <- types[kk];

    if (isUrl(pkg)) {
      url <- pkg;
      filename <- basename(url);

      # Download file
      pathname <- filePath(destPath, filename);
      downloadFile(url, filename=pathname, skip=TRUE);
      if (!isFile(pathname)) {
        throw("Failed to download package file: ", url);
      }

      install.packages(pathname, repos=NULL, type=type, ...);

      if (cleanup) {
        file.remove(pathname);
        if (isFile(pathname)) {
          throw("Failed to remove package file after installation: ", pathname);
        }
      }
    } else {
      install.packages(pkg, repos=repos, type=type, ...);
    }
  } # for (kk ...)

  invisible();
}) # installPackages()



###############################################################################
# HISTORY:
# 2013-10-13
# o CLEANUP: installPackages() no longer attaches 'R.utils'.
# 2013-08-27
# o BUG FIX: The exception thrown by installPackages() for unknown
#   filename extensions would itself generate an error.
# o DOCUMENTATION: Rdoc comments were not recognized.
# 2013-07-03
# o Now installPackages() may also install from https URLs.  This was
#   achieved but using the package isUrl() rather than a local one.
# 2011-09-30
# o Added installPackages(url, ..., types="auto") for auto-setting of
#   the file type given the file extension of the URL.
# o Created from hbLite.R script.  Moved to R.utils.  The idea is that
#   hbLite() will install/update R.utils and then utilize this method.
#
# HISTORY from hbLite.R:
# 2008-12-02
# o BUG FIX: Some download.file() were not explicitly set to mode="wb".
# 2008-05-22
# o Added installPackages(), which can install packages by their URLs.
###############################################################################
