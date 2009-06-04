%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Verbose.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{warnings.Verbose}
\alias{warnings.Verbose}
\alias{Verbose.warnings}
\alias{warnings.Verbose}
\alias{warnings,Verbose-method}


\title{Outputs any warnings recorded}

\description{
  Outputs any warnings recorded.
  The output is indented according to \code{\link[R.utils:enter.Verbose]{*enter}()}/\code{\link[R.utils:exit.Verbose]{*exit}()}
  calls.
}

\usage{\method{warnings}{Verbose}(this, title="Warnings detected:", reset=TRUE, ..., level=this$defaultLevel)}

\arguments{
 \item{title}{A \code{\link[base]{character}} string to be outputted before the warnings, if
   they exists.}
 \item{reset}{If \code{\link[base:logical]{TRUE}}, the warnings are reset afterward, otherwise not.}
 \item{...}{Arguments passed to \code{\link[R.utils:cat.Verbose]{*cat}()}.}
 \item{level}{A \code{\link[base]{numeric}} value to be compared to the threshold.}
}

\value{
  Returns nothing.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{Verbose}}.
}


\keyword{internal}
\keyword{methods}
\keyword{programming}
