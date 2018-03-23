###########################################################################/**
# @RdocDefault getParent
#
# @title "Gets the string of the parent specified by this pathname"
#
# \description{
#  @get "title".
#  This is basically, by default the string before the last path separator
#  of the absolute pathname.
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character string of the pathname to be checked.}
#   \item{depth}{An @integer specifying how many generations up the
#      path should go.}
#   \item{fsep}{A @character string of the file separator.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string if the parent exists, otherwise @NULL.
# }
#
#
#
# @author
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("getParent", "default", function(pathname, depth=1L, fsep=.Platform$file.sep, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getWindowsDrivePattern <- function(fmtstr, ...) {
    # Windows drive letters
    drives <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    # Support also lower case
    drives <- paste(c(drives, tolower(drives)), collapse="");
    sprintf(fmtstr, drives);
  } # getWindowsDrivePattern()


  getParentLocal <- function(pathname) {
    if (length(pathname) == 0L)
      return(NULL);

    # Windows drive letters
    # Treat C:/, C:\\, ... special, that is, not at all.
    pattern <- getWindowsDrivePattern("^[%s]:[/\\]$");
    if (regexpr(pattern, pathname) != -1)
      return(paste(gsub("[\\/]$", "", pathname), fsep=fsep, sep=""));

    # Split by '/' or '\\'
    components <- strsplit(pathname, split="[/\\]")[[1]];
    len <- length(components);
    if (len == 0L) return(NULL); # As in Java...

    if (len == 2L) {
      # Treat C:/, C:\\, ... special, that is, not at all.
      pattern <- getWindowsDrivePattern("^[%s]:$");
      if (regexpr(pattern, components[1L]) != -1L)
        return(paste(components[1L], fsep, sep=""));
    }

    name <- components[len];
    pattern <- getWindowsDrivePattern("^[%s]:");
    reg <- regexpr(pattern, name);
    if (reg != -1L) {
      components[len] <- substring(name, first=1, last=attr(reg, "match.length"));
      if (len == 1L)
        components[len+1L] <- "";
    } else {
      components <- components[-len];
    }

    if (length(components) == 0L)
      return(NULL);

    # Re-build path to string...
    paste(components, sep="", collapse=fsep);
  } # getParentLocal()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  pathname <- as.character(pathname);
  nPathnames <- length(pathname);

  # Nothing to do?
  if (nPathnames == 0L) return(character(0L));

  # Multiple pathnames?
  if (nPathnames > 1L) {
    throw("Argument 'pathname' must be a single character string: ", hpaste(pathname));
  }

  # A missing pathname?
  if (is.na(pathname)) return(NA_character_);

  # Argument 'depth':
  depth <- as.integer(depth);
  depth <- Arguments$getInteger(depth, range=c(0,Inf));

  lastPath <- pathname;
  path <- lastPath;
  d <- depth;
  while (d > 0L) {
    path <- getParentLocal(lastPath);
    if (is.null(path))
      break;
    if (identical(path, lastPath)) {
      path <- NULL;
      break;
 #    throw("No such parent (depth=", depth, ") available: ", pathname);
    }
    lastPath <- path;
    d <- d - 1L;
  }

  path;
})
