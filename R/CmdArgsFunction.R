##############################################################################
# This code has to come first in a library. To do this make sure this file
# is named "000.R" (zeros).
##############################################################################

setConstructorS3("CmdArgsFunction", function(fcn=function() {}, output=print, ...) {
  # Argument 'fcn':
  stopifnot(is.function(fcn))

  # Argument 'output':
  stopifnot(is.function(output))

  attr(fcn, "output") <- output
  extend(fcn, "CmdArgsFunction")
})

setMethodS3("print", "CmdArgsFunction", function(x, ..., call=!interactive(), envir=parent.frame()) {
  # Nothing todo?
  if (!call) return(NextMethod("print"))

  # Call function...
  res <- withVisible(cmdArgsCall(x, ..., envir=envir))

  # Should the result be printed?
  if (res$visible) {
    output <- attr(x, "output")
    if (is.null(output)) output <- print
    output(res$value)
  }

  # Return nothing
  invisible(return())
}, protected=TRUE)

