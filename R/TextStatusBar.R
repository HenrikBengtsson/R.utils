###########################################################################/**
# @RdocClass TextStatusBar
#
# @title "A status bar at the R prompt that can be updated"
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
#   \item{fmt}{A @character format string to be used by @see "base::sprintf".
#     Default is a left-aligned string of full width.}
#   \item{...}{Named arguments to be passed to @see "base::sprintf" together
#     with the format string.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# \details{
#   A label with name \code{hfill} can be used for automatic horizontal
#   filling.  It must be @numeric and be immediate before a string
#   label such that a \code{hfill} label and the following string label
#   together specifies an sprintf format such as \code{"\%*-s"}.
#   The value of \code{hfill} will be set such that the resulting status
#   bar has width equal to \code{getOption("width")-1} (the reason for the
#   -1 is to prevent the text status bar from writing into the next line).
#   If more than one \code{hfill} label is used their widths will be
#   uniformly distributed.  Left over spaces will be distributed between
#   \code{hfill} labels with initial values of one.
# }
#
# @examples "../incl/TextStatusBar.Rex"
#
# @author
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("TextStatusBar", function(fmt=paste("%-", getOption("width")-1, "s", sep=""), ...) {
  extend(Object(core=TRUE), "TextStatusBar",
    .lastStr = "",
    .fmt = fmt,
    .args = list(...)
  )
})


###########################################################################/**
# @RdocMethod update
#
# @title "Updates the status bar (visually)"
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
setMethodS3("update", "TextStatusBar", function(object, ...) {
  # To please R CMD check
  this <- object;

  fmt <- this$.fmt;
  args <- this$.args;
  isHFill <- which(names(args) == "hfill");
  nHFill <- length(isHFill);
  if (nHFill > 0) {
    # First, use zero width to figure out the total width without "hfillers".
    argsT <- args;
    argsT[isHFill] <- 0;
    argsT[isHFill+1] <- "";
    str <- do.call(sprintf, args=c(list(fmt=fmt), argsT));
    nfill <- (getOption("width")-1) - nchar(str);
    if (nfill > 0) {
      # Distribute the horizontal fillers evenly.
      spcs <- rep(nfill %/% nHFill, times=nHFill);
      ndiff <- nfill - sum(spcs);
      if (ndiff > 0) {
        # For the left overs, distribute them evenly between the hfillers
        # with values 1.
        incr <- rep(FALSE, times=nHFill);
        incr[args[isHFill] == 1] <- TRUE;
        spcs[incr] <- spcs[incr] + 1;
      }
      args[isHFill] <- spcs;
    }
  }
  str <- do.call(sprintf, args=c(list(fmt=fmt), args));

  lastStr <- this$.lastStr;
  this$.lastStr <- str;
  backspaces <- paste(rep("\b", nchar(lastStr)), collapse="");
  cat(backspaces, str, sep="");
})


###########################################################################/**
# @RdocMethod setLabels
#
# @title "Sets new values of given labels"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{A set of named arguments.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seemethod "setLabel".
#   @seemethod "updateLabels".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("setLabels", "TextStatusBar", function(this, ...) {
  pars <- list(...);

  args <- this$.args;
  for (label in names(pars)) {
    args[[label]] <- pars[[label]];
  }
  this$.args <- args;
})


###########################################################################/**
# @RdocMethod setLabel
#
# @title "Sets the value of a label"
#
# \description{
#   @get "title" address either by its index or its names.
# }
#
# @synopsis
#
# \arguments{
#  \item{label}{The index or the name of the label.}
#  \item{value}{The value of the label.}
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
#   @seemethod "setLabels"
#   @seemethod "getLabel"
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("setLabel", "TextStatusBar", function(this, label, value, ...) {
  args <- this$.args;
  args[[label]] <- value;
  this$.args <- args;
})

###########################################################################/**
# @RdocMethod getLabel
#
# @title "Gets the current value of a label"
#
# \description{
#   @get "title" address either by its index or its names.
# }
#
# @synopsis
#
# \arguments{
#  \item{label}{The index or the name of the label.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns the value.
# }
#
# @author
#
# \seealso{
#   @seemethod "setLabel" and @seemethod "setLabels".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("getLabel", "TextStatusBar", function(this, label, ...) {
  args <- this$.args;
  .subset2(args, label);
})


###########################################################################/**
# @RdocMethod newline
#
# @title "Writes a newline"
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
setMethodS3("newline", "TextStatusBar", function(this, ...) {
  this$.lastStr <- "";
  cat("\n");
})


###########################################################################/**
# @RdocMethod updateLabels
#
# @title "Sets the new values of given labels and updates the status bar"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{A set of named arguments.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seemethod "setLabels".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("updateLabels", "TextStatusBar", function(this, ...) {
  setLabels(this, ...);
  update(this);
})



###########################################################################/**
# @RdocMethod popMessage
#
# @title "Adds a message above the status bar"
#
# \description{
#   @get "title" by scrolling up previous messages popped.
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments passed to @see "base::cat".}
#  \item{collapse, sep}{Default values to @see "base::cat".}
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
setMethodS3("popMessage", "TextStatusBar", function(this, ..., collapse="", sep="") {
  lastStr <- this$.lastStr;

  # Erase current statusbar
  backspaces <- rep("\b", nchar(lastStr));
  erazor <- c(backspaces, rep(" ", nchar(lastStr)), backspaces);
  cat(erazor, sep="");
  this$.lastStr <- "";

  cat(..., collapse=collapse, sep=sep);
  cat("\n");
  update(this);
})




###########################################################################/**
# @RdocMethod flush
#
# @title "Flushes the output"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments passed to @see "base::cat".}
# }
#
# \value{
#   Returns nothing.
# }
#
# \details{
#   All this methods does is to call @see "utils::flush.console", which
#   flushes the output to the console.
# }
#
# @author
#
# \seealso{
#   @see "utils::flush.console".
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("flush", "TextStatusBar", function(con, ...) {
  # To please R CMD check
  this <- con;

  flush.console();
})




############################################################################
# HISTORY:
# 2007-08-15
# o Added flush() to TextStatusBar.
# 2006-10-04
# o Added popMessage() to TextStatusBar.
# 2006-04-21
# o Added setLabels() and updateLabels().
# 2006-04-06
# o Created.
############################################################################
