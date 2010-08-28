###########################################################################/**
# @RdocDefault readRdHelp
#
# @title "Reads one or more Rd help files in a certain format"
#
# \description{
#  @get "title".
# }
# 
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @see "utils::help".}
#   \item{format}{A @character string specifying the return type.}
#   \item{drop}{If @FALSE or more than one help entry is found, the result
#     is returned as a @list.}
# }
#
# \value{
#   Returns a @list of @character strings or a single @character string.
# }
#
# @author
#
# @keyword programming
#*/########################################################################### 
setMethodS3("readRdHelp", "default", function(..., format=c("text", "html", "latex", "rd"), drop=TRUE) {
  # Argument 'format':
  format <- match.arg(format);

  # Argument 'drop':
  drop <- Arguments$getLogical(drop);


  # Find the help
  x <- help(..., help_type="text");

  # Read the Rd file(s)
  paths <- as.character(x);
  rdList <- lapply(paths, FUN=function(pathname) {
    utils:::.getHelpFile(pathname);
  });

  if (format == "rd") {
    res <- rdList;
  } else {
    if (format == "text") {
      fcn <- tools::Rd2txt;
    } else if (format == "html") {
      fcn <- tools::Rd2HTML;
    } else if (format == "latex") {
      fcn <- tools::Rd2latex;
    } else {
      throw("Unsupported format: ", format);
    }
  
    # Translate
    # To please R CMD check
    bfr <- NULL; rm(bfr);
    res <- lapply(rdList, FUN=function(rd) {
      con <- textConnection("bfr", open="w", local=TRUE);
      on.exit(close(con));
      fcn(rd, out=con);
      bfr;
    });
  }

  # If only one item was found, should we return that and not a list?
  if (drop && length(res) == 1) {
    res <- res[[1]];
  }

  res;
}) # readRdHelp()


############################################################################
# HISTORY:
# 2010-08-28
# o Renamed to readRdHelp().
# 2010-08-23
# o Created.
############################################################################
