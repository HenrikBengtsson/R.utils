%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  gcDLLs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{gcDLLs}
\alias{gcDLLs}

\alias{strayDLLs}

\title{Identifies and removes DLLs of packages already unloaded}

\description{
  Identifies and removes DLLs of packages already unloaded.
  When packages are unloaded, they are ideally also unloading any
  DLLs (also known as a dynamic shared object or library) they
  have loaded.  Unfortunately, not all package do this resulting
  in "stray" DLLs still being loaded and occupying \R's limited
  registry.  These functions identifies and removes such DLLs.
}

\usage{
gcDLLs(gc=TRUE, quiet=TRUE)
}

\arguments{
 \item{gc}{If \code{\link[base:logical]{TRUE}}, if there are stray DLLs, then the garbage collector is run before unloading those DLLs.  This is done in order to trigger any finalizers, of which some may need those DLLs, to be called.}
 \item{quiet}{If \code{\link[base:logical]{FALSE}}, a message is outputted for every stray DLL that is unloaded.}
}

\value{
  Returns (invisibly) the set of stray DLLs identified.
}

\details{
  If a library fails to unload, an informative warning is generated.
}

\section{How to unload DLLs in package (for package developers)}{
  To unload a package DLL whenever the package in unloaded, add the
  following to your package:
  \preformatted{
  .onUnload <- function(libpath) {
      ## (1) Force finalizers to be called before removing the DLL
      ##     in case some of them need the DLL.
      gc()

      ## (2) Unload the DLL for this package
      library.dynam.unload(.packageName, libpath)
  }
  }
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{getLoadedDLLs}}().
}

