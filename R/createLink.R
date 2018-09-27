###########################################################################/**
# @RdocDefault createLink
#
# @title "Creates a link to a file or a directory"
#
# @synopsis
#
# \description{
#   @get "title".
#   This method tries to create a link to a file/directory on the
#   file system, e.g. a symbolic link and Windows Shortcut links.
#   It depends on operating and file system (and argument settings),
#   which type of link is finally created, but all this is hidden
#   internally so that links can be created the same way regardless
#   of system.
# }
#
# \arguments{
#   \item{link}{The path or pathname of the link to be created.
#     If \code{"."} (or @NULL), it is inferred from the
#     \code{target} argument, if possible.}
#   \item{target}{The target file or directory to which the shortcut should
#     point to.}
#   \item{skip}{If @TRUE and a file with the same name as argument
#     \code{link} already exists, then the nothing is done.}
#   \item{overwrite}{If @TRUE, an existing link file is overwritten,
#     otherwise not.}
#   \item{methods}{A @character @vector specifying what methods (and in
#     what order) should be tried for creating links.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the path or pathname to the link.
#   If no link was created, @NULL is returned.
# }
#
# \section{Required privileges on Windows}{
#   In order for \code{method="unix-symlink"} (utilizing
#   \code{\link[base:files]{file.symlink}()}),
#   \code{method="windows-ntfs-symlink"} (utilizing executable \code{mklink}),
#   and/or \code{method="windows-shortcut"} (utilizing
#   @see "createWindowsShortcut") to succeed on Windows,
#   the client/R session must run with sufficient privileges
#   (it has been reported that Administrative rights are necessary).
# }
#
# @author
#
# \seealso{
#   @see "createWindowsShortcut" and
#   \code{\link[base:files]{file.symlink}()}
# }
#
# \references{
#   Ben Garrett, \emph{Windows File Junctions, Symbolic Links and Hard Links},
#   September 2009 [\url{http://goo.gl/R21AC}]\cr
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("createLink", "default", function(link=".", target, skip=!overwrite, overwrite=FALSE, methods=getOption("createLink/args/methods", c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut")), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'skip':
  skip <- Arguments$getLogical(skip)

  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite)

  # Argument 'target':
  target <- normalizePath(target)
  target <- Arguments$getReadablePathname(target, mustExist=TRUE)
  target <- getAbsolutePath(target)

  # Argument 'link':
  if (is.null(link) || link == ".") {
    # Infer from 'target'
    link <- basename(target)
    if (regexpr("^[a-zA-Z]:$", link) != -1) {
      throw("Cannot infer a valid link name from argument 'target': ", target)
    }
  }

  links <- c(link, sprintf("%s.LNK", link))
  if (any(file.exists(links))) {
    if (skip) {
      res <- Arguments$getReadablePathname(link, mustExist=TRUE)

      resA <- getAbsolutePath(Sys.readlink2(res, what="corrected"))
      equal <- identical(resA, target)
      # Be more forgiving on Windows system, i.e. assume a
      # case-insensitive file system
      if (!equal && (.Platform$OS.type == "windows")) {
        equal <- identical(tolower(resA), tolower(target))
      }
      if (!equal) {
        warning(sprintf("Existing link (%s; current working directory: %s) was skipped, but it links to different target file than requested: %s != %s", sQuote(link), sQuote(getwd()), sQuote(resA), sQuote(target)))
      }

      # If a Windows Shortcut, avoid returning the target.
      if (file.exists(links[2L]) && !file.exists(link)) {
        res <- link
        attr(res, "linkType") <- "windows-shortcut"
      }

      return(res)
    }
    if (!overwrite) {
      throw(sprintf("Cannot create link. Link file already exists: %s (current working directory: %s)", sQuote(link), sQuote(getwd())))
    }
  }

  # Argument 'methods':
  methods <- match.arg(methods, several.ok=TRUE)


  # Keep only 'methods' that are supported on the current platform
  if (.Platform$OS.type != "windows") {
    methods <- grep("windows-", methods, value=TRUE, invert=TRUE)
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Create directory where link should be, if missing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  path <- dirname(getAbsolutePath(link))
  path <- Arguments$getWritablePath(path)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Overwrite?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (overwrite) {
    linksS <- links[file.exists(links)]
    if (length(linksS) > 0) {
      linksD <- sprintf("%s.%s", linksS, basename(tempdir()))
      # Remove current link, by renaming to a temporary name.
      file.rename(linksS, linksD)
      on.exit({
        # Undo if failing to create link below.
        if (length(linksS) > 0) {
          file.rename(linksD, linksS)
        } else if (length(linksD) > 0) {
          file.remove(linksD)
        }
      })
    }
  }


  # Default result
  res <- NULL


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Unix: Try to create a symbolic link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("unix-symlink", methods)) {
    targetF <- getAbsolutePath(target)
    tryCatch({
      file.symlink(from=targetF, to=link)
      res <- Arguments$getReadablePathname(link, mustExist=TRUE)
      attr(res, "linkType") <- "unix-symlink"
    }, warning = function(ex) {
    })
    if (!is.null(res)) {
      if (overwrite) linksS <- NULL;  # Don't undo above "overwrite"
      return(res)
    }

    # Cleanup, in case something was created but the link is not
    # working, which can happen on Windows.  If it worked, then
    # 'res' should be non-NULL above.
    if (file.exists(link)) {
      file.remove(link)
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows Vista + NTFS: Try to create a symbolic link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("windows-ntfs-symlink", methods)) {
    # Are we linking to a directory (or a file)?
    if (isDirectory(target)) {
      cmd <- sprintf("mklink /D \"%s\" \"%s\"", link, target)
    } else {
      cmd <- sprintf("mklink \"%s\" \"%s\"", link, target)
    }
    tryCatch({
      shell(cmd, intern=TRUE, mustWork=TRUE, ignore.stderr=TRUE, shell=Sys.getenv("COMSPEC"))
      res <- Arguments$getReadablePathname(link, mustExist=TRUE)
      attr(res, "linkType") <- "windows-ntfs-symlink"
    }, error = function(ex) {
    })
    if (!is.null(res)) {
      if (overwrite) linksS <- NULL;  # Don't undo above "overwrite"
      return(res)
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows: Try to create a Windows Shortcut link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element("windows-shortcut", methods)) {
    tryCatch({
      pathname <- sprintf("%s.LNK", link)
      createWindowsShortcut(pathname, target=target, overwrite=overwrite)
      res <- Arguments$getReadablePathname(link, mustExist=TRUE)
      # Make sure to return the link and not the target
      res <- link
      attr(res, "linkType") <- "windows-shortcut"
    }, error = function(ex) {
    })
    if (!is.null(res)) {
      if (overwrite) linksS <- NULL;  # Don't undo above "overwrite"
      return(res)
    }
  }

  if (is.null(res)) {
    throw(sprintf("Failed to create file link (methods attempted: %s; current working directory: %s): %s[.lnk] -> %s", paste(sQuote(methods), collapse = ", "), sQuote(getwd()), sQuote(link), sQuote(target)))
  }

  res
}) # createLink()
