%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  shell.exec2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{shell.exec2}
\alias{shell.exec2}


\title{Open a file or URL using Windows File Associations}

\usage{
shell.exec2(file)
}

\description{
  Open a file or URL using Windows File Associations using \code{shell.exec()} but makes some tweaks
  to filenames to make them more likely to be opened properly.

  \emph{This function is only applicable on Windows systems.}
}

\arguments{
  \item{file}{A \code{\link[base]{character}} string specifying a file or an URL.}
}

\value{
  Returns nothing.
}

\details{
  Before passing a \emph{file} on the file system to
  \code{shell.exec()}, this function:
   (i) unmaps any mapped drive letters used in the pathname
       (e.g. 'X:/foo.bar.html' to 'C:/Users/Joe/bar.html'),
  (ii) and replaces any forward slashed with backward ones
       (e.g. 'C:/Users/Joe/bar.html' to 'C:\\Users\\Joe\\bar.html').
  URLs are passed as is to \code{shell.exec()}.

  The reason for (i) is that some web browsers (e.g. Google Chrome)
  will not open files on mapped drives.
  The reason for (ii) is that if forward slashes are used, then
  \code{shell.exec()} will give an error that the file was
  not found (at least with the default Windows shell).
}

\section{Setting on startup}{
  The intended usage of this function is to set it as the default
  browser for \code{\link[utils]{browseURL}}.  Just add the following to
  your \code{\link{.Rprofile}} file:
  \preformatted{
    if (.Platform$OS.type == "windows")
      options(browser=function(...) R.utils::shell.exec2(...))
  }
  This will only load (not attach) the \pkg{R.utils} package
  when the browser function is actual used.
}

\author{Henrik Bengtsson}



\keyword{file}
\keyword{IO}
