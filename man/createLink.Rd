%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  createLink.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{createLink}
\alias{createLink.default}
\alias{createLink}

 \title{Creates a link to a file or a directory}

 \usage{\method{createLink}{default}(link=".", target, overwrite=FALSE, methods=c("unix-symlink", "windows-ntfs-symlink", "windows-shortcut"), ...)}

 \description{
   Creates a link to a file or a directory.
   First it tries to create a (Unix-like) symbolic link and if that was
   not successful it tries to create a Windows Shortcut link.
   If neither works, an exception is thrown.
 }

 \arguments{
   \item{link}{The path or pathname of the link to be created.
     If \code{"."} (or \code{\link[base]{NULL}}), it is inferred from the
     \code{target} argument.}
   \item{target}{The target file or directory to which the shortcut should
     point to.}
   \item{overwrite}{If \code{\link[base:logical]{TRUE}}, an existing link file is overwritten,
     otherwise not.}
   \item{methods}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying what methods (and in
     what order) should be tried for creating links.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) the path or pathname to the destination.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link{createWindowsShortcut}}() and
   \code{\link[base:files]{file.symlink}()}
 }



\keyword{file}
\keyword{IO}
