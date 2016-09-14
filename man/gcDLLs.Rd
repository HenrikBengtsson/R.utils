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
gcDLLs(quiet=TRUE)
}

\arguments{
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
      library.dynam.unload(.packageName, libpath)
  }
  }
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base]{getLoadedDLLs}}().
}

