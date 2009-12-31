%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  filePath.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{filePath}
\alias{filePath.default}
\alias{filePath}

 \title{Construct the path to a file from components and expands Windows Shortcuts along the pathname from root to leaf}

 \usage{\method{filePath}{default}(..., fsep=.Platform$file.sep, removeUps=TRUE, expandLinks=c("none", "any", "local", "relative", "network"), mustExist=FALSE, verbose=FALSE)}

 \description{
   Construct the path to a file from components and expands Windows Shortcuts along the pathname from root to leaf.  This function is backward compatible with
   \code{\link[base]{file.path}}() when argument \code{removeUps=FALSE} and
   \code{expandLinks="none"}, except that a (character) \code{\link[base]{NA}} is
   return if any argument is NA.

   This function exists on all platforms, not only Windows systems.
 }

 \arguments{
   \item{...}{Arguments to be pasted together to a file path and then be
      parsed from the root to the leaf where Windows shortcut files are
      recognized and expanded according to argument \code{which} in each
      step.}
   \item{fsep}{the path separator to use.}
   \item{removeUps}{If \code{\link[base:logical]{TRUE}}, relative paths, for instance "foo/bar/../"
      are shortend into "foo/", but also "./" are removed from the final
      pathname, if possible.}
   \item{expandLinks}{A \code{\link[base]{character}} string. If \code{"none"}, Windows
      Shortcut files are ignored.  If \code{"local"}, the absolute target
      on the local file system is used. If \code{"relative"}, the relative
      target is used. If \code{"network"}, the network target is used. If
      \code{"any"}, the first the local, then the relative and finally the
      network target is searched for.}
   \item{mustExist}{If \code{\link[base:logical]{TRUE}} and if the target does not exist, the original
      pathname, that is, argument \code{pathname} is returned. In all other
      cases the target is returned.}
   \item{verbose}{If \code{\link[base:logical]{TRUE}}, extra information is written while reading.}
 }

 \value{
   Returns a \code{\link[base]{character}} string.
 }

 \details{
   If \code{expandLinks==TRUE}, each component, call it \emph{parent}, in
   the absolute path is processed from the left to the right as follows:
   1. If a "real" directory of name \emph{parent} exists, it is followed.
   2. Otherwise, if Microsoft Windows Shortcut file with name
      \emph{parent.lnk} exists, it is read. If its local target exists, that
      is followed, otherwise its network target is followed.
   3. If no valid existing directory was found in (1) or (2), the expanded
      this far followed by the rest of the pathname is returned quietly.
   4. If all of the absolute path was expanded successfully the expanded
      absolute path is returned.
 }

 \section{On speed}{
   Internal \code{file.exists()} is call while expanding the pathname.
   This is used to check if the exists a Windows shortcut file named
   'foo.lnk' in 'path/foo/bar'. If it does, 'foo.lnk' has to be followed,
   and in other cases 'foo' is ordinary directory.
   The \code{file.exists()} is unfortunately a bit slow, which is why
   this function appears slow if called many times.
 }

 \examples{
# Default
print(file.path("foo", "bar", "..", "name")) # "foo/bar/../name"

# Shorten pathname, if possible
print(filePath("foo", "bar", "..", "name"))  # "foo/name"
print(filePath("foo/bar/../name"))           # "foo/name"

# Recognize Windows Shortcut files along the path, cf. Unix soft links
filename <- system.file("data-ex/HISTORY.LNK", package="R.utils")
print(filename)
filename <- filePath(filename, expandLinks="relative")
print(filename)
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{readWindowsShortcut}}().
   \code{\link[base]{file.path}}().
 }


\keyword{IO}
