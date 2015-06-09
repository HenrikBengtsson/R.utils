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
#   \item{compression}{A @character @vector of compression methods
#      to apply.  This overrides any low-level arguments passed via
#      \code{...} that @see "tools::compactPDF".}
#   \item{...}{Additional arguments passed to @see "tools::compactPDF",
#      e.g. \code{gs_quality}.}
# }
#
# \value{
#   Returns the pathname of the generated PDF.
# }
#
# \examples{\dontrun{
#   pathnameZ <- compressPDF("report.pdf")
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
setMethodS3("compressPDF", "default", function(filename, path=NULL, outFilename=basename(pathname), outPath="compressedPDFs", skip=FALSE, overwrite=FALSE, compression="gs(ebook)+qpdf", ...) {
  ## Argument 'filename' and 'path':
  pathname <- Arguments$getReadablePathname(filename, path=path)

  ## Argument 'outFilename' and 'outPath':
  pathnameD <- Arguments$getWritablePathname(outFilename, path=outPath, mustNotExist=FALSE)

  ## Argument 'compression':
  if (!is.null(compression)) {
    compression <- Arguments$getCharacters(compression)
    compression <- trim(compression)
    compression <- compression[nzchar(compression)]
  }

  ## Skipping?
  if (isFile(pathnameD)) {
    if (skip) return(pathnameD)
    if (!overwrite) Arguments$getWritablePathname(pathnameD, mustNotExist=TRUE)
  }


  ## Parse 'compression' argument
  compress_args <- list()
  if (length(compression) > 0L) {
    compressionT <- unlist(strsplit(compression, split="+", fixed=TRUE))
    compressionT <- trim(compressionT)
    compressionT <- compressionT[nzchar(compressionT)]

    cmethod <- gsub("[(].*", "", compressionT)
    carg <- gsub("[)].*", "", gsub(".*[(]", "", compressionT))
    keep <- is.element(cmethod, c("gs", "qpdf"))
    if (any(!keep)) {
      warning("Ignoring unknown PDF compression method: ",
              paste(sQuote(cmethod[!keep]), collapse=", "))
      compression <- compression[keep]
      cmethod <- cmethod[keep]
      carg <- carg[keep]
    }

    for (kk in seq_along(cmethod)) {
      if (cmethod[kk] == "gs") {
        opts <- unlist(strsplit(carg[kk], split=",", fixed=TRUE))
        if (length(opts) > 0L) compress_args$gs_quality <- opts[1L]
        if (length(opts) > 1L) compress_args$gs_extras <- opts[-1L]
      }
    }
  } # if (length(compression) > 0L)


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

  ## File size before
  size0 <- file.info(pathnameDT)$size

  ## Arguments to tools::compactPDF()
  args <- list(paths=pathT, ...)

  ## Override with 'compression' specifications
  for (name in names(compress_args)) {
    args[[name]] <- compress_args[[name]]
  }

  ## Call tools::compactPDF()
  res <- do.call(tools::compactPDF, args=args)

  ## File size after
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
