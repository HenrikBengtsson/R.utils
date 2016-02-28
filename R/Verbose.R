###########################################################################/**
# @RdocClass Verbose
#
# @title "Class to writing verbose messages to a connection or file"
#
# \description{
#  @classhierarchy
#
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{con}{A @connection or a @character string filename.}
#   \item{on}{A @logical indicating if the writer is on or off.}
#   \item{threshold}{A @numeric threshold that the \code{level} argument
#     of any write method has to be equal to or larger than in order to the
#     message being written. Thus, the lower the threshold is the more and
#     more details will be outputted.}
#   \item{timestamp}{If @TRUE, each output is preceded with a timestamp.}
#   \item{removeFile}{If @TRUE and \code{con} is a filename, the file is
#     first deleted, if it exists.}
#   \item{asGString}{If @TRUE, all messages are interpreted as
#     @see "GString" before being output, otherwise not.}
#   \item{core}{Internal use only.}
#   \item{...}{Not used.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# \section{Output levels}{
#   As a guideline, use the following levels when outputting verbose/debug
#   message using the Verbose class. For a message to be shown, the output
#   level must be greater than (not equal to) current threshold.
#   Thus, the lower the threshold is set, the more messages will be seen.
#
#   \itemize{
#    \item{<= -100}{Only for debug messages, i.e. messages containing all
#      necessary information for debugging purposes and to find bugs in
#      the code. Normally these messages are so detailed so they will be
#      a pain for the regular user, but very useful for bug reporting and
#      bug tracking by the developer.}
#    \item{-99 -- -11}{Detailed verbose messages. These will typically be
#      useful for the user to understand what is going on and do some simple
#      debugging fixing problems typically due to themselves and not due to
#      bugs in the code.}
#    \item{-10 -- -1}{Verbose messages. For example, these will typically
#      report the name of the file to be read, the current step in a sequence
#      of analysis steps and so on. These message are not very useful for
#      debugging.}
#    \item{0}{Default level in all output methods and default threshold.
#      Thus, by default, messages at level 0 are not shown.}
#    \item{>= +1}{Message that are always outputted (if threshold is
#      kept at 0).  We recommend not to output message at this level, because
#      methods should be quiet by default (at the default threshold 0).}
#   }
# }
#
# \section{A compatibility trick and a speed-up trick}{
#   If you want to include calls to Verbose in a package of yours in order
#   to debug code, but not use it otherwise, you might not want to load
#   R.utils all the time, but only for debugging.
#   To achieve this, the value of a reference variable to a Verbose class
#   is always set to @TRUE, cf. typically an Object reference has value @NA.
#   This makes it possible to use the reference variable as a first test
#   before calling Verbose methods. Example:
#   \preformatted{
#     foo <- function(..., verbose=FALSE) {
#       # enter() will never be called if verbose==FALSE, thus no error.
#       verbose && enter(verbose, "Loading")
#     }
#   }
#
#   Thus, R.utils is not required for \code{foo()}, but for
#   \code{foo(verbose==Verbose(level=-1))} it is.
#
#   Moreover, if using the @see "NullVerbose" class for ignoring all verbose
#   messages, the above trick will indeed speed up the code, because
#   the value of a NullVerbose reference variable is always @FALSE.
# }
#
# \section{Extending the Verbose class}{
#   If extending this class, make sure to output messages via
#   @seemethod "writeRaw" or one of the other output methods (which in
#   turn all call the former).
#   This guarantees that @seemethod "writeRaw" has full control of the
#   output, e.g. this makes it possible to split output to standard
#   output and to file.
# }
#
# @examples "../incl/Verbose.Rex"
#
# @author
#
# \seealso{
#   @see "NullVerbose".
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("Verbose", function(con=stderr(), on=TRUE, threshold=0, asGString=TRUE, timestamp=FALSE, removeFile=TRUE, core=TRUE, ...) {
  if (is.character(con)) {
    if (removeFile && isFile(con))
      file.remove(con);
  } else if (inherits(con, "connection")) {
  } else if (!is.null(con)) {
    stop("Unknown type on argument 'con': ", class(con));
  }

  if (!is.numeric(threshold) || length(threshold) != 1)
    throw("Argument 'threshold' must be a single numeric value.");

  # Argument 'threshold':
  threshold <- as.numeric(threshold);

  # Argument 'asGString':
  asGString <- as.logical(asGString);

  # Argument 'timestamp':
  timestamp <- as.logical(timestamp);

  # Argument 'core':
  if (!is.logical(core))
    throw("Argument 'core' is not logical: ", mode(core));

  # Argument 'on':
  on <- as.logical(on);

  extend(Object(core), "Verbose",
    .timestamp       = timestamp,
    .timestampFormat = "%Y%m%d %H:%M:%S|",
    indentPos        = 0,
    indentStep       = 1,
    rightMargin      = 75,
    threshold        = threshold,
    defaultLevel     = 0,
    asGString        = asGString,
    .ignore          = !on,
    .con             = con,
    .stack           = c(),
    .stackLevel      = c()
  )
})



