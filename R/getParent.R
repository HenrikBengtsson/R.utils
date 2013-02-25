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
setMethodS3("getParent", "default", function(pathname, depth=1, fsep=.Platform$file.sep, ...) {
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
    if (length(pathname) == 0)
      return(NULL);

    # Windows drive letters
    # Treat C:/, C:\\, ... special, that is, not at all.
    pattern <- getWindowsDrivePattern("^[%s]:[/\\]$");
    if (regexpr(pattern, pathname) != -1)
      return(paste(gsub("[\\/]$", "", pathname), fsep=fsep, sep=""));
  
    # Split by '/' or '\\'
    components <- strsplit(pathname, split="[/\\]")[[1]];
    len <- length(components);
    if (len == 0) return(NULL); # As in Java...
  
    if (len == 2) {
      # Treat C:/, C:\\, ... special, that is, not at all.
      pattern <- getWindowsDrivePattern("^[%s]:$");
      if (regexpr(pattern, components[1]) != -1)
        return(paste(components[1], fsep, sep=""));
    }
  
    name <- components[len];
    pattern <- getWindowsDrivePattern("^[%s]:");
    reg <- regexpr(pattern, name);
    if (reg != -1) {
      components[len] <- substring(name, first=1, last=attr(reg, "match.length"));
      if (len == 1)
        components[len+1] <- "";
    } else {
      components <- components[-len];
    }
  
    if (length(components) == 0)
      return(NULL);
  
    # Re-build path to string...
    paste(components, sep="", collapse=fsep);
  } # getParentLocal()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  if (length(pathname) > 1) {
    throw("Argument 'pathname' must be a single character string: ", 
                                             paste(pathname, collapse=", "));
  }

  if (is.na(pathname)) {
    naValue <- as.character(NA);
    return(naValue);
  }

  pathname <- as.character(pathname);

  # Argument 'depth':
  depth <- as.integer(depth);
  depth <- Arguments$getInteger(depth, range=c(0,Inf));

  lastPath <- pathname;
  path <- lastPath;
  d <- depth;
  while (d > 0) {
    path <- getParentLocal(lastPath);
    if (is.null(path))
      break;
    if (identical(path, lastPath)) {
      path <- NULL;
      break;
 #    throw("No such parent (depth=", depth, ") available: ", pathname);
    }
    lastPath <- path;
    d <- d - 1;
  }
 
  path;  
})

###########################################################################
# HISTORY: 
# 2013-02-24
# o BUG FIX: Now getParent() also recognizes Windows drive letters in
#   lower case, which we have at least one report from Windows 7 that
#   getwd() can return 'c:/path/' instead of 'C:/path/'.
# 2009-12-30
# o ROBUSTNESS: Now getParent(), getAbsolutePath() and getRelativePath()
#   returns a (character) NA if the input is NA.
# 2009-06-07
# o BUG FIX: getParent(..., depth=0) gave an error, instead of returning
#   the input path.
# 2007-03-07
# o Now getParent(...) returns NULL if the parent directory does not
#   exists, regardless of depth.
# 2007-02-15
# o Added argument 'depth' to getParent().
# 2005-08-01
# o Empty parent directory is now returned as NULL.
# 2005-05-29
# o Created by copying code in the File class of the R.io package.
###########################################################################
