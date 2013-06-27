#########################################################################/**
# @RdocDefault colClasses
#
# @title "Creates a vector of column classes used for tabular reading"
#
# \description{
#  @get "title" based on a compact format string.
# }
#
# @synopsis
#
# \arguments{
#   \item{fmt}{A @character string specifying the column-class format.
#              This string is first translated by @see "base::sprintf".}
#   \item{...}{Optional arguments for the @see "base::sprintf" translation.}
# }
#
# \value{
#   Returns a @vector of @character strings.
# }
#
# @author
#
# @examples "../incl/colClasses.Rex"
#
# \seealso{
#   @see "utils::read.table".
# }
#
# @keyword "programming"
#*/#########################################################################
setMethodS3("colClasses", "default", function(fmt, ...) {
  typesMap <- c(
    "-"="NULL",
    "?"="NA",
    "c"="character",
    "d"="double",
    "f"="factor",
    "i"="integer",
    "l"="logical",
    "n"="numeric",
    "r"="raw",
    "z"="complex",
    "D"="Date",
    "P"="POSIXct"
  );


  # First, translate the format string with sprintf().
  fmt <- sprintf(fmt, ...);

  # Parse format
  fmt <- unlist(strsplit(fmt, split=""));
  predefinedTypes <- names(typesMap);

  digits <- as.character(0:9);
  alphaNum <- c(letters, LETTERS, digits);
  alphaNumComma <- c(alphaNum, ",");

  colClasses <- c();

  state <- "start";
  times <- 1;
  type <- "NULL";
  while (length(fmt) > 0) {
    ch <- fmt[1];

    if (state == "start") {
      if (ch %in% digits) {
        state <- "parseInteger";
        times <- as.integer(ch);
      } else if (ch %in% "{") {
        type <- "";
        state <- "parseCustom";
      } else if (ch %in% predefinedTypes) {
        colClasses <- c(colClasses, rep(ch, times=times));
        state <- "start";
      } else {
        state <- "error";
      }
    } else if (state == "parseInteger") {
      if (ch %in% digits) {
        times <- 10*times + as.integer(ch);
      } else if (ch %in% "{") {
        type <- "";
        state <- "parseCustom";
      } else if (ch %in% predefinedTypes) {
        colClasses <- c(colClasses, rep(ch, times=times));
        state <- "start";
      } else {
        state <- "error";
      }
    } else if (state == "parseCustom") {
      if (ch %in% alphaNumComma) {
        type <- paste(type, ch, sep="");
      } else if (ch %in% "}") {
        if (type == "")
          throw("Parse error: ", paste(fmt, collapse=""));
        types <- unlist(strsplit(type, split=","));
        colClasses <- c(colClasses, rep(types, times=times));
        state <- "start";
      } else {
        state <- "error";
      }
    }

    if (state == "error") {
      throw("Parse error. Unexpected symbol: ", paste(fmt, collapse=""));
    } else if (state == "start") {
      times <- 1;
      type <- "NULL";
    }

    fmt <- fmt[-1];
  } # while(...)

  names(colClasses) <- NULL;

  # Expand predefined types
  isPredefined <- which(colClasses %in% predefinedTypes);
  colClasses[isPredefined] <- typesMap[colClasses[isPredefined]];

  colClasses;
})


############################################################################
# HISTORY:
# 2008-02-22
# o BUG FIX: Repeats >= 10 gave an error.  Forgot to coerce to integers.
# o Now predefined types are expanded at the very end.
# o Added support for repeats of vectors.
# 2008-01-25
# o Created.
############################################################################