###########################################################################/**
# @RdocMethod "as.character"
#
# @title "Returns a character string version of this object"
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
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("as.character", "Verbose", function(x, ...) {
  # To please R CMD check
  this <- x;

  s <- paste(class(this)[1], ": isOn()=", isOn(this), ",
                                         threshold=", this$threshold, sep="");
  s <- paste(s, ", timestamp=", this$.timestamp, sep="");
  s <- paste(s, ", timestampFormat=", this$.timestampFormat, sep="");
  s;
})



#########################################################################/**
# @RdocMethod equals
#
# @title "Checks if this object is equal to another"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{other}{Another Object.}
#   \item{...}{Not used.}
# }
#
# \value{Returns @TRUE if they are equal, otherwise @FALSE.}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("equals", "Verbose", function(this, other, ...) {
  res <- FALSE;
  if (!inherits(other, "Verbose")) {
    attr(res, "reason") <- "Not same class";
    return(res);
  }

  fields <- getFields(this, private=TRUE);
  for (field in fields) {
    if (!equals(this[[field]], other[[field]])) {
      attr(res, "reason") <- field;
      return(res);
    }
  }

  TRUE;
}, protected=TRUE)




###########################################################################/**
# @RdocMethod setThreshold
#
# @title "Sets verbose threshold"
#
# \description{
#   @get "title". Output requests below this threshold will be ignored.
# }
#
# @synopsis
#
# \arguments{
#  \item{threshold}{A @numeric threshold.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns old threshold.
# }
#
# @author
#
# \seealso{
#   @seemethod "getThreshold" and @seemethod "isVisible".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("setThreshold", "Verbose", function(this, threshold, ...) {
  if (!is.numeric(threshold) || length(threshold) != 1)
    throw("Argument 'threshold' must be a scalar.");
  old <- this$threshold;
  this$threshold <- threshold;
  invisible(old);
})


###########################################################################/**
# @RdocMethod setDefaultLevel
#
# @title "Sets the current default verbose level"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{level}{A @numeric value.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns old default level.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("setDefaultLevel", "Verbose", function(this, level, ...) {
  if (is.na(as.numeric(level)))
    throw("Invalid value on argument 'level': ", level);
  oldLevel <- this$defaultLevel;
  this$defaultLevel <- as.numeric(level);
  invisible(oldLevel);
})



###########################################################################/**
# @RdocMethod getThreshold
#
# @title "Gets current verbose threshold"
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
#   Returns a @numeric value.
# }
#
# @author
#
# \seealso{
#   @seemethod "setThreshold" and @seemethod "isVisible".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("getThreshold", "Verbose", function(this, ...) {
  threshold <- this$threshold;

  # Assert that threshold is within the valid range.  This is part of the
  # transition of move from negative to positive verbose levels:
  # 1. Disallow all positive value for a long time.
  # 2. Yet later, ignore the sign, i.e. abs(threshold).
  # 3. Much later, disallow all negative values for a long time.
  # 4. Possibly, allow negative values after all this.
  # /HB 2011-09-18
  validRange <- getOption("R.utils::Verbose/validThresholdRanges", c(-Inf,Inf));
  if (!is.null(validRange)) {
    validRange <- Arguments$getDoubles(validRange, length=c(2,2));
    if (threshold < validRange[1] || threshold > validRange[2]) {
      throw(sprintf("The threshold is out of the valid range [%s,%s]: %s",
                                    validRange[1], validRange[2], threshold));
    }
  }

  threshold;
})


