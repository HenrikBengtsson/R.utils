%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  TextStatusBar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{TextStatusBar}
\docType{class}
\alias{TextStatusBar}


\title{A status bar at the R prompt that can be updated}

\description{
 Package:  R.utils \cr
\bold{Class TextStatusBar}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{TextStatusBar}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{TextStatusBar}\cr
extends \link[R.oo]{Object}\cr



 A status bar at the R prompt that can be updated.
}

\usage{TextStatusBar(fmt=paste("\%-", getOption("width") - 1, "s", sep = ""), ...)}

\arguments{
  \item{fmt}{A \code{\link[base]{character}} format string to be used by \code{\link[base]{sprintf}}().
    Default is a left-aligned string of full width.}
  \item{...}{Named arguments to be passed to \code{\link[base]{sprintf}}() together
    with the format string.}
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:flush.TextStatusBar]{flush}} \tab Flushes the output.\cr
 \tab \code{\link[R.utils:getLabel.TextStatusBar]{getLabel}} \tab Gets the current value of a label.\cr
 \tab \code{\link[R.utils:newline.TextStatusBar]{newline}} \tab Writes a newline.\cr
 \tab \code{\link[R.utils:popMessage.TextStatusBar]{popMessage}} \tab Adds a message above the status bar.\cr
 \tab \code{\link[R.utils:setLabel.TextStatusBar]{setLabel}} \tab Sets the value of a label.\cr
 \tab \code{\link[R.utils:setLabels.TextStatusBar]{setLabels}} \tab Sets new values of given labels.\cr
 \tab \code{\link[R.utils:update.TextStatusBar]{update}} \tab Updates the status bar (visually).\cr
 \tab \code{\link[R.utils:updateLabels.TextStatusBar]{updateLabels}} \tab Sets the new values of given labels and updates the status bar.\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, gc, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, registerFinalizer, save


}

\details{
  A label with name \code{hfill} can be used for automatic horizontal
  filling.  It must be \code{\link[base]{numeric}} and be immediate before a string
  label such that a \code{hfill} label and the following string label
  together specifies an sprintf format such as \code{"\%*-s"}.
  The value of \code{hfill} will be set such that the resulting status
  bar has width equal to \code{getOption("width")-1} (the reason for the
  -1 is to prevent the text status bar from writing into the next line).
  If more than one \code{hfill} label is used their widths will be
  uniformly distributed.  Left over spaces will be distributed between
  \code{hfill} labels with initial values of one.
}

\examples{
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Read all HTML files in the base package
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- system.file("html", package="base");
files <- list.files(path, full.names=TRUE)
nfiles <- length(files)

cat(sprintf("Reading \%d files in \%s:\n", nfiles, path))

# Create a status bar with four labels
sb <- TextStatusBar("File: \%-*s [\%3.0f\%\% \%6.0f lines \%-8s]",
                hfill=1, file="", progress=0, nlines=0, time="")

nlines <- 0
for (kk in seq(length=nfiles)) {
  file <- files[kk]

  # Update the status bar
  if (sb) {
    setLabel(sb, "progress", 100*kk/nfiles)
    if (kk \%\% 10 == 1 || kk == nfiles)
      setLabel(sb, "file", substr(basename(file), 1, 44))

    size <- file.info(file)$size/1024;
    # popMessage() calls update() too
    popMessage(sb, sprintf("Processing \%s (\%.2fkB)",
                                       basename(file), size))
    flush(sb)
  }

  # Read the file
  lines <- readLines(file)
  nlines <- nlines + length(lines)

  # Emulate slow process
  if (interactive()) {
    Sys.sleep(rexp(1, rate=40))
  }

  # Update the status bar
  if (sb) {
    setLabel(sb, "nlines", nlines)
    setLabel(sb, "time", format(Sys.time(), "\%H:\%M:\%S"))
    update(sb)
  }
}
cat("\n")
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}



\keyword{classes}
\keyword{programming}
\keyword{IO}
