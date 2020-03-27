###########################################################################/**
# @RdocDefault getAbsolutePath
#
# @title "Gets the absolute pathname string"
#
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#  \item{pathname}{A @character string of the pathname to be converted into
#    an absolute pathname.}
#  \item{workDirectory}{A @character string of the current working directory.}
#  \item{expandTilde}{If @TRUE, tilde (\code{~}) is expanded to the
#    corresponding directory, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string of the absolute pathname.
# }
#
# \details{
#  This method will replace replicated slashes ('/') with a single one,
#  except for the double forward slashes prefixing a Microsoft Windows UNC
#  (Universal Naming Convention) pathname.
# }
#
# @author
#
# \seealso{
#   @see "isAbsolutePath".
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("getAbsolutePath", "default", function(pathname, workDirectory=getwd(), expandTilde=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getName <- function(pathname, removeSuffix=FALSE, ...) {
    components <- strsplit(pathname, split="[/\\]")[[1]]

    len <- length(components)
    if (len == 0) {
      return("")
    }

    name <- components[len]
    if (name == ".") {
      return("")
    }

    reg <- regexpr("^.:", name)
    if (reg != -1) {
      name <- substring(name, attr(reg, "match.length")+1)
    }

    if (removeSuffix) {
      name <- gsub("[.][^.]*$", "", name); # Remove the suffix.
    }

    name
  } # getName()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  pathname <- as.character(pathname)

  # BACKWARD COMPATIBILITY: Treat empty path specially?
  pathname <- .getPathIfEmpty(pathname, where="getAbsolutePath")

  nPathnames <- length(pathname)

  # Nothing to do?
  if (nPathnames == 0L) return(logical(0L))

  # Multiple pathnames to be checked?
  if (nPathnames > 1L) {
    res <- sapply(pathname, FUN=getAbsolutePath, workDirectory=workDirectory, expandTilde=expandTilde, ...)
    return(res)
  }

  # Missing path?
  if (is.na(pathname)) return(NA_character_)

  # A URL?
  if (isUrl(pathname)) return(pathname)

  if (!isAbsolutePath(pathname)) {
    workDirectory <- strsplit(workDirectory, split="[/\\]")[[1L]]

    name <- getName(pathname)
    if (name == "" || name == ".")
      name <- NULL;                        # Only, details, but as in Java!

    pathname <- strsplit(pathname, split="[/\\]")[[1L]]
    len <- length(pathname)
    if (len != 0L) {
      pathname <- pathname[-len]
    }

    pathname <- c(workDirectory, pathname, name)
    pathname <- paste(pathname, sep="", collapse=.Platform$file.sep)
  }

  if (expandTilde) {
    ## Can we replace this with base::path.expand()? /HB 2014-09-16
    path <- dirname(pathname) # Does tilde expansion
    if (path == "/") path <- ""  ## To avoid /tmp -> //tmp
    filename <- basename(pathname)
    pathname <- file.path(path, filename)
  }

  ## Drop '..' components if possible
  pathname <- filePath(pathname, removeUps=TRUE)

  # Especially expandTilde=TRUE may add an extra slash ('/').
  # Replace all replicated slashes ('/') with single ones, except
  # if they are at the beginning of the path, because then they
  # are Microsoft Windows UNC paths.
  isWindowsUNC <- (regexpr("^//", pathname) != -1L)
  pathname <- gsub("//*", "/", pathname)
  if (isWindowsUNC) {
    # Make sure WindowsUNC starts with "//".
    pathname <- paste("/", pathname, sep="")
  }

  pathname
})
