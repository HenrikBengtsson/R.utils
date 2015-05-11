###########################################################################/**
# @RdocDefault compressPDF
#
# @title "Compresses a PDF (into a new PDF)"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{filename, path}{The filename and (optional) path of the
#      PDF to be compressed.}
#   \item{outFilename, outPath}{The generated PDF.}
#   \item{skip}{If @TRUE and an existing output file, then it is returned.}
#   \item{overwrite}{If @FALSE, an error is thrown if the output file
#      already exists, otherwise not.}
#   \item{...}{Additional arguments passed to @see "tools::compactPDF",
#      e.g. \code{gs_quality}.}
# }
#
# \value{
#   Returns the pathname of the generated PDF.
# }
#
# \examples{\dontrun{
#   pathnameZ <- compressPDF("report.pdf", outPath="foo", gs_quality="ebook")
# }}
#
# @author
#
# \seealso{
#   Internally @see "tools::compactPDF" is utilized.
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("compressPDF", "default", function(filename, path=NULL, outFilename=basename(pathname), outPath=NULL, skip=FALSE, overwrite=FALSE, ...) {
  ## Argument 'filename' and 'path':
  pathname <- Arguments$getReadablePathname(filename, path=path)

  ## Argument 'outFilename' and 'outPath':
  pathnameD <- Arguments$getWritablePathname(outFilename, path=outPath, mustNotExist=FALSE)

  ## Skipping?
  if (isFile(pathnameD)) {
    if (skip) return(pathnameD)
    if (!overwrite) Arguments$getWritablePathname(pathnameD, mustNotExist=TRUE)
  }

  ## WORKAROUND #1: tools::compactPDF(paths) compresses all PDFs in paths
  ## if length(paths) == 1 so working with a temporary directory.
  pathD <- dirname(pathnameD)

  pathT <- sprintf("%s.tmp", pathD)
  pathT <- Arguments$getWritablePath(pathT)
  on.exit(removeDirectory(pathT))

  ## WORKAROUND #2: tools::compactPDF(paths) does not handle spaces
  ## in filenames.
  pathnameDT <- tempfile(tmpdir=pathT, fileext=".pdf")
  copyFile(pathname, pathnameDT)

  size0 <- file.info(pathnameDT)$size
  res <- tools::compactPDF(paths=pathT, ...)
  size1 <- file.info(pathnameDT)$size

  ## If compression < 10% or < 10kB, then considered not worth it
  ## by tools::compactPDF()
  if (nrow(res) == 0L) {
    warning(sprintf("PDF compression saved less than 10%% or less than 10kB on the original file size (%g bytes) so tools::compactPDF() decided to keep the PDF as is: %s", file.info(pathnameDT)$size, pathnameDT))
  }

  renameFile(pathnameDT, pathnameD, overwrite=TRUE)

  ## Report on compression ratio
  comp <- c(size0, size1)
  names(comp) <- c(pathname, pathnameD)
  attr(pathnameD, "result") <- comp

  pathnameD
})


############################################################################
# HISTORY:
# 2015-05-11
# o Created.
############################################################################
