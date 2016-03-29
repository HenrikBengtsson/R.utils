%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  tmpfile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{tmpfile}
\alias{tmpfile}


\title{Creates a temporary file with content}

\description{
 Creates a temporary file with content that will auto delete as soon as there is no longer
 any references to it.
}

\usage{
tmpfile(content=NULL, ...)
}

\arguments{
  \item{content}{A \code{\link[base]{character}} string to be written to the file.}
  \item{...}{Optional arguments passed to \code{\link[base]{tempfile}}().}
}

\value{
 The absolute pathname to the temporary file.
}

\examples{
  md5 <- tools::md5sum(tmpfile("Hello world!"))
  print(md5)
}

\author{Henrik Bengtsson}

\seealso{
 \code{\link[base]{tempfile}}().
}




\keyword{programming}
\keyword{file}
\keyword{internal}
