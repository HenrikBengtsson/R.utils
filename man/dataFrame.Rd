%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  dataFrame.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{dataFrame}
\alias{dataFrame.default}
\alias{dataFrame}

\title{Allocates a data frame with given column classes}

\usage{\method{dataFrame}{default}(colClasses, nrow=1, ...)}

\description{
 Allocates a data frame with given column classes.
}

\arguments{
 \item{colClasses}{A \code{\link[base]{character}} \code{\link[base]{vector}} of column classes,
   cf. \code{\link[utils]{read.table}}.}
 \item{nrow}{An \code{\link[base]{integer}} specifying the number of rows of the
   allocated data frame.}
 \item{...}{Not used.}
}

\value{
 Returns an NxK \code{\link[base]{data.frame}} where N equals \code{nrow} and
 K equals \code{length(colClasses)}.
}

\examples{
  df <- dataFrame(colClasses=c(a="integer", b="double"), nrow=10)
  df[,1] <- sample(1:nrow(df))
  df[,2] <- rnorm(nrow(df))
  print(df)
}

\seealso{
  \code{\link[base]{data.frame}}.
}



\keyword{manip}
\keyword{utilities}
