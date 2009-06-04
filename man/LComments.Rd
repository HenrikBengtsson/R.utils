%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  LComments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{LComments}
\docType{class}
\alias{LComments}


\title{The LComments class}

\description{
 Package:  R.utils \cr
\bold{Class LComments}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{\link[R.utils]{SmartComments}}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{\link[R.utils]{VComments}}\cr
\code{~~~~~~~~~~~~|}\cr
\code{~~~~~~~~~~~~+--}\code{LComments}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{LComments}\cr
extends \link[R.utils]{VComments}\cr



 The LComments class.

 This class, is almost identical to the super class, except that the
 constructor has different defaults.
}

\usage{LComments(letter="L", verboseName="log", ...)}

\arguments{
  \item{letter}{The smart letter.}
  \item{verboseName}{The name of the verbose object.}
  \item{...}{Not used.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\emph{No methods defined}.


 \bold{Methods inherited from VComments}:\cr
convertComment, reset, validate

 \bold{Methods inherited from SmartComments}:\cr
compile, convertComment, parse, reset, validate

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save


}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{classes}
\keyword{programming}
\keyword{IO}
