%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  attachLocally.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{attachLocally.list}
\alias{attachLocally.list}
\alias{attachLocally.list}

 \alias{attachLocally.data.frame}
 \alias{attachLocally.environment}
 \alias{attachLocally}

 \title{Assigns an objects elements locally}

 \usage{
\method{attachLocally}{list}(object, fields=NULL, excludeFields=NULL, overwrite=TRUE, envir=parent.frame(), ...)
}

 \description{
  Assigns an objects elements locally.
 }

 \arguments{
   \item{object}{An object with named elements such as an \code{\link[base]{environment}},
     a \code{\link[base]{list}}, or a \code{\link[base]{data.frame}}.}
   \item{fields}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying elements to be copied.
      If \code{\link[base]{NULL}}, all elements are considered.}
   \item{excludeFields}{A \code{\link[base]{character}} \code{\link[base]{vector}} specifying elements not to
      be copied.  This has higher priority than \code{fields}.}
   \item{overwrite}{If \code{\link[base:logical]{FALSE}}, fields that already exists will not be
      copied.}
   \item{envir}{The \code{\link[base]{environment}} where elements are copied to.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) a \code{\link[base]{character}} \code{\link[base]{vector}} of the fields copied.
 }

 \examples{
foo <- function(object) {
  cat("Local objects in foo():\n")
  print(ls())

  attachLocally(object)

  cat("\nLocal objects in foo():\n")
  print(ls())

  for (name in ls()) {
    cat("\nObject '", name, "':\n", sep="")
    print(get(name, inherits=FALSE))
  }
}

a <- "A string"
l <- list(a=1:10, msg="Hello world", df=data.frame(a=NA, b=2))
foo(l)
print(a)
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
  \code{\link[R.oo:attachLocally.Object]{attachLocally}()} of class Object.
  \code{\link[base]{attach}}().
 }



\keyword{methods}
\keyword{utilities}
\keyword{programming}
