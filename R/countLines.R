###########################################################################/**
# @RdocDefault countLines
#
# @title "Counts the number of lines in a text file"
#
# \description{
#  @get "title" by count the number of occurances of platform-independent 
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
    con <- file(file, open="rb");
    on.exit(close(con));
  }

  LF <- as.raw(0x0a);
  CR <- as.raw(0x0d);

  isLastCR <- FALSE;
  nbrOfLines <- as.integer(0);
  while(TRUE) {
    bfr <- readBin(con=con, what=raw(), n=chunkSize);
    if (isLastCR) {
      # Don't count LF following a CR in previous chunk.
      if (bfr[1] == LF)
        bfr[1] <- as.raw(32);
    }

    n <- length(bfr);
    if (n == 0)
      break;

    # Replace all CRLF:s to become LF:s
    idxsCR <- whichVector(bfr == CR);
    nCR <- length(idxsCR);
    if (nCR > 0) {
      idxsCRLF <- idxsCR[(bfr[idxsCR+as.integer(1)] == LF)];
      bfr <- bfr[-idxsCRLF];
      n <- length(bfr);
      rm(idxsCRLF);
      nCR <- length(whichVector(bfr == CR));
    }

    # Count all CR:s and LF:s
    nLF <- length(whichVector(bfr == LF));
    nbrOfLines <- nbrOfLines + (nCR + nLF);

    # If last symbol is CR it might be followed by a LF in
    # the next chunk. If so, don't count that next LF.
    isLastCR <- (bfr[n] == CR);
  } # while()

  nbrOfLines;  
})


############################################################################
# HISTORY:
# 2008-07-23
# o Created.
############################################################################
