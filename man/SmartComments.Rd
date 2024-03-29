%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  SmartComments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{SmartComments}
\docType{class}
\alias{SmartComments}


\title{Abstract class SmartComments}

\description{
 Package:  R.utils \cr
\bold{Class SmartComments}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\emph{\code{SmartComments}}\cr

\bold{Directly known subclasses:}\cr
\link[R.utils]{LComments}, \link[R.utils]{VComments}\cr

public abstract static class \bold{SmartComments}\cr
extends \link[R.oo]{Object}\cr



 Abstract class SmartComments.
}

\usage{
SmartComments(letter=NA, ...)
}

\arguments{
  \item{letter}{A single \code{\link[base]{character}}.}
  \item{...}{Not used.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{compile} \tab  -\cr
 \tab \code{convertComment} \tab  -\cr
 \tab \code{parse} \tab  -\cr
 \tab \code{reset} \tab  -\cr
 \tab \code{validate} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, names, objectSize, print, save


}

\details{
 A "smart" source-code comment is an \R comment, which start with a '#',
 but is followed by a single letter, then a single symbol and a second
 '#' and then an option character string, and there must not be any code
 before the comment on the same line. In summary, a smart comment line
 has format: \code{<white spaces>#<letter><symbol># <some text>}.

 Example code with two smart comments (VComments):
 \preformatted{
   x <- 2
   #V1# threshold=-1
   #Vc# A v-comment log message
   cat("Hello world")
 }
 which after compilation becomes
 \preformatted{
   x <- 2
   verbose <- Verbose(threshold=-1)
   if (verbose) { cat(verbose, "A v-comment log message"); }
   cat("Hello world")
 }
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{VComments}}.
}



\keyword{classes}
\keyword{programming}
\keyword{IO}
