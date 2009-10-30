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

 \usage{Options(options=list(), ...)}

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
 \tab \code{as.character} \tab  -\cr
 \tab \code{as.list} \tab  -\cr
 \tab \code{equals} \tab  -\cr
 \tab \code{getLeaves} \tab  -\cr
 \tab \code{getOption} \tab  -\cr
 \tab \code{hasOption} \tab  -\cr
 \tab \code{names} \tab  -\cr
 \tab \code{nbrOfOptions} \tab  -\cr
 \tab \code{setOption} \tab  -\cr
 \tab \code{str} \tab  -\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save

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

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}


\keyword{classes}
\keyword{programming}
