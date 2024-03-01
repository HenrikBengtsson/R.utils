########################################################################/**
# @RdocFunction Sys.readlink2
#
# @title "Read File Symbolic Links (also on Windows)"
#
# \description{
#  @get "title" and returns the target of each link.
#  This implementation is fully compatible with the
#  @see "base::Sys.readlink" implementation in the \pkg{base} package.
# }
#
# @synopsis
#
# \arguments{
#  \item{paths}{A @character @vector of file paths.
#   Tilde expansion is done: see @see "base::path.expand".}
#  \item{what}{A @character string specifying what to return.}
# }
#
# \value{
#  A @character @vector of the the same length as \code{paths}.
# }
#
# @author
#
# @keyword file
# @keyword IO
# @keyword internal
#**/#######################################################################
Sys.readlink2 <- function(paths, what=c("asis", "corrected")) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'return':
  what <- match.arg(what)

  # Workaround for Windows?
  if (.Platform$OS.type == "windows") {
    pathsR <- sapply(paths, FUN=.Windows.Sys.readlink, USE.NAMES=FALSE)
  } else {
    pathsR <- Sys.readlink(paths)
  }

  # If target specify a filename without a path, append path
  if (what == "corrected") {
    isRel <- !is.na(pathsR) & (pathsR != "") & !sapply(pathsR, FUN=isAbsolutePath)
    if (any(isRel)) {
      dirs <- dirname(paths[isRel])
      pathsR[isRel] <- file.path(dirs, pathsR[isRel])
    }
  }

  pathsR
} # Sys.readlink2()



########################################################################/**
# @RdocFunction file.info2
#
# @title "Extract File Information (acknowledging symbolic file links also on Windows)"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{A @character @vectors containing file paths.
#   Tilde expansion is done: see @see "base::path.expand".}
# }
#
# \value{
#  A @data.frame.  See @see "base::file.info" for details.
# }
#
# \seealso{
#  Internally, @see "base::file.info" is used, which does not respect
#  symbolic links on Windows.  Instead, on Windows, @see "Sys.readlink2"
#  is used for such link to identify the target file and retrieve the
#  file information on that instead.
# }
#
# @author
#
# @keyword file
# @keyword IO
# @keyword internal
#**/#######################################################################
file.info2 <- function(...) {
  info <- file.info(...)

  # Nothing todo?
  if (.Platform$OS.type != "windows") {
    return(info)
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Workaround for symbolic file links on Windows
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Only files with zero size are candidates for symbolic links
  idxs <- which(!is.na(info$size) & info$size == 0)

  # Nothing todo?
  if (length(idxs) == 0L) return(info)

  # Candidate pathnames
  pathnames <- rownames(info)[idxs]

  # Translate
  pathnames <- sapply(pathnames, FUN=Sys.readlink2)

  # Drop non-symbolic links
  keep <- (!is.na(pathnames) & nchar(pathnames, type="chars") > 0L)
  pathnames <- pathnames[keep]
  idxs <- idxs[keep]

  # Nothing todo?
  if (length(idxs) == 0L) return(info)

  # Update file info for the targets (preserving the link names)
  info[idxs,] <- file.info(pathnames)

  info
} # file.info2()
