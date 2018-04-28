###########################################################################/**
# @RdocDefault fileSizeToHumanReadable
#
# @title "Construct the path to a file from components and expands Windows Shortcuts along the pathname from root to leaf"
#
# @synopsis
#
# \description{
#   @get "title".  This function is backward compatible with 
#   @see "base::file.path" when argument \code{removeUps=FALSE} and
#   \code{expandLinks="none"}.
#
#   This function exists on all platforms, not only Windows systems.
# }
#
# \arguments{
#   \item{...}{Arguments to be pasted together to a file path and then be
#      parsed from the root to the leaf where Windows shortcut files are 
#      recognized and expanded according to argument \code{which} in each
#      step.}
#   \item{fsep}{the path separator to use.}
#   \item{removeUps}{If @TRUE, relative paths, for instance "foo/bar/../"
#      are shortend into "foo/", but also "./" are removed from the final 
#      pathname, if possible.}
#   \item{expandLinks}{A @character string. If \code{"none"}, Windows 
#      Shortcut files are ignored.  If \code{"local"}, the absolute target 
#      on the local file system is used. If \code{"relative"}, the relative 
#      target is used. If \code{"network"}, the network target is used. If 
#      \code{"any"}, the first the local, then the relative and finally the
#      network target is searched for.}
#   \item{mustExist}{If @TRUE and if the target does not exist, the original
#      pathname, that is, argument \code{pathname} is returned. In all other
#      cases the target is returned.}
#   \item{verbose}{If @TRUE, extra information is written while reading.}
# }
# 
# \value{
#   Returns a @character string.
# }
# 
# \details{
#   If \code{expandLinks==TRUE}, each component, call it \emph{parent}, in
#   the absolute path is processed from the left to the right as follows:
#   1. If a "real" directory of name \emph{parent} exists, it is followed.
#   2. Otherwise, if Microsoft Windows Shortcut file with name 
#      \emph{parent.lnk} exists, it is read. If its local target exists, that
#      is followed, otherwise its network target is followed.
#   3. If no valid existing directory was found in (1) or (2), the expanded
#      this far followed by the rest of the pathname is returned quietly.
#   4. If all of the absolute path was expanded successfully the expanded
#      absolute path is returned.
# }
#
# \section{On speed}{
#   Internal \code{file.exists()} is call while expanding the pathname.
#   This is used to check if the exists a Windows shortcut file named 
#   'foo.lnk' in 'path/foo/bar'. If it does, 'foo.lnk' has to be followed,
#   and in other cases 'foo' is ordinary directory. 
#   The \code{file.exists()} is unfortunately a bit slow, which is why
#   this function appears slow if called many times.
# }
#
# @examples "../incl/filePath.Rex"
#
# @author
#
# \seealso{
#   @see "readWindowsShortcut".
#   @see "base::file.path".
# }
# 
# @keyword IO
#*/###########################################################################
setMethodS3("fileSizeToHumanReadable", "numeric", function(size, fmtstr="%.3g %s", unit="auto", units=c(bytes=1, kb=1024, Mb=1024^2, Gb=1024^3, Tb=1024^4), ...) {
  if (unit != "auto") {
    unit <- match.arg(unit, names(units));
  }

  # Find the closest unit for the filesize?
  if (unit == "auto") {
    units <- sort(units);
    if (size < units[1]) {
      pos <- 2;
    } else if (size >= units[length(units)]) {
      pos <- length(units) + 1;
    } else {
      pos <- which.min(size >= units);
      if (pos == 1)
        pos <- 2;
    }
    unit <- names(units)[pos-1];
  }

  # Rescale according to units
  size <- size / units[unit];
  sprintf(fmtstr, size, unit);
})

setMethodS3("fileSizeToHumanReadable", "character", function(pathname, ...) {
  fileSizeToHumanReadable(file.size(pathname)$size, ...);
})



############################################################################
# HISTORY:
# 2006-08-19
# o Created (again).
############################################################################ 
