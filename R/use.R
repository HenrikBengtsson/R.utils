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
#  \item{quietly}{If @TRUE, minimal or no messages are reported.}
#  \item{warn.conflicts}{If @TRUE, warnings on namespace conflicts are reported, otherwise not.}
#  \item{install}{If @TRUE and the package is not installed or an too old version is installed, then tries to install a newer version, otherwise not.}
#  \item{repos}{(optional) A @character @vector specifying from which repositories
#    to install the package from, iff a requested package is not already installed.}
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
setMethodS3("use", "default", function(pkg="R.utils", version=NULL, how=c("attach", "load"), quietly=TRUE, warn.conflicts=!quietly, install=TRUE, repos=getOption("use/repos", c("[[current]]", "[[mainstream]]")), ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  ## "Hide" all messages?
  if (quietly) {
    # Sink stdout and stderr, and rethrow errors.
    captureAll <- function(expr, envir=parent.frame(), echo=TRUE) {
      out <- NULL
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
  } else {
    captureAll <- function(expr, envir=parent.frame(), echo=TRUE) {
      eval(expr, envir=envir);
    }
  } # if (quietly)


  installPkg <- function(pkg, version=NULL, repos=NULL, type=getOption("pkgType"), ..., quietly=FALSE, verbose=FALSE) {
    verbose && enter(verbose, "Trying to install package");

    # Already installed? (=should not have been called)
    if (isPackageInstalled(pkg)) {
      ver <- packageVersion(pkg);
      msg <- sprintf("INTERNAL ERROR: Package %s v%s is already installed. ", sQuote(pkg), ver);
      throw(msg);
    }

    # Parse/expand argument 'repos':
    if (is.null(repos)) repos <- "[[current]]";
    cat(verbose, "Repositories: ", paste(sQuote(repos), collapse=", "));

    # Temporary set of repositories
    orepos <- useRepos(repos);
    on.exit(useRepos(orepos));

    # Repositories being used
    repos <- getOption("repos");
    if (!identical(repos, orepos)) {
      cat(verbose, "Repositories (expanded): ", paste(sQuote(repos), collapse=", "));
    }

    # Identify all available packages of this repository
    captureAll({
      avail <- available.packages(type=type);
    }, echo=!quietly);

    # Does the package of interest exists?
    keep <- na.omit(match(pkg, rownames(avail)));
    availT <- avail[keep,, drop=FALSE];
    if (length(availT) == 0L) {
      throw(sprintf("Package '%s' is not available from any of the repositories: %s", pkg, paste(sQuote(repos), collapse=", ")));
    }
    verbose && print(verbose, availT[,c("Package", "Version")]);

    # Find a particular version?
    if (!is.null(version)) {
      vers <- availT[,"Version", drop=TRUE];
      keep <- sapply(vers, FUN=function(ver) version$test(ver));
      availT <- availT[keep,,drop=FALSE];
      if (length(availT) == 0L) {
        throw(sprintf("Package '%s' (%s) is not available from any of the repositories: %s", pkg, version$label, paste(sQuote(repos), collapse=", ")));
      }
      verbose && print(verbose, availT[,c("Package", "Version")]);
    }

    verbose && enter(verbose, "Installing package");
    verbose && cat(verbose, "Type: ", type);
    verbose && cat(verbose, "Number of possible installation files available: ", nrow(availT));

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
    verbose && cat(verbose, "Arguments:");
    verbose && str(verbose, list(available=avail, type=type, quiet=quietly, ...));

    output <- captureAll({
#      install.packages(pkg, available=avail, type=type, quiet=quietly, ...);
      install.packages(pkg, type=type, quiet=quietly, ...);
    }, echo=!quietly);

    if (!quietly) verbose && print(verbose, output);
    verbose && exit(verbose);

    installed <- isPackageInstalled(pkg);
    if (!installed) {
      throw("Failed to install package: ", pkg);
    }
    verbose && exit(verbose);

    ver <- packageVersion(pkg);
    verbose && printf(verbose, "Installed version: %s v%s\n", pkg, ver);

    # Assert installed package version
    if (!is.null(version)) {
      if (!version$test(ver)) {
        throw(sprintf("[SANITY CHECK]: The package version ('%s') available after installation does not meet the request version specification ('%s'): %s", ver, version$label, pkg));
      }
    }

    verbose && exit(verbose);

    invisible(ver);
  } # installPkg()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pkg':
  pkg <- Arguments$getCharacters(pkg);
  pkg <- .splitBy(pkg, split=",");
  npkgs <- length(pkg);

  # Argument 'version':
  if (!is.null(version)) {
    version <- Arguments$getCharacters(version);
    version <- .splitBy(version, split=",");
    if (length(version) != npkgs) {
      throw("Arguments 'version' and 'pkg' are of different lengths: ", length(version), " != ", npkgs);
    }
  }

  # Argument 'repos':
  if (is.null(repos)) {
    repos <- Arguments$getCharacters(repos);
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


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Vectorized call?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (npkgs > 1L) {
    res <- NULL;
    for (ii in seq_len(npkgs)) {
      resII <- use(pkg[ii], version=version[ii], how=how, quietly=quietly, install=install, repos=NULL, ..., verbose=verbose);
      if (ii == 1L) {
        res <- resII
      } else {
        res <- c(res, resII);
      }
    }
    return(invisible(res));
  }


  if (quietly) {
    oopts <- options("install.packages.compile.from.source"="never")
    on.exit(options(oopts), add=TRUE)
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # From now on we are only dealing with one package at the time
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  verbose && enterf(verbose, "%sing package", capitalize(how));
  if (!is.null(version)) {
    version <- .parseVersion(version);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Parse package and repository names
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  verbose && enter(verbose, "Parsing package, version and repositories");
  pkgOrg <- pkg;
  parts <- .splitBy(pkg, split="::");
  nparts <- length(parts);
  # Sanity check
  if (nparts == 0L || nparts > 2L) {
    throw("Syntax error (in usage of '::'): ", pkgOrg);
  }

  # Infer (repos,pkg) parameters
  if (nparts == 1L) {
    repos <- NULL;
    pkg <- parts[1L];
  } else if (nparts == 2L) {
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
  if (is.null(repos)) repos <- "[[current]]";

  if (verbose) {
    cat(verbose, "Package: ", sQuote(pkg));
    if (is.null(version)) {
      cat(verbose, "Version constraint: <none>");
    } else {
      cat(verbose, "Version constraint: ", version$label);
    }
    cat(verbose, "Repositories: ", paste(sQuote(repos), collapse=", "));
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
    throw(sprintf("Failed to %s package:%s", how, pkg));
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

  verbose && enterf(verbose, "%sing package", capitalize(how));
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


.splitBy <- function(s, split=",", fixed=TRUE, ...) {
  trim <- function(s, ...) {
    s <- gsub("^[ \t\n\r]*", "", s);
    s <- gsub("[ \t\n\r]*$", "", s);
    s;
  } # trim()

  s <- strsplit(s, split=split, fixed=fixed);
  s <- unlist(s, use.names=FALSE);
  trim(s);
} # .splitBy()


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
  repos <- .splitBy(repos, split="|");

  repos;
} # .parseRepos()


##  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - --
##  # Adjust repositories temporarily
##  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
##  if (length(repos) > 0L) {
##    verbose && printf(verbose, "Using specific repositories (%s):\n", paste(sQuote(repos), collapse=", "));
##    orepos <- useRepos(repos);
##    on.exit(options(orepos), add=TRUE)
##    verbose && str(verbose, as.list(getOption("repos")))
##  }


############################################################################
# HISTORY:
# 2015-02-07
# o SPECIAL CASE: R.utils::use() now attaches 'R.utils'.
# 2014-05-01
# o Now use() utilizes useRepos() and withRepos().  It's default is
#   now to install on all set repositories as well as the mainstream ones.
# o Now use("CRAN::digest", repos=c("BioCsoft", "R-Forge")) works.
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
