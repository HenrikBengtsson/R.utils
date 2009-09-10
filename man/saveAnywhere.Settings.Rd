%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Settings.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{saveAnywhere.Settings}
\alias{saveAnywhere.Settings}
\alias{Settings.saveAnywhere}
\alias{saveAnywhere.Settings}
\alias{saveAnywhere,Settings-method}


 \title{Saves settings to file}

 \description{
  Saves settings to file. If the settings was read from file, they are by default
  written back to the same file. If this was not the case, it defaults
  to the settings file in the home directory of the current user.
 }

 \usage{\method{saveAnywhere}{Settings}(this, file=NULL, path="~", ...)}

 \arguments{
   \item{file}{A \code{\link[base]{character}} string or a \code{\link[base:connections]{connection}} where to write too.
      If \code{\link[base]{NULL}}, the file from which the settings were read is used. If
      this was not the case, argument \code{path} is used.}
   \item{path}{The default path, if no settings files are specified.
      This defaults to the current user's home directory.}
   \item{...}{Arguments passed to
      \code{\link[R.oo:save.Object]{save}()} in superclass Object.}
 }

 \value{
   Returns (invisibly) the pathname to the save settings file.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:loadAnywhere.Settings]{*loadAnywhere}()}.
   For more information see \code{\link{Settings}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
