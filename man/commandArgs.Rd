%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  commandArgs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{commandArgs}
\alias{commandArgs}


\title{Extract Command Line Arguments}

\usage{commandArgs(asValues=FALSE, excludeReserved=FALSE, excludeEnvVars=FALSE, os=NULL, ...)}

\description{
 Provides access to a copy of the command line arguments supplied when
 this \R session was invoked.  This function is backward compatible with
 \code{\link[base]{commandArgs}}() of the \pkg{base} package, but adds more
 features.
}

\arguments{
  \item{asValues}{If \code{\link[base:logical]{TRUE}}, a named \code{\link[base]{list}} is returned, where command
    line arguments of type \code{--foo} will be returned as \code{\link[base:logical]{TRUE}} with
    name \code{foo}, and arguments of type \code{-foo=value} will be
    returned as \code{\link[base]{character}} string \code{value} with name \code{foo}.
    In addition, if \code{-foo value} is given, this is interpreted
    as \code{-foo=value}, as long as \code{value} does not start with
    a double dash (\code{--}).}
  \item{excludeReserved}{If \code{\link[base:logical]{TRUE}}, arguments reserved by \R are excluded,
    otherwise not. Which the reserved arguments are depends on operating
    system. For details, see Appendix B on "Invoking R" in
    \emph{An Introduction to R}.}
  \item{excludeEnvVars}{If \code{\link[base:logical]{TRUE}}, arguments that assigns environment
    variable are excluded, otherwise not. As described in \code{R --help},
    these are arguments of format <key>=<value>.}
  \item{os}{A \code{\link[base]{vector}} of \code{\link[base]{character}} strings specifying which set of
     reserved arguments to be used. Possible values are \code{"unix"},
     \code{"mac"}, \code{"windows"}, \code{"ANY"} or \code{"current"}.
     If \code{"current"}, the current platform is used. If \code{"ANY"} or
     \code{\link[base]{NULL}}, all three OSs are assumed for total cross-platform
     compatibility.}
  \item{...}{Passed to \code{\link[base]{commandArgs}}() of the \pkg{base} package.}
}

\value{
  Returns a \code{\link[base]{character}} \code{\link[base]{vector}} containing the names of the executable and
  the user-supplied command line arguments, or a \code{\link[base]{list}} if \code{asValue}
  is \code{\link[base:logical]{TRUE}}.

  The first element is the name
  of the executable by which \R was invoked. As far as I am aware, the
  exact form of this element is platform dependent. It may be the fully
  qualified name, or simply the last component (or basename) of the
  application. The attribute \code{isReserved} is a \code{\link[base]{logical}} \code{\link[base]{vector}}
  specifying if the corresponding command line argument is a reserved
  \R argument or not.
}

\details{
 This function should be fully backward compatible with the same
 function in the base package.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\examples{
  # Get all arguments
  commandArgs()

  ## Spawn a copy of this application as it was invoked.
  ## system(paste(commandArgs(), collapse=" "))

  # Get only "private" arguments and not the name of the R executable.
  commandArgs(excludeReserved=TRUE)[-1]

  # If R is started as
  #   R DATAPATH=../data --args --root="do da" --foo bar --details --a=2
  # then commandArgs(asValue=TRUE) returns a list like
  #   list(R=NA, DATAPATH="../data" args=TRUE, root="do da", foo="bar", details=TRUE, a="2")
}

\seealso{
  \code{\link[base]{commandArgs}}(), \code{\link[base]{Platform}}()
}


\keyword{programming}
