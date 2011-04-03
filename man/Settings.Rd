%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Settings.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Settings}
\docType{class}
\alias{Settings}


 \title{Class for applicational settings}

 \description{
  Package:  R.utils \cr
\bold{Class Settings}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{\link[R.utils]{Options}}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{Settings}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{Settings}\cr
extends \link[R.utils]{Options}\cr



  Class for applicational settings.
 }

 \usage{Settings(basename=NULL, ...)}

 \arguments{
   \item{basename}{A \code{\link[base]{character}} string of the basename of the settings file.}
   \item{...}{Arguments passed to constructor of superclass \link{Options}.}
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:findSettings.Settings]{findSettings}} \tab Searches for the settings file in one or several directories.\cr
 \tab \code{\link[R.utils:getLoadedPathname.Settings]{getLoadedPathname}} \tab Gets the pathname of the settings file loaded.\cr
 \tab \code{\link[R.utils:isModified.Settings]{isModified}} \tab Checks if settings has been modified compared to whats on file.\cr
 \tab \code{\link[R.utils:loadAnywhere.Settings]{loadAnywhere}} \tab Loads settings from file.\cr
 \tab \code{\link[R.utils:promptAndSave.Settings]{promptAndSave}} \tab Prompt user to save modified settings.\cr
 \tab \code{\link[R.utils:saveAnywhere.Settings]{saveAnywhere}} \tab Saves settings to file.\cr
}


 \bold{Methods inherited from Options}:\cr
as.character, as.list, equals, getLeaves, getOption, hasOption, names, nbrOfOptions, setOption, str

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

 }

 \section{Load settings with package and save on exit}{
  Here is a generic \code{.First.lib()} function for loading settings
  with package. It also (almost) assures that the package is detached
  when R finishes. See \code{\link{onSessionExit}}() why it is not guaranteed!

  The almost generic \code{.Last.lib()} function, which will prompt
  user to save settings, is called when a package is detached.

  It is custom to put these functions in a file named \code{zzz.R}.

  \bold{.First.lib():}
  \preformatted{
   .First.lib <- function(libname, pkgname) {
     # Write a welcome message when package is loaded
     pkg <- Package(pkgname);
     assign(pkgname, pkg, pos=getPosition(pkg));
 
     # Read settings file ".<pkgname>Settings" and store it in package
     # variable '<pkgname>Settings'.
     varname <- paste(pkgname, "Settings");
     basename <- paste(".", varname, sep="");
     settings <- Settings$loadAnywhere(basename, verbose=TRUE);
     if (is.null(settings))
       settings <- Settings(basename);
     assign(varname, settings, pos=getPosition(pkg));

     # Detach package when R finishes, which will save package settings too.
     onSessionExit(function(...) detachPackage(pkgname));

     packageStartupMessage(getName(pkg), " v", getVersion(pkg),
         " (", getDate(pkg), ") successfully loaded. See ?", pkgname,
         " for help.\n", sep="");
   } # .First.lib()
  }

  \bold{.Last.lib():}
  \preformatted{
   .Last.lib <- function(libpath) {
     pkgname <- "<package name>";

     # Prompt and save package settings when package is detached.
     varname <- paste(pkgname, "Settings", sep="");
     if (exists(varname)) {
       settings <- get(varname);
       if (inherits(settings, "Settings"))
         promptAndSave(settings);
     }
   } # .Last.lib()
  }
 }

 \examples{
# Load settings from file, or create default settings
basename <- "some.settings"
settings <- Settings$loadAnywhere(basename)
if (is.null(settings))
  settings <- Settings(basename)

# Set default options, if missing.
setOption(settings, "graphics/verbose", TRUE, overwrite=FALSE)
setOption(settings, "io/verbose", Verbose(threshold=-1), overwrite=FALSE)

# Save and reload settings
path <- tempdir()
saveAnywhere(settings, path=path)
settings2 <- Settings$loadAnywhere(basename, paths=path)

# Clean up
file.remove(getLoadedPathname(settings2))

# Assert correctness
stopifnot(equals(settings, settings2))

}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{classes}
\keyword{programming}
\keyword{IO}
