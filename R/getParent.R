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
  # Argument 'pathname':
  pathname <- as.character(pathname);

  getParentLocal <- function(pathname) {
    if (length(pathname) == 0)
      return(NULL);

    # Treat C:/, C:\\, ... special, that is, not at all.
    if (regexpr("^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]:[/\\]$", pathname) != -1)
      return(paste(gsub("[\\/]$", "", pathname), fsep=fsep, sep=""));
  
    # Split by '/' or '\\'
    components <- strsplit(pathname, split="[/\\]")[[1]];
    len <- length(components);
    if (len == 0) return(NULL); # As in Java...
  
    if (len == 2) {
      # Treat C:/, C:\\, ... special, that is, not at all.
      if (regexpr("^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]:$", components[1]) != -1)
        return(paste(components[1], fsep, sep=""));
    }
  
    name <- components[len];
    reg <- regexpr("^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]:", name);
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

 lastPath <- pathname;
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
