%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  popBackupFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{popBackupFile}
\alias{popBackupFile.default}
\alias{popBackupFile}

\title{Drops a backup suffix from the backup pathname}

\usage{
\method{popBackupFile}{default}(filename, path=NULL, suffix=".bak", isFile=TRUE,
  onMissing=c("ignore", "error"), drop=TRUE, ..., verbose=FALSE)
}

\description{
 Drops a backup suffix from the backup pathname and, by default, restores an existing backup file
 accordingly by renaming it.
}

\arguments{
  \item{filename}{The filename of the backup file.}
  \item{path}{The path of the file.}
  \item{suffix}{The suffix of the filename to be dropped.}
  \item{isFile}{If \code{\link[base:logical]{TRUE}}, the backup file must exist and
     will be renamed.  If \code{\link[base:logical]{FALSE}}, it is only the pathname string
     that will be modified. For details, see below.}
  \item{onMissing}{A \code{\link[base]{character}} string specifying what to do if the
     backup file does not exist.}
  \item{drop}{If \code{\link[base:logical]{TRUE}}, the backup file will be dropped in case
     the original file already exists or was successfully restored.}
  \item{...}{Not used.}
  \item{verbose}{A \code{\link[base]{logical}} or \code{\link{Verbose}}.}
}

\value{
  Returns the pathname with the backup suffix dropped.
}

\author{Henrik Bengtsson}

\seealso{
 See \code{\link{pushBackupFile}}() for more details and an example.
}




\keyword{utilities}
\keyword{programming}
\keyword{IO}
