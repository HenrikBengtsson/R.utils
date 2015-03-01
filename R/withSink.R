###########################################################################/**
# @RdocFunction withSink
#
# @title "Evaluate an R expression while temporarily diverting output"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{expr}{The R expression to be evaluated.}
#   \item{file}{A writable @connection or a @character string naming the
#    file to write to.}
#   \item{append}{If @TRUE, the diverted output is appended to the file,
#    otherwise not.}
#   \item{type}{A @character string specifying whether to divert output
#    sent to the standard output or the standard error.
#    See @see "base::sink" for details.}
#   \item{envir}{The @environment in which the expression should be evaluated.}
# }
#
# \value{
#  Returns the results of the expression evaluated.
# }
#
# \details{
#   Upon exit (also on errors), this function will close the requested
#   "sink".  If additional sinks (of any type) where also opened during
#   the evaluation, those will also be closed with a warning.
# }
#
# @author
#
# @examples "../incl/withSink.Rex"
#
# \seealso{
#   Internally, @see "base::sink" is used to divert any output.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
withSink <- function(expr, file, append=FALSE, type=c("output", "message"), envir=parent.frame()) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument '.expr':
  expr <- substitute(expr)

  # Argument 'envir':
  if (!is.environment(envir))
    throw("Argument 'envir' is not a list: ", class(envir)[1L])

  # Argument 'append':
  append <- as.logical(append)

  # Argument 'type':
  type <- match.arg(type)

  # Argument 'file':
  fileT <- NULL
  if (is.null(file)) {
    throw("Argument 'file' must be either a connection of a character string: NULL")
  } else if (inherits(file, "connection")) {
##    info <- summary(con)
##    if (!info[["can write"]]) {
##      throw("Argument 'file' is a connection but not writable: ", info[["description"]])
##    }
  } else {
    file <- as.character(file)
    file <- Arguments$getWritablePathname(file)

    # WORKAROUND:
    # sink(..., type="message") does not allow to sink to an unopen file.
    if (type == "message") {
      fileT <- file(file, open=ifelse(append, "wt", "w"))
      on.exit({
        if (!is.null(fileT)) close(fileT)
      })
      file <- fileT
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Record entry sinks
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  idx0 <- list()
  for (tt in c("message", "output")) {
    idx0[[tt]] <- sink.number(type=tt)
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Divert output
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  sink(file=file, append=append, type=type)

    # Record index of the opened sink
  openedIdx <- sink.number(type=type)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Upon exit, close the requested sink and all other added sinks
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  on.exit({
    # Close all opened sinks, including those opened while
    # evaluating 'expr'.
    maxTries <- 10L
    for (tt in c("message", "output")) {
      idx <- sink.number(type=tt)
      count <- 0L
      while (idx > idx0[[tt]]) {
        count <- count + 1L
        if (count > maxTries) {
          throw(sprintf("Failed to close temporarily opened sink %d of type '%s' after trying %d times", idx, tt, maxTries))
        }

        # Warn if sink was opened by 'expr'
        if (idx != openedIdx || tt != type) {
          warning(sprintf("Closing unclosed sink #%d of type '%s' that was opened during evaluation.", idx, tt))
        }

        sink(file=NULL, type=tt)

        # Currently opened sink?
        idx <- sink.number(type=tt)
      }
    } # for (tt ...)

    # Assert that exit sinks are the same as the entry ones
    for (tt in c("message", "output")) {
      idx <- sink.number(type=tt)
      if (idx != idx0[[tt]]) {
        msg <- sprintf("Failed to close temporarily opened sink #%d of type '%s'", idx, tt)
        if (tt == "message") {
          # Throwing an error when 'message':s are diverted may
          # pass unnoticed.  At least report the prompt, if it exists.
          if (interactive()) {
            readline(sprintf("ERROR: %s. Press ENTER to continue...", msg))
          }
        }
        throw(msg)
      }
    }

    if (!is.null(fileT)) {
      close(fileT)
      fileT <- NULL
    }
  }, add=FALSE) # on.exit()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Evaluate expression
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  eval(expr, envir=envir)
} # withSink()


############################################################################
# HISTORY:
# 2014-09-15
# o Created.
############################################################################
