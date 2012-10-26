%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  createWindowsShortcut.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{createWindowsShortcut}
\alias{createWindowsShortcut.default}
\alias{createWindowsShortcut}

 \title{Creates a Microsoft Windows Shortcut (.lnk file)}

 \usage{\method{createWindowsShortcut}{default}(pathname, target, overwrite=FALSE, ...)}

 \description{
   Creates a Microsoft Windows Shortcut (.lnk file).
 }

 \arguments{
   \item{pathname}{The pathname (with file extension *.lnk) of the link
     file to be created.}
   \item{target}{The target file or directory to which the shortcut should
     point to.}
   \item{overwrite}{If \code{\link[base:logical]{TRUE}}, an existing link file is overwritten,
     otherwise not.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) the pathname.
 }

 \examples{
# Create Windows Shortcut links to a directory and a file
targets <- list(
  system.file(package="R.utils"),
  system.file("DESCRIPTION", package="R.utils")
)

for (kk in seq(along=targets)) {
  cat("Link #", kk, "\n", sep="")

  target <- targets[[kk]]
  cat("Target: ", target, "\n", sep="")

  # Name of *.lnk file
  pathname <- sprintf("\%s.LNK", tempfile())

  tryCatch({
    # Will only work on Windows systems with support for VB scripting
    createWindowsShortcut(pathname, target=target)
  }, error = function(ex) {})

  # Was it created?
  if (isFile(pathname)) {
    cat("Created link file: ", pathname, "\n", sep="")

    # Validate that it points to the correct target
    dest <- filePath(pathname, expandLinks="any", fsep="/")
    cat("Available target: ", dest, "\n", sep="")

    file.remove(pathname)
    dest <- normalizePath(dest, winslash="/")
    stopifnot(tolower(dest) == tolower(target))
  }
}
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{readWindowsShortcut}}()
 }

 \references{
   [1] Create a windows shortcut (.LNK file), SS64.com,
       http://ss64.com/nt/shortcut.html \cr
 }



\keyword{file}
\keyword{IO}
