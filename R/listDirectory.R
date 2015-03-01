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
#   \item{path}{A path to be listed.}
#   \item{pattern}{A @character string of the filename pattern passed. See
#    @see "base::list.files" for more details.}
#   \item{recursive}{If @TRUE, subdirectories are recursively processed,
#    and not if @FALSE.  Alternatively, the maximum recursive depth can
#    be specified as a non-negative @numeric, where @FALSE corresponds to
#    \code{0L} depth and @TRUE corresponds \code{+Inf} depth.}
#   \item{allNames}{If @TRUE, also files starting with a period are returned.}
#   \item{fullNames}{If @TRUE, the full path names are returned.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @vector of file names.
# }
#
#
# \section{Recursive searching}{
#   Recursive searching of directory structure is done breath-first
#   in a lexicographic order.
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
setMethodS3("listDirectory", "default", function(path=".", pattern=NULL, recursive=FALSE, allNames=FALSE, fullNames=FALSE, ...) {
  # Argument 'path':
  path <- as.character(path);
  if (path == "")
    path <- "."; # As in Java.

  # Argument 'recursive':
  depth <- Arguments$getNumeric(recursive, range=c(0,+Inf));
  if (is.logical(recursive) && recursive) depth <- +Inf; ## TRUE => +Inf


  # Nothing to do?
  if (!isDirectory(path))
    return(NULL);

  path <- getAbsolutePath(path);
#  relPath <- getRelativePath(path);
  relPath <- path;

  # Get the directories (and files) in the current directory
  dirs <- list.files(relPath, all.files=allNames, full.names=FALSE);
  dirs <- setdiff(dirs, c(".", ".."));
  if (length(dirs) == 0L)
    return(NULL);

  if (fullNames) {
    dirs <- file.path(path, dirs);
  }

  # Get the files in the current directory
  if (is.null(pattern)) {
    files <- dirs;
  } else {
    files <- list.files(relPath, pattern=pattern, all.files=allNames,
                                               full.names=fullNames, ...);
  }

  if (depth > 0) {
    for (dir in dirs) {
      if (fullNames) {
        pathT <- dir;
      } else {
        pathT <- filePath(relPath, dir);
      }
      if (isDirectory(pathT)) {
        # Protect against inifinite loops/depth
        if (identical(pathT, path) && is.infinite(depth)) {
          throw("Internal error: Detected infinite recursive call in listDirectory(): ", path);
        }
        subfiles <- listDirectory(pathT, pattern=pattern, recursive=depth-1,
                               allNames=allNames, fullNames=fullNames, ...);
        if (!fullNames) {
          subfiles <- file.path(dir, subfiles);
        }
        files <- c(files, subfiles);
      }
    } # for (dir ...)
  }

  files;
})

###########################################################################
# HISTORY:
# 2013-09-28
# o Now argument 'recursive' of listDirectory() can also specify
#   the maximum recursive depth.
# 2005-10-28
# o Added inifite recursive call detection to listDirectory().
# 2005-08-02
# o TODO: Now all listings are done using relative pathnames.
# 2005-05-29
# o Renamed from listDir() to listDirectory().
# o Created by copying code in the File class of the R.io package.
###########################################################################
