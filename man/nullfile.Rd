%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  nullfile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{nullfile}
\alias{nullfile}


\title{Gets the pathname of the NULL device on the current platform}

\description{
 Gets the pathname of the NULL device on the current platform.  On Windows, it returns \code{"NUL"}.  On all other
 platforms include Unix and macOS it returns \code{"/dev/null"}.
}

\usage{
  nullfile()
}

\value{
  Returns a \code{\link[base]{character}} string.
}

\author{Henrik Bengtsson}



\keyword{programming}
\keyword{file}