###########################################################################/**
# @RdocMethod isVisible
#
# @title "Checks if a certain verbose level will be shown or not"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{level}{A @numeric value to be compared to the threshold.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE, if given level is greater than (not equal to) the current
#   threshold, otherwise @FALSE is returned.
# }
#
# @author
#
# \seealso{
#   @seemethod "getThreshold" and @seemethod "setThreshold".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("isVisible", "Verbose", function(this, level=this$defaultLevel, ...) {
  isOn(this) && (is.null(level) || level > this$threshold);
})



###########################################################################/**
# @RdocMethod as.logical
#
# @title "Gets a logical value of this object"
#
# \description{
#   @get "title".  Returns \code{isVisible(this, level=this$defaultLevel)}.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @logical value.
# }
#
# @author
#
# \seealso{
#   @seemethod "isVisible".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("as.logical", "Verbose", function(x, ...) {
  # To please R CMD check
  this <- x;

  isVisible(this, level=this$defaultLevel);
})



###########################################################################/**
# @RdocMethod as.double
#
# @title "Gets a numeric value of this object"
#
# \description{
#   @get "title".  Returns what @seemethod "getThreshold" returns.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric value.
# }
#
# @author
#
# \seealso{
#   @seemethod "getThreshold" and @seemethod "getThreshold".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("as.double", "Verbose", function(x, ...) {
  # To please R CMD check
  this <- x;
  getThreshold(this, ...);
})




###########################################################################/**
# @RdocMethod on
#
# @title "Turn on the output"
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
#   Returns (invisibly) @TRUE.
# }
#
# @author
#
# \seealso{
#   @seemethod "off" and @seemethod "isOn".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("on", "Verbose", function(this, ...) {
  this$.ignore <- FALSE;
  invisible(TRUE);
})


###########################################################################/**
# @RdocMethod off
#
# @title "Turn off the output"
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
#   Returns (invisibly) @FALSE.
# }
#
# @author
#
# \seealso{
#   @seemethod "on" and @seemethod "isOn".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("off", "Verbose", function(this, ...) {
  this$.ignore <- TRUE;
  invisible(FALSE);
})


###########################################################################/**
# @RdocMethod isOn
#
# @title "Checks if the output is on"
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
#   Returns @TRUE if output is on, otherwise @FALSE.
# }
#
# @author
#
# \seealso{
#   @seemethod "on" and @seemethod "off".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("isOn", "Verbose", function(this, ...) {
  !as.logical(this$.ignore);
})




###########################################################################/**
# @RdocMethod writeRaw
#
# @title "Writes objects if above threshold"
#
# \description{
#   @get "title".
#   This method is used by all other methods of this class for output.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @see "base::paste".}
#  \item{sep}{The default separator @character string.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("writeRaw", "Verbose", function(this, ..., sep="", level=this$defaultLevel) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  msg <- paste(..., sep="");
  if (this$asGString) {
    if (length(msg) > 1) {
      msg <- sapply(msg, FUN=function(s) {
        as.character(GString(s));
      });
    } else {
      msg <- as.character(GString(msg));
    }
  }

  cat(file=this$.con, append=TRUE, msg);

  invisible(TRUE);
}, protected=TRUE)




