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
#   \item{special}{If @TRUE, 'width' and 'height' options will be
#     adjusted according to rules special to the particular device.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a named @list.
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

  paperSizes <- list(
    a4        = c(8.27, 11.69),
    executive = c(7.25, 10.5 ),
    legal     = c(8.5 , 14   ),
    letter    = c(8.5 , 11   )
  );

  # See argument 'paper' in help("xfig") and help("postcript")

  getSpecialDimensions <- function(options=list(), sizes=names(paperSizes), ...) {
    paper <- tolower(options$paper);
    if (paper == "default") {
      paper <- getOption("papersize", "a4");
    }

    paperSizes <- paperSizes[sizes];
    dim <- paperSizes[[paper]];
    # Replace "special" 0:s with NA:s, to indicate they are missing
    dim[dim == 0] <- as.double(NA);
    dim;
  } # getSpecialDimensions()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'type':
  type <- Arguments$getCharacter(type);
  type <- tolower(type);
  type <- match.arg(type);

  # Rename
  type[type == "jpg"] <- "jpeg";
  type[type == "ps"] <- "postscript";

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
  args <- lapply(rev(devList[[type]]), FUN=formals);
  args <- Reduce(append, args);
  # Drop '...'
  args <- args[names(args) != "..."];
  # Drop overridden values
  args <- args[!duplicated(names(args), fromLast=TRUE)];


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Merge arguments that either are not in the predefined set of
  # device options, or ones that replaced the default value.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  optsT <- append(opts, args);

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
      dim <- getSpecialDimensions(opts, c("a4", "executive", "letter", "legal"));
      opts$width <- dim[1];
      opts$height <- dim[2];
    } else if (type == "xfig") {
      dim <- getSpecialDimensions(opts, c("a4", "letter", "legal"));
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
