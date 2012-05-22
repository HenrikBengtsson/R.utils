%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  systemR.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{systemR}
\alias{systemR.default}
\alias{systemR}
 \alias{systemR}

 \title{Launches another R process from within R}

 \usage{\method{systemR}{default}(command="", ..., Rcommand="R", verbose=FALSE)}

 \description{
   Launches another R process from within R via \code{\link[base]{system}}() by automatically locating the
   R executable, cf [1].
 }

 \arguments{
   \item{command}{A \code{\link[base]{character}} string be appended to the \code{\link[base]{system}}()
         call.  If a \code{\link[base]{vector}}, then the strings are concatenated separated
         with a space.}
   \item{...}{Additional arguments passed to \code{\link[base]{system}}().}
   \item{Rcommand}{A \code{\link[base]{character}} string specifying the basename of
    the R executable.}
   \item{verbose}{A \code{\link[base]{logical}} or a \code{\link{Verbose}} object.}
 }

 \value{
   Returns what \code{\link[base]{system}}() returns.
 }

 \examples{
res <- systemR("--slave -e cat(runif(1))", intern=TRUE)
cat("A random number: ", res, "\n", sep="")
}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \references{
  [1] R-devel thread 'Best way to locate R executable from within R?',
      May 22, 2012.
 }

 \seealso{
  The R executable is located using \code{\link[base]{R.home}}(), which
  is then launched using \code{\link[base]{system}}().
 }



\keyword{programming}
\keyword{IO}
