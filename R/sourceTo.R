###########################################################################/**
# @RdocDefault sourceTo
#
# @title "Parses and evaluates code from a file or a connection"
#
# @synopsis
#
# \description{
#   @get "title".
#   This has the same effect as if \code{source(..., local=TRUE)} would have
#   been called from within the given environment.
#   This is useful when setting up a new local working environment.
# }
#
# \arguments{
#   \item{file}{A @connection or a @character string giving the pathname
#         of the file or URL to read from.}
#   \item{path}{An optional @character string giving the path to the file.
#         Ignored if \code{file} is a connection.}
#   \item{chdir}{If @TRUE and \code{file} is a pathname, the \R
#         working directory is temporarily changed to the directory
#         containing \code{file} for evaluating.}
#   \item{...}{Arguments to @see "base::source". If argument \code{file} is
#      not explicitly given, the first argument is assumed to be the
#      \code{file} argument. This argument is converted into a string by
#      \code{as.character()}.
#   }
#   \item{local}{If @FALSE, evaluation is done in the global environment,
#      otherwise in the calling environment.}
#   \item{envir}{An @environment in which @see "base::source" should be
#      called. If @NULL, the global environment is used.}
#   \item{modifiedOnly}{If @TRUE, the file is sourced only if modified
#      since the last time it was sourced, otherwise regardless.}
# }
#
# \value{
#   Return the result of @see "base::source".
# }
#
# \section{Hooks}{
#  This methods recognizes the hook \code{sourceTo/onPreprocess}, which
#  is called after the lines in file has been read, but before they have
#  been parsed by the \R parser, cf. @see "base::parse".
#  An \code{onPreprocess} hook function should take a @character @vector
#  of code lines and return a @character @vector of code lines.
#  This can for instance be used to pre-process R source code with special
#  directives such as @see "VComments".
#
#  Note that only one hook function can be used for this function, otherwise
#  an error is generated.
# }
#
# @examples "../incl/sourceTo.Rex"
#
# @author
#
# \seealso{
#  @see "sourceDirectory".
#  @see "base::sys.source" and @see "base::source".
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setMethodS3("sourceTo", "default", function(file, path=NULL, chdir=FALSE, ..., local=TRUE, envir=parent.frame(), modifiedOnly=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  lastSourced <- getOption("R.utils::sourceTo/lastSourced")
  if (is.null(lastSourced)) {
    lastSourced <- list()
    options("R.utils::sourceTo/lastSourced"=lastSourced)
  }

  if (is.character(file)) {
    # Argument 'path':
    if (!is.null(path)) {
      file <- file.path(path, file)
    }

    # A URL to be sourced?
    isUrl <- (length(grep("^(ftp|http|file)://", file)) > 0)

    if (!isUrl) {
      # Arguments 'file' & 'path':
      file <- Arguments$getReadablePathname(file, mustExist=TRUE)

      absPathname <- getAbsolutePath(file)
      if (modifiedOnly) {
        # Check if file has been modified since last time.
        lastSrcd <- lastSourced[[absPathname]]
        if (!is.null(lastSrcd) && (lastSrcd > lastModified(file))) {
          return(invisible(NULL))
        }
      }
      lastSourced[[absPathname]] <- Sys.time()
    } # if (!isUrl)

    # Open file
    fh <- file(file, open="r")

    # Change R working directory temporarily?
    if (chdir && !isUrl) {
      path <- dirname(file)
      if (path != ".") {
        owd <- getwd()
        on.exit(setwd(owd), add=TRUE)
        setwd(path)
      }
    }
  } else {
    fh <- file
    if (!isOpen(fh, rw="read"))
      open(fh, open="r")
  }

  # Close opened connections on exit
  on.exit({
    if (!is.null(fh)) {
      close(fh)
      fh <- NULL
    }
  }, add=TRUE)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # "main"
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Read all lines from the connection
  lines <- readLines(con=fh, warn=FALSE)
  hooks <- getHook("sourceTo/onPreprocess")
  if (length(hooks) > 0) {
    if (length(hooks) > 1)
      throw("Only one hook can be set for this function: sourceTo/onPreprocess")
    res <- callHooks("sourceTo/onPreprocess", lines=lines)[[1]]
    if (!is.null(res$result))
      lines <- res$result
  }

  if (length(lines) == 0) {
    # Nothing more to do.
    return(NULL)
  }

  if (!is.null(fh)) {
    close(fh)
    fh <- NULL
    fh <- textConnection(lines, open="r")
  }

  # Wrap up the arguments to source
  args <- list(file=fh, ...)

  # Override any 'local' argument
  args$local <- local

  # Create a call expression to source(file=fh, ..., local=local)
  expr <- substitute({
    do.call(source, args)
  }, list(args=args))

  # Call source()
  res <- eval(expr, envir=envir, enclos = baseenv())

  # If successfully sourced, record last modification date.
  if (is.character(file) && !isUrl) {
    options("R.utils::sourceTo/lastSourced"=lastSourced)
  }

  invisible(res)
}) # sourceTo()