###########################################################################/**
# @RdocMethod cat
#
# @title "Concatenates and prints objects if above threshold"
#
# \description{
#   @get "title".
#   The output is indented according to @seemethod "enter"/@seemethod "exit"
#   calls.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @see "base::cat".}
#  \item{sep}{The default separator @character string.}
#  \item{newline}{If @TRUE, a newline is added at the end, otherwise not.}
#  \item{level}{A @numeric value to be compared to the threshold.}
#  \item{timestamp}{A @logical indicating if output should start with a
#     timestamp, or not.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seemethod "timestampOn" and \code{timestampOff}().
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("cat", "Verbose", function(this, ..., sep="", newline=TRUE, level=this$defaultLevel, timestamp=this$.timestamp) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  indent <- paste(rep(" ", length.out=this$indentPos), collapse="");
  msg <- paste(..., sep=sep);
  msg <- paste(indent, msg, sep="");
  if (timestamp) {
    fmt <- this$.timestampFormat;
    if (is.function(fmt)) {
      stamp <- fmt();
    } else {
      stamp <- format(Sys.time(), fmt);
    }
    msg <- paste(stamp, msg, sep="")
  }
  if (newline)
    msg <- paste(msg, "\n", sep="");

  # Write output
  writeRaw(this, msg);
})


###########################################################################/**
# @RdocMethod printf
#
# @title "Formats and prints object if above threshold"
#
# \description{
#   @get "title".
#   The output is indented according to @seemethod "enter"/@seemethod "exit"
#   calls.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @see "base::sprintf".}
#  \item{fmtstr}{A @character string specify the printf format string.}
#  \item{level}{A @numeric value to be compared to the threshold.}
#  \item{timestamp}{A @logical indicating if output should start with a
#     timestamp, or not.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("printf", "Verbose", function(this, fmtstr, ..., level=this$defaultLevel, timestamp=this$.timestamp) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  cat(this, sprintf(fmtstr, ...), newline=FALSE, timestamp=timestamp);
})


###########################################################################/**
# @RdocMethod enter
# @aliasmethod enterf
#
# @title "Writes a message and indents the following output"
#
# \description{
#   @get "title".
#   The output is indented according to @seemethod "enter"/@seemethod "exit"
#   calls.
# }
#
# \usage{
#   @usage "enter,Verbose"
#   @usage "enterf,Verbose"
# }
#
# \arguments{
#  \item{fmtstr}{An @see "base::sprintf" format string, which together with
#    \code{...} constructs the message.}
#  \item{...}{Objects to be passed to @seemethod "cat"
#             (or @see "base::sprintf").}
#  \item{indent}{The number of characters to add to the indentation.}
#  \item{sep}{The default separator @character string.}
#  \item{suffix}{A @character string to be appended to the end of the message.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("enter", "Verbose", function(this, ..., indent=this$indentStep, sep="", suffix="...", level=this$defaultLevel) {
  msg <- paste(..., sep=sep);
  msg <- as.character(GString(msg));
  cat(this, msg, suffix, sep=sep, level=level);
  this$.stack <- c(this$.stack, msg);
  this$.stackLevel <- c(this$.stackLevel, level);
  this$indentPos <- this$indentPos + indent;
  invisible(TRUE);
})


setMethodS3("enterf", "Verbose", function(this, fmtstr, ..., indent=this$indentStep, sep="", suffix="...", level=this$defaultLevel) {
  enter(this, sprintf(fmtstr, ...), indent=indent, sep=sep, suffix=suffix, level=level);
})



###########################################################################/**
# @RdocMethod exit
#
# @title "Writes a message and unindents the following output"
#
# \description{
#   @get "title".
#   The output is indented according to @seemethod "enter"/@seemethod "exit"
#   calls.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @seemethod "cat". If not specified
#      the message used in the corresponding @seemethod "enter" call is used.}
#  \item{indent}{The number of characters to be removed from the indentation.}
#  \item{sep}{The default separator @character string.}
#  \item{suffix}{A @character string to be appended to the end of the message.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("exit", "Verbose", function(this, ..., indent=-this$indentStep, sep="", suffix="...done", level=NULL) {
  args <- list(...);

  # Argument 'indent'
  if (this$indentPos + indent < 0) {
    throw("Cannot exit(): Argument 'indent' makes 'indentPos' negative: ",
                                                    this$indentPos + indent);
  }

  len <- length(this$.stack);

  # Balance check
  if (length(len) == 0) {
    throw("Internal error:  Cannot exit(). Unbalanced enter()/exit() stack - it is already empty.");
  }

  lastMsg <- this$.stack[len];
  this$.stack <- this$.stack[-len];
  lastLevel <- this$.stackLevel[len];
  this$.stackLevel <- this$.stackLevel[-len];

  this$indentPos <- this$indentPos + indent;

  if (length(args) == 0) {
    msg <- lastMsg;
  } else {
    msg <- paste(..., sep=sep);
  }

  if (is.null(level))
    level <- lastLevel;

  cat(this, msg, suffix, sep="", level=level);

  invisible(TRUE);
})



