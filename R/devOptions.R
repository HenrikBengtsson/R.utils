###########################################################################/**
# @RdocFunction devOptions
#
# @title "Gets the default device options"
#
# \description{
#  @get "title" as given by predefined devices options adjusted for 
#  the default arguments of the device function.
# }
# 
# @synopsis
#
# \arguments{
#   \item{type}{A @character string specifying the device.}
#   \item{custom}{If @TRUE, also the default settings specific to this
#      function is returned. For more details, see below.}
#   \item{special}{A @logical.  For more details, see below.}
#   \item{...}{Optional named arguments for setting new defaults.
#      For more details, see below.}
#   \item{reset}{If @TRUE, the device options are reset to R defaults.}
# }
#
# \value{
#   Returns a named @list.
# }
#
# \details{
#  If argument \code{special} is @TRUE, then the 'width' and 'height'
#  options are adjusted according to the rules explained for
#  argument 'paper' in @see "grDevices::pdf", @see "grDevices::postscript",
#  and @see "grDevices::xfig".
# }
#
# \section{Setting new defaults}{
#  When setting device options, the \code{getOption("devOptions")[[type]]}
#  option is modified.  This means that for such options to be effective,
#  any device function needs to query also such options, which for instance
#  is done by @see "devNew".
#
#  Also, for certain devices (eps, postscript, pdf windows and x11), 
#  builtin R device options are set.
# }
#
# @examples "../incl/devOptions.Rex"
#
# @author
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devOptions <- function(type=c("bmp", "cairo_pdf", "cairo_ps", "eps", "jpeg", "jpeg2", "pdf", "pictex", "png", "png2", "postscript", "svg", "tiff", "windows", "x11", "xfig"), custom=TRUE, special=TRUE, ..., reset=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local setups
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  devList <- list(
    bmp=list(grDevices::bmp),
    cairo_pdf=list(grDevices::cairo_pdf),
    cairo_ps=list(grDevices::cairo_ps),
    eps=list(eps, grDevices::postscript),
    jpeg=list(grDevices::jpeg),
    jpeg2=list(jpeg2, grDevices::bitmap, grDevices::postscript),
    pdf=list(grDevices::pdf),
    pictex=list(grDevices::pictex),
    png=list(grDevices::png),
    png2=list(png2, grDevices::bitmap, grDevices::postscript),
    postscript=list(grDevices::postscript),
    svg=list(grDevices::svg),
    tiff=list(grDevices::tiff),
    windows=list(grDevices::windows),
    x11=list(grDevices::x11),
    xfig=list(grDevices::xfig)
  );


  # See argument 'paper' in help("pdf"), help("postscript"), and
  # help("xfig").
  getSpecialDimensions <- function(options=list(), sizes=names(paperSizes), ...) {
    paperSizes <- list(
      a4        = c( 8.27, 11.69),
      a4r       = c(11.69,  8.27),
      executive = c( 7.25, 10.5 ),
      legal     = c( 8.5 , 14   ),
      letter    = c( 8.5 , 11   ),
      USr       = c(11   , 8.5  )
    );
  
    paper <- tolower(options$paper);
    if (paper == "default") {
      paper <- getOption("papersize", "a4");
    }

    if (paper != "special") {
      paperSizes <- paperSizes[sizes];
      dim <- paperSizes[[paper]];

      # Replace "special" 0:s with NA:s, to indicate they are missing
      dim[dim == 0] <- as.double(NA);
    } else {
      dim <- c(options$width, options$height);
    }

    dim;
  } # getSpecialDimensions()


  getDevOptions <- function(type, ...) {
    opts <- getOption("devOptions", list());
    opts <- opts[[type]];
    if (is.null(opts)) {
      opts <- list();
    }
    opts;
  } # getDevOptions()


  setDevOptions <- function(type, ..., reset=FALSE) {
    devOpts <- getOption("devOptions", list());
    oopts <- opts <- devOpts[[type]];
    if (reset) {
      opts <- NULL;
    } else {
      args <- list(...);
      if (length(args) > 0) {
        for (key in names(args)) {
          opts[[key]] <- args[[key]];
        }
      }
    }
    devOpts[[type]] <- opts;
    options(devOptions=devOpts);
    invisible(oopts);
  } # setDevOptions()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'type':
  type <- tolower(type);
  # Aliases
  type[type == "jpg"] <- "jpeg";
  type[type == "ps"] <- "postscript";
  type <- match.arg(type);

  if (!is.element(type, names(devList))) {
    throw("Cannot query/modify device options. Unknown device: ", type);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Reset?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (reset) {
    res <- devOptions(type=type, special=special, reset=FALSE);
    setDevOptions(type, reset=TRUE);

    # Only for certain devices...
    if (is.element(type, c("eps", "postscript", "jpeg2", "png2"))) {
      ps.options(reset=TRUE);
    } else if (type == "pdf") {
      pdf.options(reset=TRUE);
    } else if (is.element(type, c("windows", "x11"))) {
      windows.options(reset=TRUE);
    }

    return(invisible(res));
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Assign user arguments, iff possible
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # User arguments
  args <- list(...);
  if (length(args) > 0) {
    do.call("setDevOptions", args=c(list(type), args));
  
    # Only for certain devices...
    if (is.element(type, c("eps", "postscript", "jpeg2", "png2"))) {
      do.call("ps.options", args=args);
    } else if (type == "pdf") {
      do.call("pdf.options", args=args);
    } else if (is.element(type, c("windows", "x11"))) {
      do.call("windows.options", args=args);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get builtin device options, if available
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Only for certain devices...
  if (is.element(type, c("eps", "postscript", "jpeg2", "png2"))) {
    opts <- ps.options();
  } else if (type == "pdf") {
    opts <- pdf.options();
  } else if (is.element(type, c("windows", "x11"))) {
    opts <- windows.options();
  } else {
    opts <- list();
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get (nested) device formals
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  devs <- devList[[type]];
  defArgs <- lapply(rev(devs), FUN=formals);
  defArgs <- Reduce(append, defArgs);
  # Drop '...'
  defArgs <- defArgs[names(defArgs) != "..."];
  # Drop overridden values
  defArgs <- defArgs[!duplicated(names(defArgs), fromLast=TRUE)];

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Merge arguments that either are not in the predefined set of
  # device options, or ones that replaced the default value.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  optsT <- c(opts, defArgs);


  # Include custom options specific to devOptions()?
  if (custom) {
    devOpts <- getDevOptions(type);
    optsT <- c(optsT, devOpts);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Build the concensus of all options
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # (a) Keep all non-duplicated options
  dups <- duplicated(names(optsT));
  idxsA <- which(!dups);
  optsA <- optsT[idxsA];

  # (b) Among duplicates, keep those with values
  idxsB <- which(dups);
  idxsB <- idxsB[!sapply(optsT[idxsB], FUN=is.symbol)];
  optsB <- optsT[idxsB];

  opts <- append(optsA, optsB);

  # Drop overridden values
  opts <- opts[!duplicated(names(opts), fromLast=TRUE)];


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Adjust for special cases?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (special) {
    if (is.element(type, c("eps", "postscript"))) {
      sizes <- c("a4", "executive", "legal", "letter");
      dim <- getSpecialDimensions(opts, sizes);
    } else if (type == "xfig") {
      sizes <- c("a4", "legal", "letter");
      dim <- getSpecialDimensions(opts, sizes);
    } else if (type == "pdf") {
      sizes <- c("a4", "a4r", "executive", "legal", "letter", "USr");
      dim <- getSpecialDimensions(opts, sizes);
    } else {
      dim <- NULL;
    }

    if (!is.null(dim)) {
      opts$width <- dim[1];
      opts$height <- dim[2];
    }
  }

  opts;
} # devOptions()


############################################################################
# HISTORY: 
# 2011-11-05
# o Created.
############################################################################
