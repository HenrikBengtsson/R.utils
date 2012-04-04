%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  TimeoutException.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{TimeoutException}
\docType{class}
\alias{TimeoutException}


 \title{TimeoutException represents timeout errors}

 \description{
  Package:  R.utils \cr
\bold{Class TimeoutException}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{try-error}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{condition}\cr
\code{~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~+--}\code{error}\cr
\code{~~~~~~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~~~~~~+--}\code{simpleError}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~+--}\code{\link[R.oo]{Exception}}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~~~~~~~~~~~~~~~~+--}\code{TimeoutException}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{TimeoutException}\cr
extends \link[R.oo]{Exception}\cr



  TimeoutException represents timeout errors occuring when a set of R expressions executed did not
  finish in time.
 }

 \usage{TimeoutException(..., cpu=NA, elapsed=NA)}

 \arguments{
   \item{...}{Any arguments accepted by \code{\link{Exception}}}.
   \item{cpu, elapsed}{The maximum time the R expressions were allowed
     to be running before the timeout occured as measured in CPU time
     and (physically) elapsed time.}
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:getMessage.TimeoutException]{getMessage}} \tab Gets the message of the exception.\cr
}


 \bold{Methods inherited from Exception}:\cr
as.character, getCall, getCalls, getLastException, getMessage, getStackTrace, getWhen, print, printStackTrace, throw

 \bold{Methods inherited from error}:\cr
as.character, throw

 \bold{Methods inherited from condition}:\cr
abort, as.character, conditionCall, conditionMessage, print

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

 }

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   For detailed information about exceptions see \code{\link{Exception}}.
 }

 \keyword{programming}
 \keyword{methods}
 \keyword{error}
\keyword{classes}
