###########################################################################/**
# @RdocFunction devIsOpen
#
# @title "Checks if a device is open or not"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{which}{An index (@numeric) or a label (@character).}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if the device is open, otherwise @FALSE.
# }
#
# @examples "../incl/deviceUtils.Rex"
#
# @author
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devIsOpen <- function(which=dev.cur(), ...) {
  devList <- .devList();
  dev <- devList[which];
  label <- names(dev);
  (!is.na(label) && dev[[1]] != "");
} # devIsOpen()





###########################################################################/**
# @RdocFunction devList
#
# @title "Lists the indices of the open devices named by their labels"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a named @integer @vector.
# }
#
# @author
#
# \seealso{
#   \code{\link[grDevices:dev]{dev.list}()}.
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devList <- function(...) {
  devList <- .devList();

  # Return only opened devices
  isOpen <- sapply(devList, FUN=function(dev) (dev != ""));
  names(isOpen) <- names(devList);
  idxs <- which(isOpen);

  # Exclude the "null" device
  idxs <- idxs[-1];

  if (length(idxs) == 0)
    idxs <- NULL;

  idxs;
}



###########################################################################/**
# @RdocFunction devGetLabel
#
# @title "Gets the label of a device"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{which}{An index (@numeric) or a label (@character).}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @see "devSetLabel" and @see "devList".
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devGetLabel <- function(which=dev.cur(), ...) {
  devList <- .devList();
  dev <- devList[which];
  label <- names(dev);
  if (is.na(label) || dev[[1]] == "")
    stop("No such device: ", which);
  label;
} # devGetLabel()



###########################################################################/**
# @RdocFunction devSetLabel
#
# @title "Sets the label of a device"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{which}{An index (@numeric) or a label (@character).}
#   \item{label}{A @character string.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @see "devGetLabel" and @see "devList".
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devSetLabel <- function(which=dev.cur(), label, ...) {
  if (is.character(which))
    which <- .devIndexOf(which);
  devList <- .devList();
  if (devList[[which]] == "")
    stop("No such device: ", which);

  # Update the label
  if (is.null(label))
    label <- "";
  names(devList)[which] <- label;

  assign(".Devices", devList, envir=baseenv());
}





###########################################################################/**
# @RdocFunction devSet
#
# @title "Activates a device"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{which}{An index (@numeric) or a label (@character).}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns what \code{\link[grDevices:dev]{dev.set}()} returns.
# }
#
# @author
#
# \seealso{
#   @see "devOff" and @see "devDone".
#   Internally, \code{\link[grDevices:dev]{dev.set}()} is used.
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devSet <- function(which=dev.next(), ...) {
  args <- list(...);

  # Argument 'which':
  if (is.character(which)) {
    args$label <- which;
    which <- .devIndexOf(which, error=FALSE);
    # If not existing, open the next available one
    if (is.na(which))
      which <- .devNextAvailable();
  }

  if (which < 2) {
    stop("Cannot set device: ", which);
  }


  if (devIsOpen(which)) {
    # Active already existing device
    return(dev.set(which));
  }

  # Identify set devices that needs to be opened inorder for
  # the next device to get the requested index
  if (which == 2) {
    toBeOpened <- c();
  } else {
    toBeOpened <- setdiff(2:(which-1), dev.list());
  }

  toBeClosed <- list();
  len <- length(toBeOpened);
  if (len > 0) {
    for (idx in toBeOpened) {
      # Create a dummy postscript device (which is non-visible)
      pathname <- tempfile();
      toBeClosed[[idx]] <- pathname;
      postscript(file=pathname);
    }
  }

  # Open the device
  res <- do.call("devNew", args=args);

  # Close temporarily opened devices
  for (kk in seq(along=toBeClosed)) {
    pathname <- toBeClosed[[kk]];
    if (!is.null(pathname)) {
      dev.set(kk);
      dev.off();
      file.remove(pathname);
    }
  }

  invisible(res);
} # devSet()




###########################################################################/**
# @RdocFunction devOff
#
# @title "Closes a device"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{which}{An index (@numeric) or a label (@character).}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns what \code{\link[grDevices:dev]{dev.off}()} returns.
# }
#
# @author
#
# \seealso{
#   @see "devDone".
#   Internally, \code{\link[grDevices:dev]{dev.off}()} is used.
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devOff <- function(which=dev.cur(), ...) {
  # Identify device
  which <- devSet(which);

  # Reset the label
  devSetLabel(which, label=NULL);

  # Close device
  dev.off(which);
} # devOff()




