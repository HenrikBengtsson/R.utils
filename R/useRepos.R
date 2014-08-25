###########################################################################/**
# @RdocFunction useRepos
# @alias parseRepos
#
# @title "Sets package repositories"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{repos}{A @character @vector of repositories to use.
#    If @NULL, nothing is replaced.}
#   \item{where}{A @character string specifying how to add them to the
#    current set of repositories.}
#   \item{unique}{If @TRUE, only unique repositories are set.}
#   \item{fallback}{If @TRUE, any remaining non-specified repository value
#    of format '@...@' (e.g. '@CRAN@') than could not be recovered by
#    other means, will be assigned to a pre-defined known value, if possible.
#    If so, then an informative warning is given.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @list with element 'repos' reflecting \code{options("repos")}
#  as the options where prior to calling this function.
# }
#
# @author
#
# \seealso{
#   @see "withRepos".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
useRepos <- function(repos=NULL, where=c("before", "after", "replace"), unique=TRUE, fallback=TRUE, ...) {
  # Nothing to do?
  if (is.null(repos)) {
    return(options("repos"))
  }

  # Reset to previous options?
  # (Example: old <- useRepos(), later useRepos(old).)
  if (is.list(repos)) {
    old <- options(repos)
    return(old)
  }

  repos <- parseRepos(sets=repos, where=where, fallback=fallback, ...)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Keep only unique ones?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (unique) {
    names <- names(repos)
    if (length(names) > 0L) {
      dups <- (nzchar(names) & duplicated(names))
      repos <- repos[!dups]
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Repositories, except '@...@' ones, should all be specified as URLs,
  # cf. help("install.packages").
  reposT <- grep("^@[^@]+@$", repos, value=TRUE, invert=TRUE)
  isUrl <- isUrl(reposT)
  bad <- repos[!isUrl]
  if (length(bad) > 0L) {
    stop("Detected reposities that are not specified as URLs: ", bad)
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Apply
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  old <- options(repos=repos)

  invisible(old)
} # useRepos()


parseRepos <- function(sets=NULL, where=c("before", "after", "replace"), fallback=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  reposKnownToR <- function() {
    p <- file.path(Sys.getenv("HOME"), ".R", "repositories")
    if (!file.exists(p)) p <- file.path(R.home("etc"), "repositories")
    ns <- getNamespace("tools")
    .read_repositories <- get(".read_repositories", envir=ns)
    a <- .read_repositories(p)
    repos <- a$URL
    names <- rownames(a)
    names(repos) <- names
    repos
  } # reposKnownToR()

  reposCustom <- function() {
    c("braju.com"="http://braju.com/R")
  } # reposCustom()

  reposFallback <- function() {
    c("CRAN"="http://cran.r-project.org")
  } # reposCustom()

  reposAll <- function() {
    c(reposKnownToR(), reposCustom())
  } # reposAll()

  superPattern <- function(name="all") {
    known <- list(
      CRAN    = "^(CRAN.*)$",
      BioC    = "^(BioC.*)$",
      all     = "",
      current = "<current>"
    )
    known$`mainstream` <- c(known$CRAN, known$BioC)
    known$`braju.com`  <- c("^braju[.]com$", known$mainstream)
    known$`R-Forge`    <- c("^R-Forge$", known$mainstream)
    known$`rforge.net` <- c("^rforge[.]net$", known$mainstream)

    # Unknown?
    if (!is.element(name, names(known)))
      return(NULL)

    known[[name]]
  } # superPattern()

  reposSubst <- function(repos, known=repos) {
    pattern <- "^@[^@]+@$"
    subs <- grep(pattern, repos)
    if (length(subs) > 0L) {
      # Borrow from repositories that does not require substitution
      known <- grep(pattern, known, value=TRUE, invert=TRUE)

      # Names of repositories that requires substitution
      names <- names(repos)[subs]

      # Look them up in among the known ones?
      reposT <- known[names]
      stopifnot(length(reposT) == length(subs))
      # Which can use?
      ok <- !is.na(reposT)
      reposT <- reposT[ok]

      # Patch
      if (length(reposT) > 0L) {
        idxs <- match(names(reposT), names)
        subs <- subs[idxs]
        repos[subs] <- reposT
      }
    }

    repos
  } # reposSubst()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'sets':
  # Nothing to do?
  if (is.null(sets)) return(getOption("repos"))
  stopifnot(is.character(sets))

  # Argument 'where':
  where <- match.arg(where)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # How the order relative to the existing set of repositories?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # All available/known repositories
  repos00 <- c(getOption("repos"), reposAll())
  if (where == "after") {
    repos0 <- repos00
  } else if (where == "before") {
    repos0 <- c(reposAll(), getOption("repos"))
  } else {
    # Don't the use the existing ones
    repos0 <- reposAll()
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Preprocess sets
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  sets <- unlist(strsplit(sets, split=",", fixed=TRUE), use.names=FALSE)
  names <- names(sets)
  sets <- sapply(sets, FUN=trim)
  names(sets) <- names

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Indentify new set of repositories
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Subset by name?
  if (is.character(sets)) {
    repos <- c()

    patternS <- "^\\[(.*)\\]$"
    for (kk in seq_along(sets)) {
      # Subsetting here will keep the names attribute
      set <- sets[kk]

      # Subset by regular expression?
      if (regexpr(patternS, set) != -1L) {
        # Identify the repository pattern used for scanning
        pattern <- gsub(patternS, "\\1", set)

        # A super set?
        if (regexpr(patternS, pattern) != -1L) {
          name <- gsub(patternS, "\\1", pattern)
          pattern <- superPattern(name)
          if (length(pattern) == 0L) {
            stop("Unknown repository super set: ", name)
          }
        }

        # Current set or pattern?
        if (identical(pattern, "<current>")) {
          repos <- getOption("repos")
        } else {
          # All known repositories with names matching the pattern(s)
          keep <- lapply(pattern, FUN=grep, names(repos0))
          keep <- unique(unlist(keep))

          repos <- c(repos, repos0[keep])
        }
      } else if (isUrl(set)) {
        repos <- c(repos, set)
      } else {
        repos <- c(repos, repos0[set])
      }
    } # for (set ...)
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Try to substitute any @CRAN@ etc.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # First among the selected set
  repos <- reposSubst(repos)

  # Then among the all known repositories
  repos <- reposSubst(repos, known=repos00)

  # And finally among the fallback repositories?
  if (fallback) {
    repos0 <- repos
    repos <- reposSubst(repos, known=reposFallback())
    if (!identical(repos, repos0)) {
      # Report on what was done
      idxs <- which(repos0 != repos)
      diff <- sprintf("%s -> %s", sQuote(repos0[idxs]), sQuote(repos[idxs]))
      keys <- names(repos[idxs])
      if (!is.null(keys)) diff <- sprintf("%s: %s", keys, diff)
      diff <- paste(diff, collapse=", ")
      warning("Had to fall back to a set of predefined repositories (please make sure to set your package repositories properly, cf. ?setRepositories): ", diff)
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop (name,value) duplicates
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  keys <- paste(names(repos), repos, sep=":")
  repos <- repos[!duplicated(keys)]

  # Sanity check
  stopifnot(is.character(repos))

  # Return
  repos
} # parseRepos()


############################################################################
# HISTORY:
# 2014-08-24
# o ROBUSTNESS: Now parseRepos(..., fallback=TRUE) uses a set of fallback
#   CRAN repository in case '@CRAN@' is not set.  If done, it will give
#   an informative warning message.
# 2014-05-01
# o Created.
############################################################################
