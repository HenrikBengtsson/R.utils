%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  patchCode.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{patchCode}
\alias{patchCode.default}
\alias{patchCode}

 \title{Patches installed and loaded packages and more}

 \usage{\method{patchCode}{default}(paths=NULL, recursive=TRUE, suppressWarnings=TRUE, knownExtensions=c("R", "r", "S", "s"), verbose=FALSE, ...)}

 \description{
  Patches installed and loaded packages and more.
 }

 \arguments{
   \item{paths}{The path to the directory (and subdirectories) which
      contains source code that will patch loaded packages.
      If \code{\link[base]{NULL}}, the patch path is given by the option \code{R_PATCHES},
      If the latter is not set, the system environment with the same name
      is used. If neither is given, then \code{~/R-patches/} is used.}
   \item{recursive}{If \code{\link[base:logical]{TRUE}}, source code in subdirectories will also
      get loaded. }
   \item{suppressWarnings}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{warning}}s will be suppressed,
      otherwise not.}
   \item{knownExtensions}{A \code{\link[base]{character}} \code{\link[base]{vector}} of filename extensions
      used to identify source code files. All other files are ignored.}
   \item{verbose}{If \code{\link[base:logical]{TRUE}}, extra information is printed while patching,
      otherwise not.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) the number of files sourced.
 }

 \details{
   The method will look for source code files (recursively or not) that
   match known filename extensions. Each found source code file is
   then \code{\link[base]{source}}()d.

   If the search is recursive, subdirectories are entered if and only if
   either (1) the name of the subdirectory is the same as a \emph{loaded}
   (and installed) package, or (2) if there is no installed package
   with that name. The latter allows common code to be organized in
   directories although it is still not assigned to packages.

   Each of the directories given by argument \code{paths} will be
   processed one by one. This makes it possible to have more than one
   file tree containing patches.

   To set an options, see \code{\link[base]{options}}(). To set a system
   environment, see \code{\link[base:putenv]{Sys.setenv}}().
   The character \code{;} is interpreted as a separator. Due to
   incompatibility with Windows pathnames, \code{:} is \emph{not} a
   valid separator.
 }

 \examples{\dontrun{
   # Patch all source code files in the current directory
   patchCode(".")

   # Patch all source code files in R_PATCHES
   options("R_PATCHES"="~/R-patches/")
   # alternatively, Sys.setenv("R_PATCHES"="~/R-patches/")
   patchCode()
 }}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link[base]{source}}().
  \code{\link[base]{library}}().
  \code{\link{relibrary}}().
 }



\keyword{utilities}
\keyword{programming}
