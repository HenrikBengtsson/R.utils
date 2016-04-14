###########################################################################/**
# @RdocFunction shell.exec2
#
# @title "Open a file or URL using Windows File Associations"
#
# @synopsis
#
# \description{
#   @get "title" using \code{shell.exec()} but makes some tweaks
#   to filenames to make them more likely to be opened properly.
#
#   \emph{This function is only applicable on Windows systems.}
# }
#
# \arguments{
#   \item{file}{A @character string specifying a file or an URL.}
# }
#
# \value{
#   Returns nothing.
# }
#
# \details{
#   Before passing a \emph{file} on the file system to
#   \code{shell.exec()}, this function:
#    (i) unmaps any mapped drive letters used in the pathname
#        (e.g. 'X:/foo.bar.html' to 'C:/Users/Joe/bar.html'),
#   (ii) and replaces any forward slashed with backward ones
#        (e.g. 'C:\\Users\\Joe\\bar.html' to 'C:/Users/Joe/bar.html').
#   URLs are passed as is to \code{shell.exec()}.
#
#   The reason for (i) is that some web browsers (e.g. Google Chrome)
#   will not open files on mapped drives.
#   The reason for (ii) is that if forward slashes are used, then
#   \code{shell.exec()} will give an error that the file was
#   not found (at least with the default Windows shell).
# }
#
# \section{Setting on startup}{
#   The intended usage of this function is to set it as the default
#   browser for @see "utils::browseURL".  Just add the following to
#   your @see ".Rprofile" file:
#   \preformatted{
#     if (.Platform$OS.type == "windows")
#       options(browser=function(...) R.utils::shell.exec2(...))
#   }
#   This will only load (not attach) the \pkg{R.utils} package
#   when the browser function is actual used.
# }
#
# @author
#
# @keyword file
# @keyword IO
#*/###########################################################################
shell.exec2 <- function(file) {
  if (file_test("-f", file)) {
    ## WORKAROUND #1: Some web browser won't open files on
    ## mapped Windows drives.  Here we "undo" those mappings,
    ## e.g. 'X:/foo/bar.html' -> 'C:/path/to/foo/bar.html'.
    file <- filePath(file, unmap=TRUE)

    ## WORKAROUND #2: browseURL('foo/bar.html') does not work
    ## on Windows, because it calls shell.exec('foo/bar.html')
    ## which only works if it's shell.exec('foo\bar.html').
    opwd <- getwd()
    on.exit(setwd(opwd))
    setwd(dirname(file))
    file <- basename(file)
  }

  # To please R CMD check on non-Windows systems, we call
  # shell.exec() such that it looks like were' calling a
  # local function.
  shell.exec <- get("shell.exec", mode="function", envir=getNamespace("base"))
  shell.exec(file)
} # shell.exec2()


############################################################################
# HISTORY:
# 2014-10-03
# o Created.
############################################################################
