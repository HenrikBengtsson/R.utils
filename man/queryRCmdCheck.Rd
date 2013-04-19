%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  queryRCmdCheck.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{queryRCmdCheck}
\alias{queryRCmdCheck}


\title{Gets the  on R CMD check if the current R session was launched by it}

\description{
  Gets the  on R CMD check if the current R session was launched by it.
}

\usage{
queryRCmdCheck(...)
}

\arguments{
 \item{...}{Not used.}
}

\value{
 Returns \code{\link[base]{character}} string
 \code{"checkingTests"} if 'R CMD check' runs one one of the package tests,
 and \code{"checkingExamples"} if it runs one of the package examples.
 If the current R session was not launched by 'R CMD check',
 then \code{"notRunning"} is returned.
}

\section{Limitations}{
 This function only works if the working directory has not been changed.
}

\examples{

status <- queryRCmdCheck()
if (status != "notRunning") {
  cat("The current R session was launched by R CMD check. Status: ", status, "\n")
} else {
  cat("The current R session was not launched by R CMD check.\n")
}

# Display how R was launched
print(base::commandArgs())

# Display loaded packages etc.
print(search())

# Display current working directory
print(getwd())
}

\author{Henrik Bengtsson}

