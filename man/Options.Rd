%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Options.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{Options}
\docType{class}
\alias{Options}


 \title{The Options class}

 \usage{
Options(options=list(), ...)
}

 \arguments{
   \item{options}{A tree \code{\link[base]{list}} structure of options.}
   \item{...}{Not used.}
 }

 \description{
  Package:  R.utils \cr
\bold{Class Options}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{Options}\cr

\bold{Directly known subclasses:}\cr
\link[R.utils]{Settings}\cr

public static class \bold{Options}\cr
extends \link[R.oo]{Object}\cr



  A class to set and get either options stored in a \code{\link[base]{list}} tree structure.

  Each option has a pathname. The format of a pathname is similar to a
  (Unix) filesystem pathname, e.g. "graphics/cex". See examples for
  more details.
 }

 \section{Fields and Methods}{
  \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:as.character.Options]{as.character}} \tab Returns a character string version of this object.\cr
 \tab \code{\link[R.utils:as.list.Options]{as.list}} \tab Gets a list representation of the options.\cr
 \tab \code{\link[R.utils:equals.Options]{equals}} \tab Checks if this object is equal to another Options object.\cr
 \tab \code{\link[R.utils:getLeaves.Options]{getLeaves}} \tab Gets all (non-list) options in a flat list.\cr
 \tab \code{\link[R.utils:getOption.Options]{getOption}} \tab Gets an option.\cr
 \tab \code{\link[R.utils:hasOption.Options]{hasOption}} \tab Checks if an option exists.\cr
 \tab \code{\link[R.utils:names.Options]{names}} \tab Gets the full pathname of all (non-list) options.\cr
 \tab \code{\link[R.utils:nbrOfOptions.Options]{nbrOfOptions}} \tab Gets the number of options set.\cr
 \tab \code{\link[R.utils:setOption.Options]{setOption}} \tab Sets an option.\cr
 \tab \code{\link[R.utils:str.Options]{str}} \tab Prints the structure of the options.\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save


 }

 \value{
  The constructor returns an Options object.
 }

 \details{
  Note, this class and its methods do \emph{not} operate on the global
  options structure defined in \R (\link{options}).
 }

 \examples{
local <- Options()

# Query a missing option
cex <- getOption(local, "graphics/cex")
cat("graphics/cex =", cex, "\n")  # Returns NULL

# Query a missing option with default value
cex <- getOption(local, "graphics/cex", defaultValue=1)
cat("graphics/cex =", cex, "\n")  # Returns NULL

# Set option and get previous value
oldCex <- setOption(local, "graphics/cex", 2)
cat("previous graphics/cex =", oldCex, "\n")  # Returns NULL

# Set option again and get previous value
oldCex <- setOption(local, "graphics/cex", 3)
cat("previous graphics/cex =", oldCex, "\n")  # Returns 2

# Query a missing option with default value, which is ignored
cex <- getOption(local, "graphics/cex", defaultValue=1)
cat("graphics/cex =", cex, "\n")  # Returns 3

# Query multiple options with multiple default values
multi <- getOption(local, c("graphics/cex", "graphics/pch"), c(1,2))
print(multi);

# Check existance of multiple options
has <- hasOption(local, c("graphics/cex", "graphics/pch"))
print(has);

# Get a subtree of options
graphics <- getOption(local, "graphics")
print(graphics)

# Get the complete tree of options
all <- getOption(local)
print(all)


}

 \author{Henrik Bengtsson}


\keyword{classes}
\keyword{programming}
