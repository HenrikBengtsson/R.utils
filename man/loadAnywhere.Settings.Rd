%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Settings.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{loadAnywhere.Settings}
\alias{loadAnywhere.Settings}
\alias{Settings.loadAnywhere}
\alias{loadAnywhere.Settings}
\alias{loadAnywhere,Settings-method}


 \title{Loads settings from file}

 \description{
  Loads settings from file. If the settings was read from file, they are by default
  written back to the same file. If this was not the case, it defaults
  to the settings file in the home directory of the current user.
 }

 \usage{
\method{loadAnywhere}{Settings}(static, file=NULL, ..., verbose=FALSE)
}

 \arguments{
   \item{file}{A \code{\link[base]{character}} string or a \code{\link[base:connections]{connection}} from which settings
      should be read. If \code{\link[base]{NULL}}, the settings file is searched for by
      \code{\link[R.utils:findSettings.Settings]{*findSettings}()}.}
   \item{...}{Arguments passed to \code{\link[R.utils:findSettings.Settings]{*findSettings}()}.}
   \item{verbose}{If \code{\link[base:logical]{TRUE}}, verbose information is written while reading,
      otherwise not.}
 }

 \value{Returns a \link{Settings} object if file was successfully read,
   otherwise \code{\link[base]{NULL}}.}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:saveAnywhere.Settings]{*saveAnywhere}()}.
   For more information see \code{\link{Settings}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