###########################################################################/**
# @RdocFunction devDone
#
# @title "Closes an on-screen (interactive) device"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{which}{An index (@numeric) or a label (@character).}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @see "devOff".
#   @see "grDevices::dev.interactive".
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devDone <- function(which=dev.cur(), ...) {
  # Do nothing?
  if (which <= 1)
    return(invisible());

  which <- devSet(which);
  if (which != 1) {
    type <- tolower(names(which));
    type <- gsub(":.*", "", type);
    
    isOnScreen <- (type %in% deviceIsInteractive());
    if (!isOnScreen)
      devOff(which);
  }
} # devDone()




###########################################################################/**
# @RdocFunction devNew
#
# @title "Opens a new device"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{type}{A @character string specifying the type of device to be 
#     opened. This string should match the name of an existing device 
#     @function.}
#   \item{...}{Arguments passed to the device @function.}
#   \item{label}{An optional @character string specifying the label of the
#     opened device.}
# }
#
# \value{
#   Returns what the device @function returns.
# }
#
# @author
#
# \seealso{
#   @see "devDone" and @see "devOff".
# }
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devNew <- function(type=getOption("device"), ..., label=NULL) {
  # Argument 'type':
  if (is.function(type)) {
  } else {
    type <- as.character(type);
  }

  # Argument 'label':
  if (!is.null(label)) {
    if (any(label == names(devList())))
      stop("Cannot open device. Label is already used: ", label);
  }

  
  if (is.character(type)) {
    args <- list(...);

    # Exclude 'file' and 'filename' arguments?
    knownInteractive <- grDevices:::.known_interactive.devices;
    if (is.element(tolower(type), tolower(knownInteractive))) {
      keep <- !is.element(names(args), c("file", "filename"));
      args <- args[keep];
    }
    res <- do.call(type, args=args);
  #  res <- doCall(type, args=args);
  } else if (is.function(type)) {
    res <- type(...);
  }


  devSetLabel(label=label);

  invisible(res);
} # devNew()



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# BEGIN: Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
.devList <- function() {
  if (exists(".Devices")) {
    devList <- get(".Devices");
  } else {
    devList <- list("null device");
  }

  labels <- names(devList);
  if (is.null(labels)) {
    labels <- paste("Device", seq(along=devList), sep=" ");
    names(devList) <- labels;
    assign(".Devices", devList, envir=baseenv());
  } else {
    # Update the names
    labels <- names(devList);
    idxs <- which(nchar(labels) == 0);
    if (length(idxs) > 0) {
      labels[idxs] <- paste("Device", idxs, sep=" ");
    }
    names(devList) <- labels;
  }

  devList;
} # .devList()

.devIndexOf <- function(label, error=TRUE) {
  devList <- .devList();
  idx <- match(label, names(devList));
  if (is.na(idx) || devList[[idx]] == "") {
    if (error)
      stop("No such device: ", label);
  }
  idx;
} # .devIndexOf()


.devNextAvailable <- function() {
  # All open devices
  devList <- dev.list();

  if (length(devList) == 0)
    return(as.integer(2));

  devPossible <- seq(from=2, to=max(devList)+1);
  devFree <- setdiff(devPossible, devList);

  devFree[1];
} # .devNextAvailable()

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# END: Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

############################################################################
# HISTORY: 
# 2008-10-16
# o Now devDone(which=1) does nothing.  Before it gave an error.
# o BUG FIX: Argument 'type' of devNew() did not take function:s.
# 2008-09-08
# o Now devNew() filters out arguments 'file' and 'filename' if the device
#   is interactive.
# 2008-08-01
# o Added devList() and removed devLabels().
# o Added internal .devNextAvailable().
# o Added argument 'error=TRUE' to internal .devIndexOf().
# 2008-07-31
# o Now devSet(idx) opens a new device with index 'idx' if not already
#   opened.
# 2008-07-29
# o Using term 'label' instead of 'name' everywhere, e.g. devLabels().
#   This was changed because the help pages on 'dev.list' etc. already
#   use the term 'name' for a different purpose, e.g. 'windows'.
# o Renamed devOpen() to devNew() to be consistent with dev.new().
# o Added Rdoc comments.
# 2008-07-18
# o Created.
############################################################################