###########################################################################/**
# @RdocMethod more
#
# @title "Creates a cloned instance with a lower threshold"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{dThreshold}{The amount the threshold should be lowered.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a cloned @see "Verbose" object.
# }
#
# @author
#
# \seealso{
#   @seemethod "less"
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("more", "Verbose", function(this, dThreshold=1, ...) {
  # Clone first!
  res <- clone(this);

  # Decrease the threshold
  res$threshold <- res$threshold - dThreshold;

  # Return the clone
  res;
})


###########################################################################/**
# @RdocMethod less
#
# @title "Creates a cloned instance with a higher threshold"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{dThreshold}{The amount the threshold should be raised.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a cloned @see "Verbose" object.
# }
#
# @author
#
# \seealso{
#   @seemethod "more"
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("less", "Verbose", function(this, dThreshold=1, ...) {
  # Clone first!
  res <- clone(this);

  # Increase the threshold
  res$threshold <- res$threshold + dThreshold;

  # Return the clone
  res;
})


###########################################################################/**
# @RdocMethod print
#
# @title "Prints objects if above threshold"
#
# \description{
#   @get "title".
#   The output is \emph{not} indented.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @see "base::print".}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("print", "Verbose", function(x, ..., level=this$defaultLevel) {
  # To please R CMD check
  this <- x;

  # So that print(this), which often called when 'this' is typed, works.
  args <- list(...);
  if (length(args) == 0) {
    return(NextMethod("print"));
  }

  # ...otherwise...
  capture(this, print(...), level=level);
})




###########################################################################/**
# @RdocMethod str
#
# @title "Prints the structure of an object if above threshold"
#
# \description{
#   @get "title".
#   The output is \emph{not} indented.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @see "utils::str".}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("str", "Verbose", function(object, ..., level=this$defaultLevel) {
  # To please R CMD check
  this <- object;

  if (!isVisible(this, level))
    return(invisible(FALSE));

  capture(this, str(...));
})


###########################################################################/**
# @RdocMethod summary
#
# @title "Generates a summary of an object if above threshold"
#
# \description{
#   @get "title".
#   The output is \emph{not} indented.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Objects to be passed to @see "base::summary".}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("summary", "Verbose", function(object, ..., level=this$defaultLevel) {
  # To please R CMD check
  this <- object;

  if (!isVisible(this, level))
    return(invisible(FALSE));

  capture(this, print(summary(...)));
})


###########################################################################/**
# @RdocMethod evaluate
#
# @title "Evaluates a function and prints its results if above threshold"
#
# \description{
#   @get "title".
#   The output is \emph{not} indented.
# }
#
# @synopsis
#
# \arguments{
#  \item{fun}{A @function to be evaluated (only if above threshold).}
#  \item{...}{Additional arguments passed to the function.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("evaluate", "Verbose", function(this, fun, ..., level=this$defaultLevel) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  print(this, fun(...));
})



