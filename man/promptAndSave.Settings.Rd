%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Settings.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{promptAndSave.Settings}
\alias{promptAndSave.Settings}
\alias{Settings.promptAndSave}
\alias{promptAndSave,Settings-method}

 \title{Prompt user to save modified settings}

 \description{
  Prompt user to save modified settings.
 }

 \usage{
\method{promptAndSave}{Settings}(this, saveOption="saveSettings", settingsName=NULL, ...)
}

 \arguments{
   \item{saveOption}{A \code{\link[base]{character}} string of the option used to set
      if user is prompted or not.}
   \item{...}{Arguments passed to \code{\link{saveAnywhere}}().}
 }

 \value{
   Returns \code{\link[base:logical]{TRUE}} if settings were successfully written to file,
   otherwise \code{\link[base:logical]{FALSE}} is returned. An exception may also be thrown.
 }

 \details{
   If settings has been modified since loaded, the user is by default
   prompted to save the settings (if \R runs interactively).
   To save or not save without asking or when \R runs non-interactively,
   set option \code{"saveSettings"} to "yes" or "no", respectively.
   For prompting the user, use "prompt".
 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:isModified.Settings]{*isModified}()}.
   \code{\link[base]{interactive}}().
   For more information see \code{\link{Settings}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
