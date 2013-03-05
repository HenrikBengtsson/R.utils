%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  displayCode.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{displayCode}
\alias{displayCode.default}
\alias{displayCode}

\title{Displays the contents of a text file with line numbers and more}

\description{
 Displays the contents of a text file with line numbers and more.
}

\usage{
\method{displayCode}{default}(con=NULL, code=NULL, numerate=TRUE, lines=-1, wrap=79, highlight=NULL, pager=getOption("pager"), ...)
}

\arguments{
  \item{con}{A \code{\link[base:connections]{connection}} or a \code{\link[base]{character}} string filename.
    If \code{code} is specified, this argument is ignored.}
  \item{code}{A \code{\link[base]{character}} \code{\link[base]{vector}} of code lines to be displayed.}
  \item{numerate}{If \code{\link[base:logical]{TRUE}}, line are numbers, otherwise not.}
  \item{lines}{If a single \code{\link[base]{numeric}}, the maximum number of lines to show.
    If -1, all lines are shown. If a \code{\link[base]{vector}} of \code{\link[base]{numeric}}, the lines
    numbers to display.}
  \item{wrap}{The (output) column \code{\link[base]{numeric}} where to wrap lines.}
  \item{highlight}{A \code{\link[base]{vector}} of line number to be highlighted.}
  \item{pager}{If \code{"none"}, code is not displayed in a pager, but
    only returned. For other options, see \code{\link[base]{file.show}}().}
  \item{...}{Additional arguments passed to \code{\link[base]{file.show}}(),
    which is used to display the formatted code.}
}

\value{
  Returns (invisibly) the formatted code as a \code{\link[base]{character}} string.
}

\examples{
file <- system.file("DESCRIPTION", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file)

file <- system.file("NEWS", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file, numerate=FALSE, lines=100:110, wrap=65)

file <- system.file("NEWS", package="R.utils")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file, lines=100:110, wrap=65, highlight=c(101,104:108))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
 \code{\link[base]{file.show}}().
}



\keyword{file}
\keyword{IO}
