%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  System.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{openBrowser.System}
\alias{openBrowser.System}
\alias{System.openBrowser}
\alias{openBrowser.System}
\alias{openBrowser,System-method}


\title{Opens an HTML document using the OS default HTML browser}

\usage{
## Static method (use this):
## System$openBrowser(query, ...)

## Don't use the below:
\method{openBrowser}{System}(this, query, ...)
}

\arguments{
  \item{query}{The path to document to be opened by the browser.}
}

\description{
 Opens an HTML document using the OS default HTML browser. Note that this
 call is dependent on the operating system (currently only Windows and
 Unix are supported).
 The document given by \code{query} can either be a local file or a
 web page. If the \code{query} was given as non-url string, i.e. as a
 standard file pathname, the method will automatically check if the
 file exists and conform the query to a correct url starting with
 \code{file:}. The used url will be returned as a string.

 Any suggestion how implement this on Apple system are welcome!
}

\value{
  Returns the url of the \code{query}.
}

\details{
  It is hard to create a good cross-platform \code{openBrowser()} method,
  but here is one try.

  In the following text \code{<browser>} is the value returned by
  \code{getOption("browser")} and \code{<url>} is the URL conformed
  query, which starts with either \code{file:} or \code{http:}.

  On a \emph{Windows} system, if \code{<browser>} is not \code{\link[base]{NULL}},
  first

    \code{shell.exec(<browser> <url>)}

  is tried. If this fails, then

    \code{shell.exec(<url>)}

  is tried. Using this latter approach will \emph{not} guarantee that
  an HTML browser will open the url, e.g. depending on the Windows file
  associations, a \code{*.txt} file might be opened by NotePad. However,
  it will most likely open something.
  If \code{<browser>} contains spaces, make sure it is quoted.

  On \emph{Unix} systems, \code{system()} will be used to call:

  \code{ <browser> -remote "openURL(<url>)" 2> /dev/null || <browser> <url> &}

}

\examples{\dontrun{
  System$openBrowser("http://www.r-project.org/")
}}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  For more information see \code{\link{System}}.
}
\keyword{internal}
\keyword{methods}
