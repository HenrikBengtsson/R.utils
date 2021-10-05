###########################################################################/**
# @RdocFunction queryRCmdCheck
#
# @title "Gets the  on R CMD check if the current R session was launched by it"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#  Returns @character string
#  \code{"checkingTests"} if 'R CMD check' runs one one of the package tests,
#  and \code{"checkingExamples"} if it runs one of the package examples.
#  If the current R session was not launched by 'R CMD check',
#  then \code{"notRunning"} is returned.
# }
#
# \section{Limitations}{
#  This function only works if the working directory has not been changed.
# }
#
# @examples "../incl/queryRCmdCheck.Rex"
#
# @author
#*/########################################################################### 
queryRCmdCheck <- function(...) {
  evidences <- list()

  # Memoization
  evidences[["R_CMD_CHECK"]] <- isTRUE(as.logical(Sys.getenv("R_CMD_CHECK")))

  # Command line arguments
  args <- commandArgs()
  evidences[["vanilla"]] <- is.element("--vanilla", args)

  # Check the working directory
  pwd <- getwd()
  dirname <- basename(pwd)
  parent <- basename(dirname(pwd))
  pattern <- ".+[.]Rcheck$"

  # Is 'R CMD check' checking tests?
  evidences[["tests"]] <- (
    (regexpr(pattern, parent) != -1) && 
    (regexpr("^tests(|_.*)$", dirname) != -1)
  )

  # Is the current working directory as expected?
  evidences[["pwd"]] <- (evidences[["tests"]] || (regexpr(pattern, dirname) != -1))

  # Is 'R CMD check' checking examples?
  evidences[["examples"]] <- is.element("CheckExEnv", search())


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Conclusions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (evidences$R_CMD_CHECK) {
    res <- "R_CMD_CHECK"
  } else if (!evidences$vanilla || !evidences$pwd) {
    res <- "notRunning"
  } else if (evidences$tests) {
    res <- "checkingTests"
  } else if (evidences$examples) {
    res <- "checkingExamples"
  } else {
    res <- "notRunning"
  }

  # Make it stick
  if (res != "notRunning") {
    Sys.setenv(R_CMD_CHECK = "true")
  }

  attr(res, "evidences") <- evidences
  
  res
}
