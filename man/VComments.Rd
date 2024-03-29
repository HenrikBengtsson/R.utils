%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  VComments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{VComments}
\docType{class}
\alias{VComments}


\title{The VComments class}

\description{
 Package:  R.utils \cr
\bold{Class VComments}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{\link[R.utils]{SmartComments}}\cr
\code{~~~~~~~|}\cr
\code{~~~~~~~+--}\code{VComments}\cr

\bold{Directly known subclasses:}\cr
\link[R.utils]{LComments}\cr

public static class \bold{VComments}\cr
extends \emph{\link[R.utils]{SmartComments}}\cr



 The VComments class.
}

\usage{
VComments(letter="V", verboseName="verbose", ...)
}

\arguments{
  \item{letter}{The smart letter.}
  \item{verboseName}{The name of the verbose object.}
  \item{...}{Not used.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{convertComment} \tab  -\cr
 \tab \code{reset} \tab  -\cr
 \tab \code{validate} \tab  -\cr
}


 \bold{Methods inherited from SmartComments}:\cr
compile, convertComment, parse, reset, validate

 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, names, objectSize, print, save


}

\details{
 The 'v' in VComments stands for 'verbose', because of its relationship
 to the \code{\link{Verbose}} class.

 Here is a list of VComments and the \R code that replaces each of them
 by the compiler:

 \bold{Constructors}\cr
 \describe{
  \item{#V0#}{[<args>] - NullVerbose(<args>)}
  \item{#V1#}{[<args>] - Verbose(<args>)}
 }

 \bold{Controls}\cr
 \describe{
  \item{#V=#}{[<variable>] - Sets the name of the <verbose> object.
                             Default is 'verbose'.}
  \item{#V^#}{<threshold> - setThreshold(<verbose>, <threshold>)}
  \item{#V?#}{<expression> - if (isVisible(<verbose>)) \{ <expression> \}}
  \item{#V@#}{<level> - setDefaultLevel(<verbose>, <level>)}
  \item{#Vm#}{<method> <args> - <method>(<verbose>, <args>)}
 }

 \bold{Enters and exits}\cr
 \describe{
  \item{#V+#}{[<message>] - enter(<verbose>, <message>)}
  \item{#V-#}{[<message>] - exit(<verbose>, <message>)}
  \item{#V!#}{[<message>] - pushState(<verbose>)\cr
                            on.exit(popState(<verbose>))\cr
                            If <message>, enter(<verbose>, <message>)}
 }

 \bold{Simple output}\cr
 \describe{
  \item{#Vn#}{<ignored> - newline(<verbose>)}
  \item{#Vr#}{<ignored> - ruler(<verbose>)}
  \item{#Vt#}{<ignored> - timestamp(<verbose>)}
  \item{#Vw#}{[<title>] - warnings(<verbose>, <title>)}
 }

 \bold{Output messages}\cr
 \describe{
  \item{#Vc#}{[<message>] - cat(<verbose>, <message>)}
  \item{#Ve#}{<expression> - eval(<verbose>, <expression>)}
  \item{#Vh#}{<message> - header(<verbose>, <message>)}
  \item{#Vp#}{<object> - print(<verbose>, <object>)}
  \item{#Vs#}{<object> - summary(<verbose>, <object>)}
  \item{#Vz#}{<object> - str(<verbose>, <object>)}
 }
}

\examples{
filename <- system.file("data-ex/exampleVComments.R", package="R.utils")
lines <- readLines(filename)

cat("Code before preprocessing:\n")
displayCode(code=lines, pager="console")

lines <- VComments$compile(lines)

cat("Code after preprocessing:\n")
displayCode(code=lines, pager="console")
}

\author{Henrik Bengtsson}



\keyword{classes}
\keyword{programming}
\keyword{IO}
