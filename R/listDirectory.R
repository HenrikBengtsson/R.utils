###########################################################################/**
# @RdocDefault listDirectory
#
# @title "Gets the file names in the directory"
#
# \description{
#  @get "title". 
#
#  Contrary to \code{list.files()}, this method guarantees to work 
#  recursively.  Moreover, when subdirectories are processed recursively, 
#  directory names are also returned.
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A pathname to be listed.}
#   \item{pattern}{A @character string of the filename pattern passed. See
#    @see "base::list.files" for more details.}
#   \item{recursive}{If @TRUE, subdirectories are recursively processed,
#    otherwise not.}
#   \item{allNames}{If @TRUE, also files starting with a period are returned.}
#   \item{fullNames}{If @TRUE, the full path names are returned.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @vector of file names.
# }
#
# @author
#
# \seealso{
#   Internally @see "base::list.files" is used.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("listDirectory", "default", function(pathname, pattern=NULL, recursive=FALSE, allNames=FALSE, fullNames=FALSE, ...) {
  pathname <- as.character(pathname);
  if (!isDirectory(pathname))
    return(NULL);

  if (pathname == "") 
    pathname <- "."; # As in Java.

  pathname <- getAbsolutePath(pathname);
#  relPathname <- getRelativePath(pathname);
  relPathname <- pathname;

  # Get the directories (and files) in the current directory
  dirs <- list.files(relPathname, all.files=allNames, full.names=FALSE);
  dirs <- setdiff(dirs, c(".", ".."));
  if (length(dirs) == 0)
    return(NULL);

  if (fullNames) {
    dirs <- file.path(pathname, dirs);
  }

  # Get the files in the current directory
  if (is.null(pattern)) {
    files <- dirs;
  } else {
    files <- list.files(relPathname, pattern=pattern, all.files=allNames, 
                                               full.names=fullNames, ...);
  }

  if (recursive) {
    for (dir in dirs) {
      if (fullNames) {
        path <- dir;
      } else {
        path <- filePath(relPathname, dir);
      }
      if (isDirectory(path)) {
        if (identical(path, pathname))
          throw("Internal error: Detected infinite recursive call in listDirectory(): ", pathname);
        subfiles <- listDirectory(path, pattern=pattern, recursive=TRUE,
                             allNames=allNames, fullNames=fullNames, ...);
        if (!fullNames)
          subfiles <- file.path(dir, subfiles);
        files <- c(files, subfiles);
      }
    }
  }

  files;
})

###########################################################################
# HISTORY: 
# 2005-10-28
# o Added inifite recursive call detection to listDirectory().
# 2005-08-02
# o TODO: Now all listings are done using relative pathnames.
# 2005-05-29
# o Renamed from listDir() to listDirectory().
# o Created by copying code in the File class of the R.io package.
###########################################################################

