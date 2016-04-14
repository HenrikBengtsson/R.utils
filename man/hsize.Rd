%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  hsize.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{hsize}
\alias{hsize}

\alias{hsize.numeric}
\alias{hsize.object_size}

\title{Convert byte sizes into human-readable byte sizes}

\description{
 Convert byte sizes into human-readable byte sizes.
}

\usage{
hsize(...)
}

\arguments{
  \item{size}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of sizes.}
  \item{digits}{Number of digits to be presented in the give unit.}
  \item{units}{A \code{\link[base]{character}} string specifying type of units to use.}
  \item{bytes}{The string used for units of bytes without a prefix.
   Applied only if \code{units="auto"}.}
  \item{...}{Not used.}
}

\value{
 A \code{\link[base]{character}} \code{\link[base]{vector}}.
}

\examples{
sizes <- c(1000^(0:8), 1024^(0:8))
df <- data.frame(size=sizes)
df$SI <- hsize(sizes, standard="SI")
df$TB <- hsize(sizes, units="TB")
df$IEC <- hsize(sizes, standard="IEC")
df$TiB <- hsize(sizes, units="TiB")
print(df)
}

\author{Henrik Bengtsson}

\seealso{
 \code{\link[utils]{object.size}}.
}



\keyword{programming}
\keyword{internal}