###########################################################################/**
# @RdocMethod capture
#
# @title "Captures output of a function"
#
# \description{
#   @get "title".
#   Evaluates its arguments with the output being verbosed.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments to be captured.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns a @vector of @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("capture", "Verbose", function(this, ..., level=this$defaultLevel) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  args <- substitute(list(...))[-1];

  bfr <- NULL;  # To please R CMD check R v2.6.0.
  file <- textConnection("bfr", "w", local=TRUE);
  sink(file);
  on.exit({
    sink();
    close(file);
  })

  pf <- parent.frame();
  evalVis <- function(expr) {
    withVisible(eval(expr, pf));
  }

  for (kk in seq_along(args)) {
    expr <- args[[kk]];
    if (mode(expr) == "expression") {
      tmp <- lapply(expr, FUN=evalVis);
    } else if (mode(expr) == "call") {
      tmp <- list(evalVis(expr));
    } else if (mode(expr) == "name") {
      tmp <- list(evalVis(expr));
    } else {
      stop("Bad argument");
    }
    for (item in tmp) {
      if (item$visible)
         print(item$value);
    }
  }

  indent <- paste(rep(" ", length.out=this$indentPos), collapse="");
  bfr2 <- paste(indent, bfr, sep="");
  bfr2 <- paste(bfr2, collapse="\n");
  bfr2 <- paste(bfr2, "\n", sep="");
  writeRaw(this, bfr2);
})


###########################################################################/**
# @RdocMethod newline
#
# @title "Writes one or several empty lines"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{n}{The number of empty lines to write.}
#  \item{...}{Not used.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("newline", "Verbose", function(this, n=1, ..., level=this$defaultLevel) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  if (n < 0)
    stop("Argument 'n' must be zero or greater: ", n);
  if (n > 0)
    writeRaw(this, paste(rep("\n", n), collapse=""));
  invisible(TRUE);
})


###########################################################################/**
# @RdocMethod ruler
#
# @title "Writes a ruler"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{char}{A @character string to make up the ruler.}
#  \item{toColumn}{The column number where the ruler should finish.}
#  \item{length}{The length of the ruler.}
#  \item{...}{Not used.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("ruler", "Verbose", function(this, char="-", toColumn=this$rightMargin, length=toColumn-this$indentPos, level=this$defaultLevel, ...) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  char <- as.character(char);
  char <- strsplit(char, split="")[[1]];
  ruler <- rep(char, length.out=length);
  ruler <- paste(ruler, collapse="");
  cat(this, ruler);
})



###########################################################################/**
# @RdocMethod header
#
# @title "Writes a header"
#
# \description{
#   @get "title" surrounded by a frame.
#   The output is indented according to @seemethod "enter"/@seemethod "exit"
#   calls.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{The title.}
#  \item{char}{The @character string to make up the frame.}
#  \item{padding}{The number of rows and character to pad the title above,
#                 below, and to the left.}
#  \item{prefix}{The prefix of all padded lines and the title line.}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("header", "Verbose", function(this, ..., char="-", padding=0, prefix=paste(char, paste(rep(" ", max(padding, 1)), collapse=""), sep=""), level=this$defaultLevel) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  ruler(this, char=char);

  for (kk in seq_len(padding))
    writeRaw(this, prefix, "\n");

  cat(this, prefix, ..., sep="", collapse="\n");

  for (kk in seq_len(padding))
    writeRaw(this, prefix, "\n");

  ruler(this, char=char);
})



###########################################################################/**
# @RdocMethod timestamp
#
# @title "Writes a timestamp"
#
# \description{
#   @get "title" with default format [2005-06-23 21:20:03].
# }
#
# @synopsis
#
# \arguments{
#  \item{stamp}{A timestamp @character to be written.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("timestamp", "Verbose", function(this, format=getTimestampFormat(this), ...) {
  if (is.function(format)) {
    stamp <- format();
  } else {
    stamp <- format(Sys.time(), format);
  }
  cat(this, stamp, ...);
})


###########################################################################/**
# @RdocMethod getTimestampFormat
#
# @title "Gets the default timestamp format"
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
#   Returns a @character string or a @function.
# }
#
# @author
#
# \seealso{
#   @seemethod "setTimestampFormat".
#   @seemethod "timestampOn".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("getTimestampFormat", "Verbose", function(this, ...) {
  this$.timestampFormat;
})


