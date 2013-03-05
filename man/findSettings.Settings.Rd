%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Settings.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Settings$findSettings}
\alias{Settings$findSettings}
\alias{findSettings.Settings}
\alias{Settings.findSettings}
\alias{findSettings,Settings-method}

 \title{Searches for the settings file in one or several directories}

 \description{
   Searches for the settings file in one or several directories.
 }

 \usage{
## Static method (use this):
## Settings$findSettings(basename, paths=c(".", "~"), ...)

## Don't use the below:
\method{findSettings}{Settings}(static, basename, paths=c(".", "~"), ...)
}

 \arguments{
  \item{basename}{A \code{\link[base]{character}} string of the basename of the settings file.}
  \item{paths}{A \code{\link[base]{vector}} of \code{\link[base]{character}} string specifying the directories to
    be searched.}
  \item{...}{Not used.}
 }

 \value{
   Returns the absolute pathname (\code{\link[base]{character}} string) of the first settings
   file found, otherwise \code{\link[base]{NULL}}.
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For more information see \code{\link{Settings}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
