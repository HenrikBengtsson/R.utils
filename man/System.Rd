%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{System}
\docType{class}
\alias{System}


\title{Static class to query information about the system}

\description{
 Package:  R.utils \cr
\bold{Class System}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{System}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{System}\cr
extends \link[R.oo]{Object}\cr



 The System class contains several useful class fields and methods. It
 cannot be instantiated.
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:currentTimeMillis.System]{currentTimeMillis}} \tab Get the current time in milliseconds.\cr
 \tab \code{\link[R.utils:findGhostscript.System]{findGhostscript}} \tab Searches for the ghostview binary on the current system.\cr
 \tab \code{\link[R.utils:findGraphicsDevice.System]{findGraphicsDevice}} \tab Searches for a working PNG device.\cr
 \tab \code{\link[R.utils:getHostname.System]{getHostname}} \tab Retrieves the computer name of the current host.\cr
 \tab \code{getMappedDrivesOnWindows} \tab  -\cr
 \tab \code{\link[R.utils:getUsername.System]{getUsername}} \tab Retrieves the name of the user running R.\cr
 \tab \code{mapDriveOnWindows} \tab  -\cr
 \tab \code{\link[R.utils:openBrowser.System]{openBrowser}} \tab Opens an HTML document using the OS default HTML browser.\cr
 \tab \code{\link[R.utils:parseDebian.System]{parseDebian}} \tab Parses a string, file or connection for Debian formatted parameters.\cr
 \tab \code{unmapDriveOnWindows} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save


}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}
\keyword{classes}
