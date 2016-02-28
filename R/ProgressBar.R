###########################################################################/**
# @RdocClass ProgressBar
#
# @title "Provides text based counting progress bar"
#
# \description{
#  @classhierarchy
# }
#
# @synopsis
#
# \arguments{
#   \item{max}{The maximum number of steps.}
#   \item{ticks}{Put visual "ticks" every \code{ticks} step.}
#   \item{stepLength}{The default length for each increase.}
#   \item{newlineWhenDone}{If @TRUE, a newline is outputted when bar is
#         updated, when done, otherwise not.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# @examples "../incl/ProgressBar.Rex"
#
# @author
#*/###########################################################################
setConstructorS3("ProgressBar", function(max=100, ticks=10, stepLength=1, newlineWhenDone=TRUE) {
  if (length(ticks) == 1)
    ticks <- seq(from=0, to=max, by=10);
  if (stepLength <= 0)
    stop("Argument 'stepLength' is non-positive: ", stepLength);
  extend(Object(), "ProgressBar",
    value=0,
    max=max,
    stepLength=stepLength,
    ticks=ticks,
    newlineWhenDone=as.logical(newlineWhenDone),
    .allowCarryOver=FALSE,
    .lastBarString=""
  )
})


#########################################################################/**
# @RdocMethod as.character
#
# @title "Gets a string description of the progress bar"
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
#*/#########################################################################
setMethodS3("as.character", "ProgressBar", function(x, ...) {
  # To please R CMD check
  this <- x;

  s <- paste(data.class(this), ": max=", this$max, ", value=", this$value, sep="");
  s;
})




#########################################################################/**
# @RdocMethod getBarString
#
# @title "Gets the progress bar string to be displayed"
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
#*/#########################################################################
setMethodS3("getBarString", "ProgressBar", function(this, ...) {
  count <- round(this$value);
  bfr <- rep(".", times=count+1);
  # First, set the ticks
  bfr[intersect(1:count, this$ticks)+1] <- "|";

  # Then set the starter
  bfr[1] <- "[";

  # ...and the stopper (and carry overs)
  if (count >= this$max) {
    bfr[this$max+1] <- "]";
    bfr[-(1:(this$max+1))] <- "?";
  }

  # Generate the string
  bfr <- paste(bfr, collapse="");
  bfr;
})


#########################################################################/**
# @RdocMethod isDone
#
# @title "Checks if progress bar is completed"
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
#   Returns @TRUE or @FALSE.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("isDone", "ProgressBar", function(this, ...) {
  (this$value >= this$max);
})


#########################################################################/**
# @RdocMethod setStepLength
#
# @title "Sets default step length"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{stepLength}{New default step length.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns on step length.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("setStepLength", "ProgressBar", function(this, stepLength, ...) {
  if (stepLength <= 0)
    stop("Argument 'stepLength' is non-positive: ", stepLength);
  oldStepLength <- this$stepLength;
  this$stepLength <- stepLength;
  invisible(oldStepLength);
})


#########################################################################/**
# @RdocMethod setMaxValue
#
# @title "Sets maximum value"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{maxValue}{New maximum value.}
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
#*/#########################################################################
setMethodS3("setMaxValue", "ProgressBar", function(this, maxValue, ...) {
  this$max <- maxValue;
})


#########################################################################/**
# @RdocMethod setTicks
#
# @title "Sets values for which ticks should be visible"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{ticks}{Tick positions (values).}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns old tick positions.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("setTicks", "ProgressBar", function(this, ticks=10, ...) {
  if (length(ticks) == 1) {
    ticks <- seq(from=0, to=this$max, by=ticks);
  }
  oldTicks <- this$ticks;
  this$ticks <- ticks;
  invisible(oldTicks);
})


#########################################################################/**
# @RdocMethod setValue
#
# @title "Sets current value"
#
# \description{
#   @get "title".
#   Note that this method does \emph{not} update the bar visually.
# }
#
# @synopsis
#
# \arguments{
#  \item{value}{A @numeric in [0,maxValue].}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns old value.
# }
#
# @author
#
# \seealso{
#   @seemethod "setProgress".
#   @seemethod "increase".
#   @seemethod "reset".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("setValue", "ProgressBar", function(this, value, ...) {
  if (value < 0)
    stop("Value out of range [0,", this$max, "]: ", value);
  if (!this$.allowCarryOver && value > this$max)
    stop("Value out of range [0,", this$max, "]: ", value);
  oldValue <- this$value;
  this$value <- value;
  invisible(oldValue);
})



#########################################################################/**
# @RdocMethod setProgress
#
# @title "Sets current progress"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{progress}{A @double in [0,1] specifying the relative progress.}
#  \item{visual}{If @TRUE, the progress bar is redraw, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns old value.
# }
#
# @author
#
# \seealso{
#   @seemethod "setValue".
#   @seemethod "increase".
#   @seemethod "reset".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("setProgress", "ProgressBar", function(this, progress, visual=TRUE, ...) {
  if (length(progress) != 1)
    throw("Argument 'progress' must be a single value.");
  if (!is.numeric(progress) || progress < 0 || progress > 1)
    throw("Argument 'progress' out of range [0,1]: ", progress);
  oldValue <- setValue(this, progress*this$max);
  update(this, visual=visual);
  invisible(oldValue/this$max);
})




#########################################################################/**
# @RdocMethod reset
#
# @title "Reset progress bar"
#
# \description{
#   @get "title" by setting the value to zero and updating the display.
# }
#
# @synopsis
#
# \arguments{
#  \item{visual}{If @TRUE, the progress bar is redraw, otherwise not.}
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
#   @seemethod "setValue".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("reset", "ProgressBar", function(this, visual=TRUE, ...) {
  this$value <- 0;
  this$.lastBarString <- "";
  update(this, visual=visual);
  invisible(this$value);
})


#########################################################################/**
# @RdocMethod increase
#
# @title "Increases (steps) progress bar"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{stepLength}{Positive or negative step length.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns new value.
# }
#
# @author
#
# \seealso{
#   @seemethod "setValue".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("increase", "ProgressBar", function(this, stepLength=this$stepLength, visual=TRUE, ...) {
  value <- this$value + stepLength;
  if (!this$.allowCarryOver && value >= this$max) {
    this$value <- this$max;
  } else {
    this$value <- value;
  }
  update(this, visual=visual);
  invisible(value);
}, protected=TRUE)


#########################################################################/**
# @RdocMethod update
#
# @title "Updates progress bar"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{visual}{If @TRUE, the progress bar is redrawn, otherwise not.}
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
#*/#########################################################################
setMethodS3("update", "ProgressBar", function(object, visual=TRUE, ...) {
  # To please R CMD check...
  this <- object;

  if (visual) {
    s <- getBarString(this);
    ls <- this$.lastBarString;
    cat(substring(s, nchar(ls)+1))
    this$.lastBarString <- s;
    if (this$newlineWhenDone && isDone(this))
      cat("\n");
  }
})



############################################################################
# HISTORY:
# 2005-06-16
# o Now setProgress() also updates the bar visually.
# 2005-03-01
# o Added argument 'newlineWhenDone==TRUE'.
# o Added setProgress().
# 2004-10-22
# o Made update() protected.
# o Added Rdoc comments to all metods.
# 2004-07-10
# o Now allow carry overs if explicitly accepted.
# o Renamed from CountProgressBar to ProgressBar.
# 2003-07-07
# o Removed an obsolete usage of new() in Rdoc example.
# 2002-11-28
# o Added setMaxValue() and setTicks().
# 2002-05-30
# o Created.
############################################################################

