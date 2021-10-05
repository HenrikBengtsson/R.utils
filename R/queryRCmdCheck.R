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

  # Check the working directory; any components containing <pkg>.Rcheck/tests
  evidences[["pwd"]] <- FALSE
  path <- getwd()
  last_path <- ""
  while (path != last_path) {
    last_path <- path
    if (basename(path) == "tests") {
      if (grepl(".+[.]Rcheck$", dirname(path))) {
        evidences[["pwd"]] <- TRUE
	break
      }
    }
    path <- dirname(path)
  }
  
  # Is 'R CMD check' checking examples?
  evidences[["examples"]] <- is.element("CheckExEnv", search())


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Conclusions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (evidences$R_CMD_CHECK) {
    res <- "R_CMD_CHECK"
  } else if (!evidences[["vanilla"]]) {
    res <- "notRunning"
  } else if (evidences[["examples"]]) {
    res <- "checkingExamples"
  } else if (evidences[["pwd"]]) {
    res <- "checkingTests"
  } else {
    res <- "notRunning"
  }

  # Make it stick
  if (res != "notRunning") {
    Sys.setenv(R_CMD_CHECK = "true")
  }

  attr(res, "evidences") <- evidences

  if (isTRUE(as.logical(Sys.getenv("R_R_CACHE_DEBUG")))) {
    file <- file.path("~", ".cache", "R", sprintf("R.cache-%d.log", Sys.getpid()))
    dir.create(file, recursive = TRUE, showWarnings = FALSE)
    cat(paste(utils::capture.output({
      cat(sprintf("Call: %s\n", paste(commandArgs(), collapse = " ")))
      cat(sprintf("PID: %s\n", Sys.getpid()))
      cat(sprintf("pwd: %s\n", getwd()))
      cat(sprintf("search(): %s\n", paste(sQuote(search()), collapse = ", ")))
      cat(sprintf("R_CMD_CHECK: %s\n", sQuote(Sys.getenv("R_CMD_CHECK", NA_character_))))
      cat(sprintf("queryRCmdCheck(): %s\n", sQuote(queryRCmdCheck())))
      cat("-------------\n")
    }), collapse = "\n"), "\n", file = file)
  }

  res
}
