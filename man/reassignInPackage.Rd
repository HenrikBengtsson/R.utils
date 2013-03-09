%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  reassignInPackage.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{reassignInPackage}
\alias{reassignInPackage.default}
\alias{reassignInPackage}

 \title{Re-assigns a new value to an existing object in a loaded package}

 \description{
  Re-assigns a new value to an existing object in a loaded package.
 }

 \usage{
\method{reassignInPackage}{default}(name, pkgName, value, keepOld=TRUE, ...)
}

 \arguments{
   \item{name}{The name of the object to be replaced."}
   \item{pkgName}{The name of the package where the object lives."}
   \item{value}{The new value to be assigned.}
   \item{keepOld}{If \code{\link[base:logical]{TRUE}}, the old value is kept as an attribute in
     the new object.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) the new object.
 }

 \author{Henrik Bengtsson}

 \seealso{
   See \code{assignInNamespace()} in \code{\link[utils]{getFromNamespace}}.
 }


\keyword{internal}
