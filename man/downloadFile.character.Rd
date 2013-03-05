%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  downloadFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{downloadFile.character}
\alias{downloadFile.character}
\alias{downloadFile}

\title{Downloads a file}

\description{
  Downloads a file.
}

\usage{
\method{downloadFile}{character}(url, filename=basename(url), path=NULL, skip=TRUE, overwrite=!skip, ..., username=NULL, password=NULL, binary=TRUE, dropEmpty=TRUE, verbose=FALSE)
}

\arguments{
 \item{url}{A \code{\link[base]{character}} string specifying the URL to be downloaded.}
 \item{filename, path}{(optional) \code{\link[base]{character}} strings specifying the
   local filename and the path of the downloaded file.}
 \item{skip}{If \code{\link[base:logical]{TRUE}}, an already downloaded file is skipped.}
 \item{overwrite}{If \code{\link[base:logical]{TRUE}}, an already downloaded file is overwritten,
   otherwise an error is thrown.}
 \item{...}{Additional arguments passed to \code{\link[utils]{download.file}}.}
 \item{username, password}{\code{\link[base]{character}} strings specifying the username
   and password for authenticated downloads.  The alternative is to
   specify these via the URL.}
 \item{binary}{If \code{\link[base:logical]{TRUE}}, the file is downloaded exactly "as is", that is,
   byte by byte (recommended).}
   which means it willand the downloaded file is empty, the file
 \item{dropEmpty}{If \code{\link[base:logical]{TRUE}} and the downloaded file is empty, the file
   is ignored and \code{\link[base]{NULL}} is returned.}
 \item{verbose}{A \code{\link[base]{logical}}, \code{\link[base]{integer}}, or a \code{\link{Verbose}} object.}
}

\value{
  Returns the local pathname to the downloaded filename,
  or \code{\link[base]{NULL}} if no file was downloaded.
}

\details{
  Currently arguments \code{username} and \code{password} are only used
  for downloads via URL protocol 'https'.  The 'https' protocol requires
  that 'wget' is available on the system.
}

\examples{\dontrun{
 pathname <- downloadFile("http://www.r-project.org/index.html", path="www.r-project.org/")
 print(pathname)
}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  Internally \code{\link[utils]{download.file}} is used.
  That function may generate an empty file if the URL is not available.
}



\keyword{methods}
\keyword{programming}
\keyword{file}