###########################################################################/**
# @RdocMethod setTimestampFormat
#
# @title "Sets the default timestamp format"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{format}{If a @function, this function is called (without arguments)
#    whenever a timestamp is generated. If a @character string, it used as
#    the format string in \code{format(Sys.date(), fmt)}.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the old timestamp format.
# }
#
# @author
#
# \seealso{
#   @seemethod "getTimestampFormat".
#   @seemethod "timestampOn".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("setTimestampFormat", "Verbose", function(this, format="%Y%m%d %H:%M:%S|", ...) {
  if (!is.function(format))
    format <- as.character(format);

  oldValue <- this$.timestampFormat;
  this$.timestampFormat <- format;

  invisible(oldValue);
})


###########################################################################/**
# @RdocMethod timestampOn
# @aliasmethod timestampOff
#
# @title "Turns automatic timestamping on and off"
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
#   Returns (invisibly) the old timestamp status.
# }
#
# @author
#
# \seealso{
#   @seemethod "setTimestampFormat".
#   @seemethod "timestampOn".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("timestampOn", "Verbose", function(this, ...) {
  oldStatus <- this$.timestamp;
  this$.timestamp <- TRUE;
  invisible(oldStatus);
})

setMethodS3("timestampOff", "Verbose", function(this, ...) {
  oldStatus <- this$.timestamp;
  this$.timestamp <- FALSE;
  invisible(oldStatus);
})



###########################################################################/**
# @RdocMethod warnings
#
# @title "Outputs any warnings recorded"
#
# \description{
#   @get "title".
#   The output is indented according to @seemethod "enter"/@seemethod "exit"
#   calls.
# }
#
# @synopsis
#
# \arguments{
#  \item{title}{A @character string to be outputted before the warnings, if
#    they exists.}
#  \item{reset}{If @TRUE, the warnings are reset afterward, otherwise not.}
#  \item{...}{Arguments passed to @seemethod "cat".}
#  \item{level}{A @numeric value to be compared to the threshold.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("warnings", "Verbose", function(this, title="Warnings detected:", reset=TRUE, ..., level=this$defaultLevel) {
  if (!isVisible(this, level))
    return(invisible(FALSE));

  if (exists("last.warning", envir=.GlobalEnv)) {
    if (!is.null(title))
      cat(this, title);
    txt <- paste(capture.output(base::warnings()), collapse="\n");
    cat(this, txt, ..., level=level);
    if (reset)
      resetWarnings();
  }

  invisible(TRUE);
})


###########################################################################/**
# @RdocMethod pushState
# @aliasmethod popState
#
# @title "Pushes the current indentation state of the Verbose object"
#
# \description{
#   @get "title", which is controlled by @seemethod "enter" and
#   @seemethod "exit".  By pushing the state when entering a function and
#   using @see "base::on.exit" to pop the state, the correct state will
#   set regardless of if the functions returned naturally or via an error.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("pushState", "Verbose", function(this, ...) {
  if (is.null(this$.stackState))
    this$.stackState <- list();

  stack <- list(
    stack      = this$.stack,
    stackLevel = this$.stackLevel
  )

  this$.stackState <- append(this$.stackState, list(stack));
  invisible(TRUE);
})


setMethodS3("popState", "Verbose", function(this, ...) {
  if (length(this$.stackState) == 0)
    throw("Stack empty!");

  n <- length(this$.stackState);
  stack <- this$.stackState[[n]];

  this$.stackState <- this$.stackState[-n];

  fromN <- length(this$.stack);
  toN <- length(stack$stack);

  if (fromN > toN) {
    for (kk in seq(from=fromN, to=toN+1, by=-1))
      exit(this);
  } else {
    this$.stack <- stack$stack;
    this$.stackLevel <- stack$stackLevel;
  }
  invisible(TRUE);
})





