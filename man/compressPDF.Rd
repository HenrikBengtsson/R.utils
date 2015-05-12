%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  compressPDF.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{compressPDF}
\alias{compressPDF.default}
\alias{compressPDF}

\title{Compresses a PDF (into a new PDF)}

\description{
 Compresses a PDF (into a new PDF).
}

\usage{
\method{compressPDF}{default}(filename, path=NULL, outFilename=basename(pathname),
  outPath="compressedPDFs", skip=FALSE, overwrite=FALSE, compression="gs(ebook)+qpdf",
  ...)
}

\arguments{
  \item{filename, path}{The filename and (optional) path of the
     PDF to be compressed.}
  \item{outFilename, outPath}{The generated PDF.}
  \item{skip}{If \code{\link[base:logical]{TRUE}} and an existing output file, then it is returned.}
  \item{overwrite}{If \code{\link[base:logical]{FALSE}}, an error is thrown if the output file
     already exists, otherwise not.}
  \item{compression}{A \code{\link[base]{character}} \code{\link[base]{vector}} of compression methods
     to apply.  This overrides any low-level arguments passed via
     \code{...} that \code{\link[tools]{compactPDF}}.}
  \item{...}{Additional arguments passed to \code{\link[tools]{compactPDF}},
     e.g. \code{gs_quality}.}
}

\value{
  Returns the pathname of the generated PDF.
}

\examples{\dontrun{
  pathnameZ <- compressPDF("report.pdf")
}}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[tools]{compactPDF}} is utilized.
}



\keyword{file}
\keyword{IO}
