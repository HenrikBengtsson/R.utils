###########################################################################/**
# @RdocDefault use
#
# @title "Attaches or loads packages"
#
# \description{
#  @get "title".
#  If a package is not installed, it (and its dependencies) will be
#  installed from one of the (known) repositories.
# }
#
# @synopsis
#
# \arguments{
#  \item{pkg}{A @character @vector specifying the package(s) to be used.}
#  \item{version}{(optional) Version constraint(s) on requested package(s).}
#  \item{how}{A @character string specifying whether the package should be attached or loaded.}
#  \item{quietly}{If @TRUE, minimial or no messages are reported.}
#  \item{warn.conflicts}{If @TRUE, warnings on namespace conflicts are reported, otherwise not.}
#  \item{install}{If @TRUE and the package is not installed or an too old version is installed, then tries to install a newer version, otherwise not.}
#  \item{repos}{(optional) A @character @vector specifying where to install the package from if not already installed.}
#  \item{...}{Additional \emph{named} arguments passed to
#    @see "base::require" or @see "base::requireNamespace".}
#  \item{verbose}{If @TRUE, verbose output is generated (regardless
#    of \code{quietly}).}
# }
#
# \value{
#  Returns a @vector of @see "base::package_version" for each package
#  attached/loaded.
#  If one of the requested packages/package versions is not available
#  and could not be installed, an error is thrown.
# }
#
# \seealso{
#   @see "base::library" and "base::install.packages".
#   To modify the set of known repositories, set option \code{repos}
#   (see @see "base::options"),
#   which can also be done via @see "utils::setRepositories".
# }
#
# \examples{\dontrun{
#   use("digest")
#   use("digest (>= 0.6.3)")
#   use("digest (>= 0.6.3)", repos=c("CRAN", "R-Forge"))
#   use("(CRAN|R-Forge)::digest (>= 0.6.3)")
#   use("BioCsoft::ShortRead")
#   use("digest, R.rsp (>= 0.9.17)")
# }}
#
# @keyword programming
# @keyword utilities
# @keyword internal
#*/###########################################################################
setMethodS3("use", "default", function(pkg, version=NULL, how=c("attach", "load"), quietly=TRUE, warn.conflicts=!quietly, install=TRUE, repos=NULL, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Sink stdout and stderr, and rethrow errors.
  captureAll <- function(expr, envir=parent.frame(), echo=TRUE) {
    closeAll <- function(out) {
      if (!is.null(out)) {
        sink(type="message");
        sink(type="output");
        close(out);
      }
      NULL;
    } # closeAll()

    bfr <- NULL; rm(list="bfr"); # To please R CMD check
    out <- textConnection("bfr", open="w", local=TRUE);
    sink(file=out, type="output");
    sink(file=out, type="message");
    on.exit({
      out <- closeAll(out);
      # Output?
      if (echo && length(bfr) > 0L) {
        cat(paste(c(bfr, ""), collapse="\n"));
      }
    });

    # Evaluate
    tryCatch({
      eval(expr, envir=envir);
    }, error = function(ex) {
      out <<- closeAll(out);
      # If error, output all messages...
      if (length(bfr) > 0L) {
        echo <<- FALSE;
        message(paste(c(bfr, ""), collapse="\n"));
      }
      # ...and rethrow the error
      throw(ex);
    })

    # Close
    out <- closeAll(out);

    invisible(bfr);
  } # captureAll()


  installPkg <- function(pkg, version=NULL, repos=NULL, type=getOption("pkgType"), ..., quietly=FALSE, verbose=FALSE) {
    verbose && enter(verbose, "Trying to install package");

    cat(verbose, "Repositories: ", paste(sQuote(repos), collapse=", "));

    if (!is.null(repos)) {
      isUrl <- sapply(repos, FUN=isUrl);
      if (!all(isUrl)) {
        reposT <- repos[!isUrl];
        knownRepositories <- getOption("repos");
        unknown <- setdiff(repos, names(knownRepositories));
        if (length(unknown) > 0L) {
          # Are none of the specified repositories known?
          if (length(unknown) == length(reposT) && !any(isUrl)) {
            msg <- sprintf("Cannot install package %s, because", sQuote(pkg));
            if (length(unknown) == 1L) {
              msg <- sprintf("%s the specified package repository (%s) is not", msg, sQuote(unknown));
            } else {
              msg <- sprintf("%s none of the specified package repositories (%s) are", msg, paste(sQuote(unknown), collapse=", "));
            }
            msg <- sprintf("%s among the known ones as given by option 'repos':", msg);
            msg <- c(msg, sprintf(" - %s: %s", names(knownRepositories), knownRepositories));
            msg <- c(msg, "Option 'repos' needs to be updated.  For widely used repositories, this can be one interactively using setRepositories().");
            msg <- paste(msg, collapse="\n");
            throw(msg);
          } else {
            warning("Detected unknown repositories. Update option 'repos' to be able to install from them: ", paste(sQuote(unknown), collapse=", "))
          }
        }
        reposT <- knownRepositories[reposT];
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

      # Identify all available packages of this repository
      captureAll({
        avail <- available.packages(contriburl=contriburl, type=type);
      }, echo=!quietly);

      # Does the package of interest exists?
      keep <- na.omit(match(pkg, rownames(avail)));
      availT <- avail[keep,, drop=FALSE];
      if (length(availT) > 0L) {
        verbose && print(verbose, availT[,c("Package", "Version")]);
        if (!is.null(version)) {
          vers <- availT[,"Version", drop=TRUE];
          keep <- sapply(vers, FUN=function(ver) version$test(ver));
          availT <- availT[keep,,drop=FALSE];
        }
        if (length(availT) > 0L) {
          verbose && cat(verbose, "Found required package version:");
          verbose && print(verbose, availT[,c("Package", "Version")]);
          break;
        }
      }
      contriburl <- NULL;
      verbose && exit(verbose);
    } # for (kk ...)

    if (is.null(contriburl)) {
      msg <- "";
      if (isPackageInstalled(pkg)) {
        ver <- packageVersion(pkg);
        msg <- sprintf("Package %s v%s is already installed. ", sQuote(pkg), ver);
      }
      if (is.list(version)) {
        msg <- sprintf("%sFailed to install requested version %s (%s)", msg, sQuote(pkg), version$label);
      } else {
        msg <- sprintf("%sFailed to install package %s", msg, sQuote(pkg));
      }
      throw(msg);
    }

    verbose && enter(verbose, "Installing package");
    verbose && cat(verbose, "Contrib URL: ", contriburl);
    verbose && cat(verbose, "Type: ", type);
    verbose && cat(verbose, "Number of packages available: ", nrow(avail));

    # Detach/unload namespace first?
    if (is.element(pkg, loadedNamespaces())) {
      verbose && enter(verbose, "Unloading package namespace before installing");
      captureAll({
        unloadNamespace(pkg);
      }, echo=!quietly);
      if (is.element(pkg, loadedNamespaces())) {
        throw("Cannot install package. Failed to unload namespace: ", pkg);
      }
      verbose && exit(verbose);
    }

    verbose && enter(verbose, "install.packages()");
    captureAll({
      install.packages(pkg, contriburl=contriburl, available=avail,
                       type=type, quiet=quietly, ...);
    }, echo=!quietly);
    verbose && exit(verbose);

    installed <- isPackageInstalled(pkg);
    if (!installed) {
      throw("Failed to install package: ", pkg);
    }
    verbose && exit(verbose);

    # Assert installed package version (TO DO)
    ver <- packageVersion(pkg);

    verbose && exit(verbose);

    invisible(ver);
  } # installPkg()


  trim <- function(s, ...) {
    s <- gsub("^[ \t\n\r]*", "", s);
    s <- gsub("[ \t\n\r]*$", "", s);
    s;
  } # trim()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pkg':
  pkg <- Arguments$getCharacters(pkg);
  pkg <- trim(unlist(strsplit(trim(pkg), split=",", fixed=TRUE)));
  npkgs <- length(pkg);

  # Argument 'version':
  if (!is.null(version)) {
    version <- Arguments$getCharacters(version);
    version <- trim(unlist(strsplit(trim(version), split=",", fixed=TRUE)));
    if (length(version) != npkgs) {
      throw("Arguments 'version' and 'pkg' are of different lengths: ", length(version), " != ", npkgs);
    }
  }

  # Argument 'repos':
  if (is.null(repos)) {
    repos <- Arguments$getCharacter(repos);
  }

  # Argument 'how':
  how <- match.arg(how);

  # Argument 'quietly':
  quietly <- Arguments$getLogical(quietly);

  # Argument 'install':
  install <- Arguments$getLogical(install);

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);
  if (verbose) {
    pushState(verbose);
    on.exit(popState(verbose));
  }


  if (npkgs > 1L) {
    res <- NULL;
    for (ii in seq(length=npkgs)) {
      resII <- use(pkg[ii], version=version[ii], how=how, quietly=quietly, install=install, repos=repos, ..., verbose=verbose);
      if (ii == 1L) {
        res <- resII
      } else {
        res <- c(res, resII);
      }
    }
    return(invisible(res));
  }

  verbose && enter(verbose, "Attaching/loading package");
  if (!is.null(version)) {
    version <- .parseVersion(version);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Parse package and repository names
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  verbose && enter(verbose, "Parsing package, version and repositories");
  pkgOrg <- pkg;
  parts <- unlist(strsplit(pkg, split="::"), use.names=FALSE);
  nparts <- length(parts);
  # Sanity check
  if (nparts == 0L || nparts > 2L) {
    throw("Syntax error (in usage of '::'): ", pkgOrg);
  } else if (nparts == 1L) {
  } else if (nparts == 2L) {
    if (!is.null(repos)) {
      throw(sprintf("Argument 'repos' (%s) must not be given if argument 'pkg' specifies a repository as well: %s", repos, pkg));
    }
    repos <- parts[1L];
    pkg <- parts[2L];
  }

  patternO <- "<|<=|==|>=|>";
  patternV <- "[0-9]+[.-][0-9]+([.-][0-9]+)*";
  pattern <- sprintf("^([^ ]+)[ ]*(|[(]((|%s)[ ]*%s)[)])", patternO, patternV);
  if (regexpr(pattern, pkg) == -1L) {
    throw("Syntax error (in usage after '::'): ", pkgOrg);
  }
  versionT <- gsub(pattern, "\\2", pkg);
  hasVersion <- nzchar(versionT);
  if (hasVersion) {
    if (!is.null(version)) {
      throw(sprintf("Argument 'version' (%s) must not be given if argument 'pkg' specifies a version constraint as well: %s", version, pkg));
    }
    version <- versionT;
    version <- .parseVersion(version);
  }
  stopifnot(is.null(version) || is.list(version));

  pkg <- gsub(pattern, "\\1", pkg);

  # Parse 'repos'
  if (!is.null(repos)) {
    if (length(repos) > 1L) {
      repos <- paste(repos, collapse="|");
    }
    repos <- .parseRepos(repos);
    repos <- unique(repos);
  }
  if (is.null(repos)) {
    repos <- getOption("repos");
  }

  if (verbose) {
    cat(verbose, "Package: ", sQuote(pkg));
    if (is.null(version)) {
      cat(verbose, "Version constraint: <none>");
    } else {
      cat(verbose, "Version constraint: ", version$label);
    }
    if (length(repos) == 0L) {
      cat(verbose, "Repositories: <all registered>");
    } else {
      cat(verbose, "Repositories: ", paste(sQuote(repos), collapse=", "));
    }
  }

  verbose && exit(verbose);


  verbose && enter(verbose, "Checking package installing");
  cat(verbose, "Package: ", sQuote(pkg));
  installed <- isPackageInstalled(pkg);
  if (!installed && install) {
    ver <- installPkg(pkg, version=version, repos=repos, ..., quietly=quietly, verbose=verbose);
    installed <- isPackageInstalled(pkg);
  }

  if (!installed) {
    cat(verbose, "Package version: <not installed>");
    verbose && exit(verbose);
    verbose && exit(verbose);
    throw("Failed to attach/load package: ", pkg);
  }

  ver <- packageVersion(pkg);
  verbose && cat(verbose, "Package version: ", ver);
  verbose && exit(verbose);


  verbose && enter(verbose, "Checking requested package version");
  if (!is.null(version)) {
    ver <- packageVersion(pkg);
    cat(verbose, "Package version: ", ver);
    cat(verbose, "Requested version: ", version$label);
    res <- version$test(ver);
    printf(verbose, "Result of test (%s %s): %s\n", ver, version$label, res);

    # Need to install a newer version?
    if (!res) {
      verbose && printf(verbose, "Installed version ('%s') does meet the version requirements (%s)\n", ver, version$label);
      if (install) {
        ver <- installPkg(pkg, version=version, repos=repos, ..., quietly=quietly, verbose=verbose);
        verbose && printf(verbose, "Installed %s v%s\n", pkg, ver);
        verbose && exit(verbose);
      } else {
        throw(sprintf("%s (%s) is not installed: %s", sQuote(pkg), version$label, ver));
      }
    }
  }
  verbose && exit(verbose);

  verbose && enter(verbose, "Attaching/loading package");
  ver <- packageVersion(pkg);
  cat(verbose, "Package: ", sQuote(pkg));
  cat(verbose, "Package version: ", ver);
  cat(verbose, "How: ", how);
  if (how == "attach") {
    captureAll({
      ## NB: do.call() is needed to avoid 'R CMD check' NOTE on
      ## "... may be used in an incorrect context". /HB 2013-08-31
      res <- do.call(require, list(pkg, ..., quietly=quietly, warn.conflicts=warn.conflicts, character.only=TRUE));
      if (!res) throw("Package not attached: ", pkg);
    }, echo=!quietly);
  } else if (how == "load") {
    captureAll({
      res <- requireNamespace(pkg, ..., quietly=quietly);
      if (!res) throw("Package not loaded: ", pkg);
    }, echo=!quietly);
  }
  verbose && exit(verbose);

  verbose && exit(verbose);

  names(ver) <- pkg;
  invisible(ver);
}) # use()


.parseVersion <- function(version, defaultOp="==", ...) {
  versionOrg <- version;

  # Trim
  version <- gsub("^[ ]+", "", version);
  version <- gsub("[ ]+$", "", version);

  # Drop optional parenthesis
  pattern <- "^[(]([^)]*)[)]$";
  if (regexpr(pattern, version) != -1L) {
    version <- gsub(pattern, "\\1", version);
  }

  # (a) Just a version number?
  patternV <- "[0-9]+[.-][0-9]+([.-][0-9]+)*";
  pattern <- sprintf("^%s$", patternV);
  if (regexpr(pattern, version) != -1L) {
    version <- sprintf("%s %s", defaultOp, version);
  }

  patternO <- "<|<=|==|>=|>";
  pattern <- sprintf("^(%s)[ ]*(%s)$", patternO, patternV);
  if (regexpr(pattern, version) == -1L) {
    throw("Syntax error in specification of version constraint: ", versionOrg);
  }

  # Parse operation, version number
  op <- gsub(pattern, "\\1", version);
  version <- gsub(pattern, "\\2", version);
  version <- package_version(version);
  label <- sprintf("%s %s", op, version);

  # Create test function
  test <- function(other) {
    do.call(op, list(other, version));
  }

  list(label=label, op=op, version=version, test=test);
} # .parseVersion()



.parseRepos <- function(repos, ...) {
  reposOrg <- repos;

  # Trim
  repos <- gsub("^[ ]+", "", repos);
  repos <- gsub("[ ]+$", "", repos);

  # Drop optional parenthesis
  pattern <- "^[(]([^)]*)[)]$";
  if (regexpr(pattern, repos) != -1L) {
    repos <- gsub(pattern, "\\1", repos);
  }

  # Split
  repos <- trim(unlist(strsplit(repos, split="|", fixed=TRUE), use.names=FALSE));

  repos;
} # .parseRepos()


############################################################################
# HISTORY:
# 2014-04-29
# o ROBUSTNESS: Now use("UnknownRepos::pkg") will detect that repository
#   is unknown and give an informative error message on how to update
#   option 'repos'.
# 2014-04-15
# o BUG FIX: use() would not install package dependencies.
# 2013-08-31
# o ROBUSTNESS: Now use() rethrows exceptions "visibly", iff they occur.
# o Now use() handles newlines and TABs in package strings.
# 2013-08-30
# o Added .parseVersion() and .parseRepos(), which are used by use().
# o Created use() from .usePackage().
# 2013-08-26
# o Added .usePackage().
# o Created.
############################################################################
