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
# @examples "../incl/queryRCmdCheck.Rex"
#
# @author
#*/########################################################################### 
queryRCmdCheck <- function(...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Evidences for R CMD check is running
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  evidences <- list();

  # Command line arguments
  args <- base::commandArgs();
  evidences[["vanilla"]] <- is.element("--vanilla", args);

  # Check the working directory
  pwd <- getwd();
  dirname <- basename(pwd);
  parent <- basename(dirname(pwd));
  pattern <- ".+[.]Rcheck$";

  # Is 'R CMD check' checking tests?
  evidences[["tests"]] <- ((regexpr(pattern, parent) != -1) && (dirname == "tests"));

  # Is the current working directory as expected?
  evidences[["pwd"]] <- (evidences[["tests"]] || (regexpr(pattern, dirname) != -1));

  # Is 'R CMD check' checking examples?
  evidences[["examples"]] <- is.element("CheckExEnv", search());


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Conclusions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!evidences$vanilla || !evidences$pwd) {
    res <- "notRunning";
  } else if (evidences$tests) {
    res <- "checkingTests";
  } else if (evidences$examples) {
    res <- "checkingExamples";
  } else {
    res <- "notRunning";
  }

  res;
} # queryRCmdCheck()


############################################################################
# HISTORY:
# 2011-11-03
# o Created.
############################################################################
