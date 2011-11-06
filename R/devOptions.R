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
#   \item{special}{A @logical.  For more details, see below.}
#   \item{...}{Optional named arguments that overrides the
#     default options.}
# }
#
# \value{
#   Returns a named @list.
# }
#
# \details{
#  If argument \code{special} is @TRUE, then the 'width' and 'height'
#  options are adjusted according to the rules explained for
#  argument 'paper' in @see "grDevices::pdf", "grDevices::postscript",
#  and "grDevices::xfig".
# }
#
# @examples "../incl/devOptions.Rex"
#
# @author
#
# @keyword device
# @keyword utilities
#*/########################################################################### 
devOptions <- function(type=c("bmp", "cairo_pdf", "cairo_ps", "eps", "jpeg", "pdf", "pictex", "png", "postscript", "svg", "tiff", "windows", "x11", "xfig"), special=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local setups
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  devList <- list(
    bmp=list(grDevices::bmp),
    cairo_pdf=list(grDevices::cairo_pdf),
    cairo_ps=list(grDevices::cairo_ps),
    eps=list(R.utils::eps, grDevices::postscript),
    jpeg=list(grDevices::jpeg),
    pdf=list(grDevices::pdf),
    pictex=list(grDevices::pictex),
    png=list(grDevices::png),
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
    throw("Cannot infer device options. Unknown device: ", type);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get builtin device options, if available
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.element(type, c("eps", "postscript"))) {
    opts <- ps.options();
  } else if (type == "pdf") {
    opts <- pdf.options();
  } else if (type == "windows") {
    opts <- windows.options();
  } else if (type == "x11") {
    opts <- get(".Windows.Options", envir=grDevices:::.WindowsEnv);
  } else {
    opts <- list();
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Get (nested) device formals
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  defArgs <- lapply(rev(devList[[type]]), FUN=formals);
  defArgs <- Reduce(append, defArgs);
  # Drop '...'
  defArgs <- defArgs[names(defArgs) != "..."];
  # Drop overridden values
  defArgs <- defArgs[!duplicated(names(defArgs), fromLast=TRUE)];


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # User arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  args <- list(...);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Merge arguments that either are not in the predefined set of
  # device options, or ones that replaced the default value.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  optsT <- c(opts, defArgs, args);

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
  # Special cases?
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
