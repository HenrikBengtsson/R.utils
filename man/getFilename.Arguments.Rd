%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Arguments.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Arguments$getFilename}
\alias{Arguments$getFilename}
\alias{getFilename.Arguments}
\alias{Arguments.getFilename}
\alias{getFilename,Arguments-method}

\title{Gets and validates a filename}

\description{
 Gets and validates a filename.
}

\usage{
## Static method (use this):
## Arguments$getFilename(filename, nchar=c(1, 128), class=c("safe"), .name=NULL,
##   .type="filename", ...)

## Don't use the below:
\method{getFilename}{Arguments}(static, filename, nchar=c(1, 128), class=c("safe"), .name=NULL,
  .type="filename", ...)
}

\arguments{
  \item{filename}{A \code{\link[base]{character}} string.}
  \item{nchar}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the range
    of valid filename lengths.}
  \item{class}{A \code{\link[base]{character}} string specifying the class of valid
    filenames.}
  \item{.name}{The name of the argument validated.}
  \item{.type}{Not used.}
  \item{...}{Not used.}
}

\value{
 Returns a \code{\link[base]{character}} string if filename is valid,
 otherwise an exception is thrown.
}

\details{
  When argument \code{class="safe"}, the following 86 ASCII characters
  are allowed in filenames:
  \preformatted{
     #$%&'()+,-.0123456789;=         (24 including initial space)
    @ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_  (31)
    `abcdefghijklmnopqrstuvwxyz{|}~  (31)
  }
  This class of filenames has been extensively tested on for
  cross-platform support on Microsoft Windows, OSX and various
  Unix flavors.
}

\references{
  [1] Microsoft, \emph{Naming Files, Paths, and Namespaces} (Section 'Windows Naming Conventions'), 2012. \url{http://msdn.microsoft.com/en-us/library/aa365247.aspx#naming_conventions}.
}

\author{Henrik Bengtsson}

\seealso{
  For more information see \code{\link{Arguments}}.
}
\keyword{internal}
\keyword{methods}
