%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  nullfile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{nullfile}
\alias{nullfile}

\alias{nullcon}

\title{Gets the pathname or a connection to the NULL device on the current platform}

\description{
 Gets the pathname or a connection to the NULL device on the current platform.
}

\usage{
  nullfile()
  nullcon()
}

\value{
  \code{nullfile()} returns a \code{\link[base]{character}} string, which is \code{"/dev/null"}
  except on Windows where it is \code{"NUL"}.
  \code{nullcon()} returns a (binary) \code{\link[base:connections]{connection}} to the NULL device.
}

\author{Henrik Bengtsson}



\keyword{programming}
\keyword{file}
