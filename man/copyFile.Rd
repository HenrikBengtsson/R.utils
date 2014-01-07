%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  copyFile.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{copyFile}
\alias{copyFile.default}
\alias{copyFile}

\title{Copies a file atomically}

\description{
 Copies a file atomically,
 by first copying to a temporary file and then renaming that file.
}

\usage{
\method{copyFile}{default}(srcPathname, destPathname, skip=!overwrite, overwrite=FALSE, ..., validate=TRUE,
  verbose=FALSE)
}

\arguments{
  \item{srcPathname}{The source file to be copied.}
  \item{destPathname}{The destination file to be created.}
  \item{skip, overwrite}{If a destination file does not exist, these
   arguments have no effect.
   If such a file exists and \code{skip} is \code{\link[base:logical]{TRUE}}, then no copying is
   attempted and \code{\link[base:logical]{FALSE}} is returned (indicating that no copying was made).
   If such a file exists, both \code{skip} and \code{overwrite} are \code{\link[base:logical]{FALSE}}
   then an exception is thrown.
   If a destination file exists, \code{skip} is \code{\link[base:logical]{FALSE}} and
   \code{overwrite} is \code{\link[base:logical]{TRUE}}, then it is overwritten and \code{\link[base:logical]{TRUE}} is returned.
   If the copying/overwriting failed, for instance due to non sufficient
   file permissions, an informative exception is thrown.}
  \item{...}{Additional \emph{named} arguments passed to \code{\link[base]{file.copy}}().
   Non-named or unknown arguments are ignored.}
  \item{validate}{If \code{\link[base:logical]{TRUE}}, validation of the copied file is applied,
   otherwise not.}
  \item{verbose}{See \code{\link[R.utils]{Verbose}}.}
}

\value{
  Returns a \code{\link[base]{logical}} indicating whether a successful file copy was
  completed or not, or equivalently.  In other words, \code{\link[base:logical]{TRUE}} is returned
  if the file was succesfully copied, and \code{\link[base:logical]{FALSE}} if not.
  If an error occurs, an informative exception is thrown.
  If the error occurs while renaming the temporary file to the final name,
  the temporary file will remain in the destination directory.
}

\details{
  If the source file does not exists (or is not a file), then an
  informative exception is thrown.

  If the source and destination pathnames are the same, it is not safe
  to copy (which can lead to either corrupt or lost files) and an
  informative exception is thrown.

  If (and only if) the file is successfully copied and argument
  \code{validate} is \code{\link[base:logical]{TRUE}}, then this method also asserts that the
  file size of the destination matches that of the source, otherwise
  an informative exception is thrown.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[base:files]{file.copy}()}.
}


\keyword{internal}
