###########################################################################/**
# @RdocDefault countLines
#
# @title "Counts the number of lines in a text file"
#
# \description{
#  @get "title" by counting the number of occurances of platform-independent
#  newlines (CR, LF, and CR+LF [1]), including a last line with neither.
#  An empty file has zero lines.
# }
#
# @synopsis
#
# \arguments{
#   \item{file}{A @connection or a pathname.}
#   \item{chunkSize}{The number of bytes read in each chunk.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an non-negative @integer.
# }
#
# \details{
#   Both compressed and non-compressed files are supported.
# }
#
# @author
#
# @examples "../incl/countLines.Rex"
#
# \references{
#   [1] Page \emph{Newline}, Wikipedia, July 2008.
#       \url{http://en.wikipedia.org/wiki/Newline}
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("countLines", "default", function(file, chunkSize=50e6, ...) {
  # Argument 'file':
  if (inherits(file, "connection")) {
    con <- file;
  } else {
    file <- as.character(file);
    con <- gzfile(file, open="rb");
    on.exit(close(con));
  }

  LF <- as.raw(0x0a);
  CR <- as.raw(0x0d);
  SPC <- as.raw(32L);

  isLastCR <- isLastLF <- FALSE;
  isEmpty <- TRUE;
  nbrOfLines <- 0L;
  while(TRUE) {
    bfr <- readBin(con=con, what=raw(), n=chunkSize);
    if (isLastCR) {
      # Don't count LF following a CR in previous chunk.
      if (bfr[1L] == LF)
        bfr[1L] <- SPC;
    }

    n <- length(bfr);
    if (n == 0L)
      break;

    isEmpty <- FALSE;

    # Replace all CRLF:s to become LF:s
    idxsCR <- which(bfr == CR);
    nCR <- length(idxsCR);
    if (nCR > 0L) {
      idxsCRLF <- idxsCR[(bfr[idxsCR + 1L] == LF)];
      if (length(idxsCRLF) > 0L) {
        bfr <- bfr[-idxsCRLF];
        n <- length(bfr);
        idxsCRLF <- NULL; # Not needed anymore
        nCR <- length(which(bfr == CR));
      }
    }

    # Count all CR:s and LF:s
    nLF <- length(which(bfr == LF));
    nbrOfLines <- nbrOfLines + (nCR + nLF);

    if (n == 0L) {
      isLastCR <- isLastLF <- FALSE;
    } else {
      # If last symbol is CR it might be followed by a LF in
      # the next chunk. If so, don't count that next LF.
      bfrN <- bfr[n];
      isLastCR <- (bfrN == CR);
      isLastLF <- (bfrN == LF);
    }
  } # while()

  # Count any last line without newline too
  if (!isEmpty) {
    if (!isLastLF) nbrOfLines <- nbrOfLines + 1L;
    attr(nbrOfLines, "lastLineHasNewline") <- isLastLF;
  }

  nbrOfLines;
})


############################################################################
# HISTORY:
# 2014-10-03
# o Now countLines() automatically supports gzipped files as well.
#   Thanks to Sarah Nelson at Dept of Biostatistics of University of
#   Washington for the suggestion.
# 2014-08-25
# o BUG FIX: countLines() would not work for newlines of type '\r'.
# o BUG FIX: countLines() would not count the last line if it did not
#   contain a newline, despite it was documented to do so.
# 2008-07-23
# o Created.
############################################################################
