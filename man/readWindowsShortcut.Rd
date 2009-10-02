%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  readWindowsShortcut.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{readWindowsShortcut}
\alias{readWindowsShortcut.default}
\alias{readWindowsShortcut}

 \title{Reads a Microsoft Windows Shortcut (.lnk file)}

 \usage{\method{readWindowsShortcut}{default}(con, verbose=FALSE, ...)}

 \description{
   Reads a Microsoft Windows Shortcut (.lnk file).
 }

 \arguments{
   \item{con}{A \code{\link[base:connections]{connection}} or a \code{\link[base]{character}} string (filename).}
   \item{verbose}{If \code{\link[base:logical]{TRUE}}, extra information is written while reading.}
   \item{...}{Not used.}
 }

 \value{
   Returns a \code{\link[base]{list}} structure.
 }

 \examples{
filename <- system.file("data-ex/HISTORY.LNK", package="R.utils")
lnk <- readWindowsShortcut(filename)

# Print all information
print(lnk)

# Get the relative path to the target file
history <- file.path(dirname(filename), lnk$relativePath)

# Alternatively, everything in one call
history <- filePath(filename, expandLinks="relative")

file.show(history)

}

 \details{
  The MIME type for a Windows Shortcut file is
  \code{application/x-ms-shortcut}.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{readWindowsShortcut}}()
   \code{\link{filePath}}
 }

 \references{
   [1] Wotsit's Format, \url{http://www.wotsit.org/}, 2005.\cr
   [2] Hager J, \emph{The Windows Shortcut File Format}
       (as reverse-engineered by), version 1.0.\cr
   [3] Microsoft Developer Network, \emph{IShellLink Interface}, 2008.
       \url{http://msdn2.microsoft.com/en-us/library/bb774950.aspx} \cr
   [4] Andrews D, \emph{Parsing Windows Shortcuts (lnk) files in java},
       comp.lang.java.help, Aug 1999.
       \url{http://groups.google.com/group/comp.lang.java.help/browse_thread/thread/a2e147b07d5480a2/} \cr
   [5] Multiple authors, \emph{Windows shell links} (in Tcl), Tcler's Wiki,
       April 2008. \url{http://wiki.tcl.tk/1844} \cr
   [6] Daniel S. Bensen, \emph{Shortcut File Format (.lnk)}, Stdlib.com,
       April 24, 2009. \cr
       \url{http://www.stdlib.com/art6-Shortcut-File-Format-lnk.html}
   [7] [MS-SHLLINK]: Shell Link (.LNK) Binary File Format, Microsoft Inc.,
       September 25, 2009. \cr
 }



\keyword{file}
\keyword{IO}