############################################################################
# HISTORY:
# 2014-04-02
# o BUG FIX: str() and summary() for Verbose did not acknowledge
#   argument 'level'.
# 2012-07-27
# o Added enterf() to Verbose, which is an sprintf-like enter().
# 2012-02-29
# o CLEANUP: Now capture() for Verbose uses withVisible() instead of
#   an .Internal(eval.with.vis()) call.
# 2012-01-11
# o BUG FIX: writeRaw() for Verbose would throw error "Trying to coerce
#   more than one character string to a GString, which is not supported."
#   iff passing a vector of strings.
# 2011-09-18
# o Added a range test internally to getThreshold(), where the valid range
#   can be set via as an R option.
# 2010-03-08
# o Added argument 'timestamp' to printf() for Verbose so that the
#   timestamp can be turned off/on explicitly as for cat().
# 2009-05-30
# o BUG FIX: Argument 'dThreshold' of less() for Verbose had to be named
#   in order to be mapped.
# 2008-11-22
# o STABILITY: Added balance and sanity checks for exit() of Verbose.
# 2007-05-26
# o Made equals() of Verbose protected.
# 2007-03-28
# o BUG FIX: Argument 'format' of timestamp() defaulted to
#   getTimestampFormat(thos) - 'thos' not 'this'.
# 2006-09-19
# o Added Rdoc comments for the less() and the more() methods.
# 2006-09-14
# o Added trial versions of less() and more().  Have not though about
#   side-effects of cloning the Verbose object, e.g. writing to file etc.
# 2006-09-12
# o Created a list with an empty list() in pushState().  This generated
#   warnings, but not errors.
# 2006-07-17
# o The capture() method in Verbose modified a text connection while it was
#   still open; from R v2.4.0 this is not allowed.  Thanks Brian Ripley for
#   pointing this out.
# 2006-03-30
# o Removed auxillary argument 'obj' which was added two days ago.  It was
#   a bug in a recent revision of R v2.3.0 devel that caused it.
# 2006-03-28
# o Had to add auxillary argument 'obj' to print(), str() and summary(),
#   otherwise errors like "Error in str.default() : argument "object" is
#   missing, with no default" was generated.
# 2006-03-27
# o Added as.double().
# 2005-12-02
# o BUG FIX: The function of on() and off() were swapped.
# o Added automatic (optional) timestamping.  Updated example to show this.
# 2005-09-06
# o Added option 'asGString' to Verbose constructor.
# 2005-07-06
# o BUG FIX: print() did not pass argument 'level' to capture().
# o Calling GString() in enter() to immediately evaluate GStrings.
#   Otherwise these will not be correct when calling exit().
# o Added resetWarnings() and warnings().
# 2005-06-28
# o BUG FIX: setDefaultLevel() would not set new value nor return the old.
# 2005-06-23
# o Now the default output connection is stderr() and not stdout().
# 2005-06-22
# o Added timestamp().
# o Added setDefaultLevel().
# o Now argument 'level' defaults to 'level=this$defaultLevel' and not
#   'level=0'.
# 2005-06-18
# o Added push- and popState() to push and pop current indent depth etc
#   set by enter() and exit().  This makes it possible to assure the
#   correct depth when entering and exiting function regardless of they
#   return naturally or via exceptions.
# o Added capture().
# 2005-06-16
# o Added argument 'removeFile' to constructor.
# 2005-06-11
# o Now all output messages returns TRUE or FALSE.
# 2005-06-10
# o Now the core of a Verbose object, that is the value of the reference
#   variable, is a logical value, which default to TRUE. This makes it
#   possible to use the reference variable in logical tests, which might
#   speed up code a bit, e.g. verbose && enter(verbose, "Loading"). It
#   also makes it possible to set verbose to FALSE to turn of verbosing.
# o Added 'stackLevel' to be used by automatic exit calls.
# 2005-06-09
# o Added a help section on 'output levels'.
# o Now isVisible() requires 'level' > 'threshold', not >=. This makes all
#   methods to output nothing by default at the default threshold.
# 2005-06-01
# o Added equals().
# 2005-05-31
# o Added as.logical().
# 2005-05-26
# o Added Rdoc comments taken from Verbose in R.matlab.
# o Added support for a threshold much like the one in the Verbose class in
#   the R.matlab package.
# 2005-05-25
# o Added a set of stand-alone functions for instance used R.matlab.
# 2003-12-07
# o Created.
############################################################################
