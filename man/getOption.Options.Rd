%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Options.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 \name{getOption.Options}
\alias{getOption.Options}
\alias{Options.getOption}
\alias{getOption,Options-method}

 \title{Gets an option}

 \description{
  Gets an option in the options tree structure or return a default value.
 }

 \usage{
\method{getOption}{Options}(this, pathname=NULL, defaultValue=NULL, ...)
}

 \arguments{
   \item{pathname}{A single or a \code{\link[base]{vector}} of \code{\link[base]{character}} strings specifying
      the paths to the options to be queried.
      By default the complete options structure is returned.}
   \item{defaultValue}{The default value to be returned, if option is
      missing. If multiple options are queried at the same times, multiple
      default values may be specified as a \code{\link[base]{vector}} or a \code{\link[base]{list}}.}
   \item{...}{Not used.}
 }

 \value{If a single option is queried, a single value is returned.
   If a \code{\link[base]{vector}} of options are queried, a \code{\link[base]{list}} of values are returned.
   For non-existing options, the default value is returned.}

 \author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

 \seealso{
   \code{\link[R.utils:hasOption.Options]{*hasOption}()}.
   \code{\link[R.utils:setOption.Options]{*setOption}()}.
   For more information see \code{\link{Options}}.
 }


\keyword{internal}
\keyword{methods}
\keyword{programming}
