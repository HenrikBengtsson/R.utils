###########################################################################/**
# @RdocDefault use
#
# @title "Attaches or loads a package"
#
# \description{
#  @get "title".
#  If not installed, it will be installed from one of the package repositories.
# }
#
# @synopsis
#
# \arguments{
#  \item{pkg}{A @character string specifying the package to be used.}
#  \item{how}{A @character string specifying whether the package should be attached or loaded.}
#  \item{quietly}{If @TRUE, minimial or no messages are reported.}
#  \item{warn.conflicts}{If @TRUE, warnings on namespace conflicts are reported, otherwise not.}
#  \item{version}{(optional) Requested package version constraint.}
#  \item{repos}{(optional) A @character @vector specifying where to install the package from if not already installed.}
#  \item{install}{If @TRUE and the package is not installed or an too old version is installed, then tries to install a newer version, otherwise not.}
#  \item{...}{Additional arguments passed to @see "base::require" or
#    @see "base::requireNamespace".}
#  \item{verbose}{If @TRUE, verbose output is generated (regardless
#    of \code{quietly}).}
# }
#
# \value{
#  Returns the version of the attached/loaded package.
# }
#
# \seealso{
#   @see "base::library" and "base::install.packages".
# }
#
# @keyword programming
# @keyword utilities
# @keyword internal
#*/###########################################################################
setMethodS3("use", "default", function(pkg, version=NULL, how=c("attach", "load"), quietly=TRUE, warn.conflicts=!quietly, install=TRUE, repos=NULL, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  installPkg <- function(pkg, version=NULL, repos=NULL, type=getOption("pkgType"), ..., quietly=FALSE, verbose=FALSE) {
    verbose && enter(verbose, "Trying to install package");

    cat(verbose, "Repositories: ", paste(sQuote(repos), collapse=", "));

    if (!is.null(repos)) {
      isUrl <- sapply(repos, FUN=isUrl);
      if (!all(isUrl)) {
        reposT <- repos[!isUrl];
        reposT <- getOption("repos")[reposT];
        repos[!isUrl] <- reposT;
        cat(verbose, "Updated repositories: ", paste(sQuote(repos), collapse=", "));
      }
    }

    contriburl <- NULL;
    avail <- NULL;
    for (kk in seq_along(repos)) {
      verbose && enterf(verbose, "Repository #%d ('%s') of %d", kk, repos[kk], length(repos));
      contriburl <- contrib.url(repos[kk], type);
      verbose && cat(verbose, "Contrib URL: ", contriburl);

      res <- suppressWarnings({
        avail <- available.packages(contriburl=contriburl, type=type);
      });
      keep <- na.omit(match(pkg, rownames(avail)));
      avail <- avail[keep,, drop=FALSE];
      if (length(avail) > 0L) {
        verbose && print(verbose, avail[,c("Package", "Version")]);
        if (!is.null(version)) {
          vers <- avail[,"Version", drop=TRUE];
          keep <- (vers >= version);
          avail <- avail[keep,,drop=FALSE];
        }
        if (length(avail) > 0L) {
          verbose && cat(verbose, "Found required package version:");
          verbose && print(verbose, avail[,c("Package", "Version")]);
          break;
        }
      }
      contriburl <- NULL;
      verbose && exit(verbose);
    } # for (kk ...)

    if (is.null(contriburl)) {
      throw("Package not available for installation: ", pkg);
    }

    verbose && enter(verbose, "Installing package");
    verbose && cat(verbose, "Contrib URL: ", contriburl);
    verbose && cat(verbose, "Type: ", type);
    res <- suppressWarnings({capture.output({
      install.packages(pkg, contriburl=contriburl, available=avail, type=type, ..., quiet=quietly);
    })});
    if (!quietly) {
      print(res);
    }
    installed <- isPackageInstalled(pkg);
    if (!installed) {
      throw("Failed to install package: ", pkg);
    }
    verbose && exit(verbose);

    ver <- packageVersion(pkg);

    verbose && exit(verbose);

    invisible(ver);
  } # installPkg()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pkg':
  pkg <- Arguments$getCharacter(pkg);

  # Argument 'repos':
  if (is.null(repos)) {
    repos <- Arguments$getCharacter(repos);
  }

  # Argument 'how':
  how <- match.arg(how);

  # Argument 'quietly':
  quietly <- Arguments$getLogical(quietly);

  # Argument 'version':
  if (!is.null(version)) {
    if (inherits(version, "numeric_version")) {
    } else {
      version <- Arguments$getCharacter(version);
      version <- package_version(version);
      if (is.na(version)) version <- NULL;
    }
  }

  # Argument 'install':
  install <- Arguments$getLogical(install);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  verbose && enter(verbose, "Attaching/loading package");

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Parse package and repository names
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  verbose && enter(verbose, "Parsing package and repository names");

  pkgPattern <- "[a-zA-Z0-9.]+";
  reposPattern <- "[(]{0,1}([-a-zA-Z0-9.|]+)[)]{0,1}";
  pattern <- sprintf("^(%s)::(%s)$", reposPattern, pkgPattern);
  if (regexpr(pattern, pkg) != -1L) {
    if (!is.null(repos)) {
      throw(sprintf("Argument 'repos' (%s) must not be given if argument 'pkg' specifies a repository as well: %s", repos, pkg));
    }
    repos <- gsub(pattern, "\\2", pkg);
    repos <- unlist(strsplit(repos, split="|", fixed=TRUE), use.names=FALSE);
    pkg <- gsub(pattern, "\\3", pkg);
  } else if (is.null(repos)) {
    repos <- getOption("repos");
  }

  if (verbose) {
    cat(verbose, "Package: ", sQuote(pkg));
    cat(verbose, "Repository: ", paste(sQuote(repos), collapse=", "));
  }

  verbose && exit(verbose);


  verbose && enter(verbose, "Checking package installing");
  cat(verbose, "Package: ", sQuote(pkg));
  installed <- isPackageInstalled(pkg);
  if (!installed && install) {
    ver <- installPkg(pkg, version=version, repos=repos, ..., quietly=quietly, verbose=verbose);
    installed <- isPackageInstalled(pkg);
  }

  if (installed) {
    ver <- packageVersion(pkg);
    verbose && cat(verbose, "Package version: ", ver);
  } else {
    cat(verbose, "Package version: <not installed>");
    verbose && throw("Failed to attach/load package: ", pkg);
  }
  verbose && exit(verbose);


  verbose && enter(verbose, "Checking requested package version");
  if (!is.null(version)) {
    ver <- packageVersion(pkg);
    cat(verbose, "Package version: ", ver);
    cat(verbose, "Requested version: ", version);

    # Need to install a newer version?
    if (ver < version) {
      verbose && printf(verbose, "Installed version is too old: %s < %s\n", ver, version);
      if (install) {
        ver <- installPkg(pkg, version=version, repos=repos, ..., quietly=quietly, verbose=verbose);
        verbose && printf(verbose, "Installed %s v%s\n", pkg, ver);
        verbose && exit(verbose);
      } else {
        throw(sprintf("%s v%s or newer is not installed: %s", pkg, version, ver));
      }
    }
  }
  verbose && exit(verbose);

  verbose && enter(verbose, "Attaching/loading package");
  ver <- packageVersion(pkg);
  cat(verbose, "Package: ", sQuote(pkg));
  cat(verbose, "Package version: ", ver);
  cat(verbose, "How: ", how);
  res <- suppressMessages({
    if (how == "attach") {
      require(pkg, character.only=TRUE, quietly=quietly, warn.conflicts=warn.conflicts, ...) || throw("Package not attached: ", pkg);
    } else if (how == "load") {
      requireNamespace(pkg, quietly=quietly, ...) || throw("Package not loaded: ", pkg);
    }
  });
  if (!quietly) {
    print(res);
  }
  verbose && exit(verbose);

  verbose && exit(verbose);

  invisible(ver);
}) # use()


############################################################################
# HISTORY:
# 2013-08-30
# o Created use() from .usePackage().
# 2013-08-26
# o Added .usePackage().
# o Created.
############################################################################
