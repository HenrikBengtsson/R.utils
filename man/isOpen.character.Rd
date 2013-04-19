%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  isOpen.character.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 \name{isOpen.character}
\alias{isOpen.character}

 \title{Checks if there is an open connection to a file}

 \usage{
\method{isOpen}{character}(pathname, rw=c("read", "write"), ...)
}

 \description{
  Checks if there is an open connection to a file.
 }

 \arguments{
   \item{pathname}{An \code{\link[base]{character}} string.}
   \item{rw}{A \code{\link[base]{character}} \code{\link[base]{vector}}.
     If \code{"read"}, a file is considered to be open if there exist an
     open connection that can read from that file.
     If \code{"write"}, a file is considered to be open if there exist an
     open connection that can write to that file.
     Both these values may be specified.
   }
   \item{...}{Not used.}
 }

 \value{
   Returns \code{\link[base:logical]{TRUE}} if there exists a file \code{\link[base:connections]{connection}} that is open,
   otherwise \code{\link[base:logical]{FALSE}}.
 }

 \author{Henrik Bengtsson}

 \seealso{
   See \code{isOpen()} in \code{\link[base]{connections}}.
   \code{\link[base]{showConnections}}().
 }



\keyword{methods}
\keyword{IO}
\keyword{utilities}
