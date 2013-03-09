%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  moveInSearchPath.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{moveInSearchPath}
\alias{moveInSearchPath.default}
\alias{moveInSearchPath}

 \title{Moves a environment in the search path to another position}

 \description{
  Moves a environment in the search path to another position.
 }

 \usage{
\method{moveInSearchPath}{default}(from, to, where=c("before", "after"), ...)
}

 \arguments{
   \item{from}{An \code{\link[base]{integer}} specifying the position of the environment
     to be moved, or a \code{\link[base]{character}} specifying the name of the environment
     to be moved.}
   \item{to}{The destination position like the \code{from} argument.}
   \item{where}{A \code{\link[base]{character}} string specify where in relation to the
     destination position the enviroment should be moved.}
   \item{...}{Not used.}
 }

 \value{
   Returns (invisibly) the name of the environment moved, if it was
   moved, otherwise \code{\link[base]{NULL}}.
 }

 \details{
   It is not possible to move the first environment in the search path,
   i.e. the so called global environment.
 }

 \examples{
   # Make package 'utils' come behind 'datasets' in the search path
   moveInSearchPath("package:utils", "package:datasets", where="after")
 }

 \author{Henrik Bengtsson}

 \seealso{
   \code{\link[base]{search}}().
 }



\keyword{programming}
\keyword{internal}
