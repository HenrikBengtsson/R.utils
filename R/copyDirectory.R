###########################################################################/**
# @RdocDefault copyDirectory
#
# @title "Copies a directory"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{from}{The pathname of the source directory to be copied.}
#   \item{to}{The pathname of the destination directory.}
#   \item{...}{Additional arguments passed to
#     \code{\link[base:files]{file.copy}}(), e.g. \code{overwrite}.}
#   \item{private}{If @TRUE, files (and directories) starting with
#         a period is also copied, otherwise not.}
#   \item{recursive}{If @TRUE, subdirectories are copied too,
#         otherwise not.}
# }
#
# \value{
#   Returns (invisibly) a @character @vector of pathnames copied.
# }
#
# \details{
#   Note that this method does \emph{not} use @see "copyFile" to
#   copy the files, but @see "base::file.copy".
# }
#
# @author
#
# @keyword file
#*/###########################################################################
setMethodS3("copyDirectory", "default", function(from, to=".", ..., private=TRUE, recursive=TRUE) {
  # BACKWARD COMPATIBILITY: file.copy() gained argument copy.mode=TRUE in
  # R (>= 2.13.0) [April 2013].  Due to the default, this means that when
  # previously copying a read-only file, the new file would have write
  # permissions, whereas now it preserved the read-only permissions.
  # This private function silently drop argument 'copy.mode' and 'copy.date'
  # if passed older versions of R.
  .file.copy <- function(...) {
    args <- list(...)
    names <- names(args)
    if (!is.null(names)) {
      known <- names(formals(base::file.copy))
      keep <- (nchar(names) == 0L | is.element(names, known))
      args <- args[keep]
    }
    do.call(base::file.copy, args=args, envir=parent.frame())
  } # .file.copy()

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'from':
  if (!isDirectory(from))
    throw("Argument 'from' is not a directory: ", from)

  # Argument 'to':
  to <- Arguments$getWritablePath(to, mkdirs=TRUE, absolute=FALSE)

  # Argument 'private':
  private <- Arguments$getLogical(private)

  # Argument 'recursive':
  recursive <- Arguments$getLogical(recursive)

  # Use relative pathnames
  files <- list.files(from, all.files=private, full.names=FALSE)
  files <- files[!basename(files) %in% c(".", "..")]
  files <- file.path(from, files)

  copiedFiles <- c()
  for (file in files) {
    basename <- basename(file)
    if (isFile(file)) {
      if (.file.copy(from=file, to=filePath(to, basename), ...)) {
        copiedFiles <- c(copiedFiles, file)
      }
    } else if (isDirectory(file)) {
      if (recursive) {
        copiedFiles <- c(copiedFiles,
         copyDirectory(file, to=filePath(to, basename), ..., recursive=TRUE))
      }
    }
  }

  invisible(copiedFiles)
})
