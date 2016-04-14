###########################################################################/**
# @RdocClass Arguments
#
# @title "Static class to validate and process arguments"
#
# \description{
#  @classhierarchy
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# @author
#
# @keyword programming
#*/###########################################################################
setConstructorS3("Arguments", function(...) {
  extend(Object(), "Arguments");
})



#########################################################################/**
# @RdocMethod getFilename
#
# @title "Gets and validates a filename"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{filename}{A @character string.}
#   \item{nchar}{An @integer @vector of length two specifying the range
#     of valid filename lengths.}
#   \item{class}{A @character string specifying the class of valid
#     filenames.}
#   \item{.name}{The name of the argument validated.}
#   \item{.type}{Not used.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string if filename is valid,
#  otherwise an exception is thrown.
# }
#
# \section{Missing values}{
#   If \code{filename} is a missing value, then an exception is thrown.
# }
#
# \details{
#   When argument \code{class="safe"}, the following 86 ASCII characters
#   are allowed in filenames:
#   \preformatted{
#      #$%&'()+,-.0123456789;=         (24 including initial space)
#     @ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_  (31)
#     `abcdefghijklmnopqrstuvwxyz{|}~  (31)
#   }
#   This class of filenames has been extensively tested on for
#   cross-platform support on Microsoft Windows, OSX and various
#   Unix flavors.
# }
#
# \references{
#   [1] Microsoft, \emph{Naming Files, Paths, and Namespaces} (Section 'Windows Naming Conventions'), 2012. \url{http://msdn.microsoft.com/en-us/library/aa365247.aspx#naming_conventions}.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("getFilename", "Arguments", function(static, filename, nchar=c(1,128), class=c("safe"), .name=NULL, .type="filename", ...) {
##
## OLD NOTES:
##   Valid filename characters:
## * The FTP RFCs require (7-bit) ASCII characters (and presumably not control
##   characters either). The 95 printable ASCII characters are (note initial
##   space):
##
##    !"#$%&'()*+,-./0123456789:;<=>?  (32)
##   @ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_  (32)
##   `abcdefghijklmnopqrstuvwxyz{|}~   (31)
##
## * On Windows the following 9 characters aren't allowed: \ / : * ? " < > !.
##   This leaves us with:
##
##    #$%&'()+,-.0123456789;=          (24)
##   @ABCDEFGHIJKLMNOPQRSTUVWXYZ[]^_   (31)
##   `abcdefghijklmnopqrstuvwxyz{|}~   (31)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument '.name':
  if (is.null(.name)) {
    .name <- as.character(deparse(substitute(filename)));
  }

  # Argument 'filename':
  if (is.na(filename)) {
    throw("Argument 'filename' cannot be a missing value: ", filename)
  }
  filename <- getCharacter(static, filename, nchar=nchar, .name=.name);

  # Argument 'class':
  class <- match.arg(class);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Filter out valid characters
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  chars <- filename;

  # Always valid characters
  chars <- gsub("[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0-9_.,]", "", chars);
  chars <- gsub("[-]", "", chars);
  chars <- gsub("[+]", "", chars);

  # Filter out according to classes.
  if ("safe" %in% class) {
    chars <- gsub("[ ]", "", chars);
    chars <- gsub("[\\[\\]]", "", chars);
    chars <- gsub("[#$%&'()`{|}~]", "", chars);
    chars <- gsub("[=]", "", chars);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Check for remaining (=invalid) characters
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (nchar(chars, type="chars") > 0L) {
    chars <- unlist(strsplit(chars, split=""));
    chars <- sort(unique(chars));
    chars <- sprintf("'%s'", chars);
    chars <- paste(chars, collapse=", ");
    throw(sprintf("Not a valid %s. Argument '%s' contains non-valid %s characters (%s): %s", .type, .name, .type, chars, filename));
  }

  filename;
}, static=TRUE, private=TRUE)



#########################################################################/**
# @RdocMethod getReadablePathname
#
# @title "Gets a readable pathname"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{file}{A @character string specifying the file.}
#   \item{path}{A @character string specifying the path.}
#   \item{mustExist}{If @TRUE, the pathname must exists and be readable,
#     otherwise an exception is thrown. If @FALSE, no such test is
#     performed.}
#   \item{absolutePath}{If @TRUE, the absolute pathname is returned.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string of the absolute pathname of the file.
# }
#
# \section{Missing values}{
#   If \code{file} or \code{path} is @NA and \code{mustExist} is @FALSE,
#   then (character) @NA is returned, otherwise an exception is thrown.
# }
#
# \section{Windows}{
#  If a too long pathname is detected on Windows, an informative warning
#  is given.
#  The maximum number of symbols in a Windows pathname is 256, including
#  file separators '/' or '\', but excluding the drive letter, and initial
#  file separator (e.g. 'C:/'), and the string terminator ('\\0'), cf.
#  'MSDN - Naming a File or Directory', Microsoft. In R, the limit is
#  one symbol less, i.e. 255.
# }
#
# @author
#
# \seealso{
#   @seemethod "getWritablePathname"
#   @see "R.utils::filePath".
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getReadablePathname", "Arguments", function(static, file=NULL, path=NULL, mustExist=TRUE, absolutePath=FALSE, adjust=c("none", "url"), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'file':
  if (!is.null(file)) {
    if (inherits(file, "connection")) {
      throw("In this context, argument 'file' cannot be a connection.");
    }
    file <- getCharacter(static, file, length=c(1,1));
  }
  # Ignore 'path'?
  if (isAbsolutePath(file)) path <- NULL

  # Argument 'path':
  if (!is.null(path)) {
    path <- getCharacter(static, path, length=c(1,1));
  }

  if (is.null(file) && is.null(path)) {
    throw("Both argument 'file' and 'path' are NULL.");
  }

  # Argument 'mustExist':
  mustExist <- getLogical(static, mustExist);

  # Argument 'absolutePath':
  absolutePath <- getLogical(static, absolutePath);

  # Argument 'adjust':
  adjust <- match.arg(adjust);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Process arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (mustExist) {
    if (!is.null(file) && is.na(file)) {
      throw("No such file/directory because argument 'file' is NA.");
    }
    if (!is.null(path) && is.na(path)) {
      throw("No such file/directory because argument 'path' is NA.");
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Make sure <path>/<file> is properly split up
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(path)) {
    pathname <- file;
  } else if (is.null(file)) {
    pathname <- path;
  } else {
    pathname <- file.path(path, file);
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows: The maximum number of symbols in a Windows pathname is 256,
  # in R it's 255. For more details, see:
  # https://msdn.microsoft.com/en-us/library/aa365247(VS.85).aspx
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (.Platform$OS.type == "windows") {
    if (!is.na(pathname) && nchar(pathname, type="chars") > 255L) {
      msg <- sprintf("A too long pathname (%d characters) was detected on Windows, where maximum number of symbols is 256 and in R it is one less: %s", nchar(pathname, type="chars"), pathname);
      warning(msg);
    }
  }

  path <- dirname(pathname);
  file <- basename(pathname);
  pathname <- NULL;


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Adjust filename?
  # FIXME: Adjust also directory names. /HB 2014-05-04
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (adjust == "url") {
    # Decode non-problematic filename characters, e.g. '%20' -> ' '
    file <- URLdecode(file);

    # But encode problematic ones, e.g. ':', '*'
    file <- gsub(":", "%3A", file, fixed=TRUE)
    file <- gsub("*", "%2A", file, fixed=TRUE)
    file <- gsub("\\", "%5C", file, fixed=TRUE)

    # Encode tilde (~) unless first character
    # FIX ME: Needed or not? /HB 2014-05-04
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Expand links
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # NB: Here 'mustExist=TRUE' means that filePath() will always return
  # a pathname, not that it will give an error if file does not exist.
  pathname <- filePath(path, file, expandLinks="any", mustExist=TRUE);

  if (absolutePath) {
    pathname <- getAbsolutePath(pathname);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Windows: The maximum number of symbols in a Windows pathname is 256,
  # in R it's 255. For more details, see:
  # https://msdn.microsoft.com/en-us/library/aa365247(VS.85).aspx
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (.Platform$OS.type == "windows") {
    if (!is.na(pathname) && nchar(pathname, type="chars") > 255L) {
      msg <- sprintf("A too long pathname (%d characters) was detected on Windows, where maximum number of symbols is 256 and in R it is one less: %s", nchar(pathname, type="chars"), pathname);
      warning(msg);
    }
  }


  if (mustExist) {
    # Check if file exists
    if (!file.exists(pathname)) {
      # Locate the first parent directory that does not exist
      depth <- 1;
      while(TRUE) {
        parent <- getParent(pathname, depth=depth);
        if (is.na(parent) || is.null(parent) || isDirectory(parent))
          break;
        depth <- depth + 1;
      } # while()

      reason <- NULL;
      if (is.na(parent) || is.null(parent)) {
        parent <- getParent(pathname);
        if (is.na(parent) || is.null(parent)) {
          reason <- "no such file in the current working directory";
        } else {
          reason <- sprintf("none of the parent directories [%s/] exist", parent);
        }
      } else {
        reason <- sprintf("%s/ exists, but nothing beyond", parent);
      }
      if (!is.null(reason) && !isAbsolutePath(pathname)) {
        reason <- sprintf("%s; current directory is '%s'", reason, getwd());
      }
      reason <- sprintf(" (%s)", reason);
      throw("Pathname not found: ", pathname, reason);
    }

    # Check if file permissions allow reading
    if (fileAccess(pathname, mode=4) == -1) {
      throw("Pathname exists, but there is no permission to read file: ", pathname);
    }
  } # if (mustExist)

  pathname;
}, static=TRUE)


setMethodS3("getReadablePath", "Arguments", function(static, path=NULL, mustExist=TRUE, ...) {
  if (is.null(path))
    return(NULL);

  path <- getReadablePathname(static, path=path, mustExist=mustExist, ...);
  if (mustExist && !is.na(path) && !isDirectory(path)) {
    throw("Argument 'path' is not a directory: ", path);
  }

  path;
}, static=TRUE, protected=TRUE)



#########################################################################/**
# @RdocMethod getReadablePathnames
#
# @title "Gets a readable pathname"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{files}{A @character @vector of filenames.}
#   \item{paths}{A @character @vector of paths.}
#   \item{...}{Arguments passed to @seemethod "getReadablePathname".}
# }
#
# \value{
#  Returns a @character @vector of the pathnames for the files.
# }
#
# @author
#
# \seealso{
#   @seemethod "getReadablePathname"
#   @see "R.utils::filePath".
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getReadablePathnames", "Arguments", function(static, files=NULL, paths=NULL, ...) {
  nbrOfFiles <- length(files);
  # Argument 'paths':
  if (length(paths) > nbrOfFiles) {
    throw("Argument 'paths' is longer than argument 'files': ",
                                          length(paths), " > ", nbrOfFiles);
  }

  # Expand argument 'paths' to be of same length as 'files'
  if (!is.null(paths)) {
    paths <- rep(paths, length.out=nbrOfFiles);
  }

  pathnames <- list();
  for (kk in seq_len(nbrOfFiles)) {
    pathnames[[kk]] <- getReadablePathname(static, files[kk],
                                                       path=paths[kk], ...);
  }

  unlist(pathnames);
}, static=TRUE)


#########################################################################/**
# @RdocMethod getWritablePathname
#
# @title "Gets a writable pathname"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @seemethod "getReadablePathname".}
#   \item{mustExist}{If @TRUE and the pathname does not exists,
#     an Exception is thrown, otherwise not.}
#   \item{mustNotExist}{If the file exists, and \code{mustNotExist} is
#     @TRUE, an Exception is thrown. If the file exists, and
#     \code{mustNotExist} is @FALSE, or the file does not exists, the
#     pathname is accepted.}
#   \item{mkdirs}{If @TRUE, \code{mustNotExist} is @FALSE, and the path to
#     the file does not exist, it is (recursively) created.}
#   \item{maxTries}{A positive @integer specifying how many times the
#     method should try to create a missing directory before giving up.
#     For more details, see @see "R.utils::mkdirs".}
# }
#
# \value{
#  Returns a @character string of the pathname of the file.
#  If the argument was invalid an @see "R.oo::Exception" is thrown.
# }
#
# \section{Missing values}{
#   If any argument in \code{...} is @NA, an exception is thrown.
# }
#
# @author
#
# \seealso{
#   @seemethod "getReadablePathname".
#   @see "R.utils::filePath".
#   @see "R.utils::mkdirs".
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getWritablePathname", "Arguments", function(static, ..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE, maxTries=5L) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'mustExist':
  mustExist <- getLogical(static, mustExist);

  # Argument 'mustNotExist':
  mustNotExist <- getLogical(static, mustNotExist);

  # Argument 'mkdirs':
  mkdirs <- getLogical(static, mkdirs);

  # Create pathname
  pathname <- getReadablePathname(static, ..., mustExist=mustExist);

  if (is.na(pathname)) {
    throw("Cannot retrieve writable file/directory because it is NA.");
  }

  if (isFile(pathname)) {
    # Check if it is ok that the file already exists
    if (mustNotExist) {
      throw("File already exists: ", pathname);
    }

    # Check if file permissions allow to modify existing
    if (fileAccess(pathname, mode=2) == -1) {
      throw("No permission to modify existing file: ", pathname);
    }
  } else {
    # Check if directory exists
    path <- getParent(pathname);
    if (!isDirectory(path)) {
      # Does the directory have to exists (mkdirs=FALSE)?
      if (!mkdirs) {
        path <- getReadablePath(static, path, mustExist=TRUE);
      }

      # If not, first try to create the parent directory, iff missing.
      # This should give a more informative error message, if it fails.
      pathP <- getParent(path);
      createParent <- !isDirectory(pathP);
      if (createParent) {
        pathnameP <- getWritablePathname(static, file="dummy-not-tested", path=pathP, mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE, maxTries=maxTries);
      }

      # Try to create the directory
      mkdirs(path, mustWork=TRUE, maxTries=maxTries)
    }

    filename <- basename(pathname);
    if (filename != "dummy-not-tested") {
      # Check if file permissions allow to create a file in the directory
      pathT <- ifelse(is.null(path), ".", path);
      if (fileAccess(pathT, mode=2) == -1) {
        throw("No write permission for directory: ", path);
      }

      # Try to create a file
      filenameT <- basename(tempfile());
      pathnameT <- filePath(path, filenameT);

      on.exit({
        if (isFile(pathnameT)) {
          # Try to remove the temporary file
          res <- FALSE;
          suppressWarnings({
            for (tt in 1:maxTries) {
              res <- file.remove(pathnameT);
              if (res) break;
              # If not, wait a bit and try again...
              Sys.sleep(0.5);
            }
          })
          if (!res) {
            warning("Failed to remove temporary file: ", sQuote(pathnameT));
          }
        }
      }, add=TRUE);

      tryCatch({
        cat(file=pathnameT, Sys.time());
      }, error = function(ex) {
        throw("No permission to create a new file in directory: ", path);
      });
    } # if (filename != "dummy-not-tested")
  } # if (isFile(pathname))

  pathname;
}, static=TRUE)



setMethodS3("getWritablePath", "Arguments", function(static, path=NULL, ...) {
  # Special case: If path == NULL, the skip
  if (is.null(path))
    return(NULL);

  pathname <- getWritablePathname(static, file="dummy-not-created", path=path, ...);
  getParent(pathname);
}, static=TRUE, protected=TRUE)



setMethodS3("getDirectory", "Arguments", function(static, path=NULL, ..., mustExist=FALSE, mkdirs=TRUE) {
  # Argument 'mustExist':
  mustExist <- getLogical(static, mustExist);

  # Argument 'mkdirs':
  mkdirs <- getLogical(static, mkdirs);

  # Create pathname
  pathname <- getReadablePathname(static, path=path, ..., mustExist=mustExist);

  if (is.na(pathname)) {
    throw("Cannot retrieve directory because it is NA.");
  }

  # Nothing to do?
  if (isDirectory(pathname)) {
    return(pathname);
  }

  if (!mkdirs) {
    throw("Directory does not exist: ", pathname);
  }

  mkdirs(pathname, mustWork=TRUE)

  pathname;
}, static=TRUE, protected=TRUE)



#########################################################################/**
# @RdocMethod getVector
#
# @title "Validates a vector"
#
# \description{
#  @get "title" by checking its length (number of elements).
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{A single @vector.}
#   \item{length}{A @numeric @vector of length two or more. If two, it
#     is the minimum and maximum length of \code{x}. Elsewise it is the
#     set of possible lengths of \code{x}.}
#   \item{.name}{A @character string for name used in error messages.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns the same @vector, if it is valid. Otherwise an exception is
#  thrown.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getVector", "Arguments", function(static, x, length=NULL, .name=NULL, ...) {
  if (length(length) == 0)
    return(x);

  if (is.null(.name))
    .name <- as.character(deparse(substitute(x)));

  # See ?is.vector for how it is defined. /HB 2009-05-19
  attrs <- attributes(x);
  attributes(x) <- attrs[intersect(names(attrs), c("names", "dim"))];

  if (length[1] > 0 && !is.vector(x)) {
    throw(sprintf("Argument '%s' is not a vector: %s", .name, storage.mode(x)));
  }

  xlen <- length(x);

  if (length(length) == 1)
    length <- c(1,length);

  if (length(length) == 2) {
    if (xlen < length[1] || xlen > length[2]) {
      if (length[1] == length[2] && length[1] == 1) {
        throw(sprintf("Argument '%s' should be a single value not %d values.", .name, xlen));
      } else if (length[1] == length[2]) {
        throw(sprintf("Number of elements in argument '%s' should be exactly %d not %d value(s).", .name, length[1], xlen));
      } else {
        throw(sprintf("Number of elements in argument '%s' is out of range [%d,%d]: %d", .name, length[1], length[2], xlen));
      }
    }
  } else {
    if (!is.element(xlen, length)) {
      throw(sprintf("Number of elements in argument '%s' is not in {%s}: %d",
                                 .name, seqToHumanReadable(length), xlen, ));
    }
  }

  attributes(x) <- attrs;

  x;
}, static=TRUE, private=TRUE)




#########################################################################/**
# @RdocMethod getCharacters
# @aliasmethod getCharacter
#
# @title "Coerces to a character vector and validates"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{s}{A @vector.}
#   \item{nchar}{A @numeric @vector of length one or two. If one,
#     the maximum number of characters ("length") in \code{s}. If two,
#     the minimum and maximum length of \code{s}.}
#   \item{useNames}{If @TRUE, the 'names' attribute is preserved, otherwise
#     it is dropped.}
#   \item{asGString}{If @TRUE, each string is treated as a @see "GString".}
#   \item{.name}{A @character string for name used in error messages.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character @vector, if it is valid. Otherwise an exception is
#  thrown.
# }
#
# \section{Missing values}{
#   If \code{s} contains missing values, and \code{nchar} is not @NULL,
#   then an exception is thrown.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getCharacters", "Arguments", function(static, s, length=NULL, trim=FALSE, nchar=NULL, useNames=TRUE, asGString=getOption("Arguments$getCharacters/args/asGString", TRUE), .name=NULL, ...) {
  if (is.null(.name))
    .name <- as.character(deparse(substitute(s)));

  s <- getVector(static, s, length=length, .name=.name);

  # Nothing to check?
  if (length(s) == 0L)
    return(s);

  # Coerce GString:s to character strings?
  if (asGString) {
    # Treat only strings with GString markup.  This avoids lots of
    # GString overhead if there are no GStrings.
    hasMarkup <- (regexpr("${", s, fixed=TRUE) != -1);
    idxs <- which(hasMarkup & !is.na(s));
    s[idxs] <- unlist(lapply(s[idxs], FUN=function(x) {
      x <- GString(x);
      as.character(x);
    }), use.names=FALSE);
  }

  if (trim) {
    # Trim the strings
    # (using s[] to preserve attributes)
    s[] <- unlist(lapply(s, FUN=trim), use.names=FALSE);
  }

  # Coerce to character strings
  # (using s[] to preserve attributes)
  s[] <- unlist(lapply(s, FUN=as.character), use.names=FALSE);

  if (!useNames) {
    names(s) <- NULL;
  }

  # Nothing to check?
  if (is.null(nchar))
    return(s);

  # At this point, missing values are not allowed
  if (any(is.na(s))) {
    throw("Argument 'nchar' cannot be specified if character vector contains missing values: ", hpaste(sQuote(s)))
  }

  if (length(nchar) == 1L)
    nchar <- c(1L, nchar);

  # Check the string length of each character string
  for (kk in seq_along(s)) {
    slen <- nchar(s[kk], type="chars");
    if (slen < nchar[1L] || slen > nchar[2L]) {
      throw(sprintf("String length of elements #%d in '%s' is out of range [%d,%d]: %d '%s'", kk, .name, nchar[1L], nchar[2L], slen, s[kk]));
    }
  }

  s;
}, static=TRUE)

setMethodS3("getCharacter", "Arguments", function(static, ..., length=c(0,1)) {
  getCharacters(static, ..., length=length);
}, static=TRUE)




#########################################################################/**
# @RdocMethod getNumerics
# @aliasmethod getNumeric
#
# @title "Coerces to a numeric vector and validates"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{A @vector.}
#   \item{range}{Two @numerics for the allowed ranged. If @NULL, range is
#     not checked.}
#   \item{asMode}{A @character specifying the mode to coerce to.}
#   \item{disallow}{A @character @vector specifying diallowed value sets,
#                     i.e. \code{"NA"}, \code{"NaN"}, and/or \code{"Inf"}.}
#   \item{...}{Arguments passed to @method "getVector".}
#   \item{.name}{A @character string for name used in error messages.}
# }
#
# \value{
#  Returns a @numeric @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getNumerics", "Arguments", function(static, x, range=NULL, asMode=NULL, disallow=NULL, ..., .name=NULL) {
  # Argument '.name':
  if (is.null(.name)) {
    .name <- as.character(deparse(substitute(x)));
  }
  x <- getVector(static, x, ..., .name=.name);
  xMode <- storage.mode(x);

  # Coerce the mode of 'x'
  if (is.null(asMode)) {
    if (is.element(xMode, c("integer", "double"))) {
      asMode <- xMode;
    } else {
      asMode <- "double";
    }
  }

  # Update/coerce mode?
  if (xMode != asMode) {
    storage.mode(x) <- asMode;
  }

  # Nothing to do?
  if (length(x) == 0)
    return(x);

  if (!is.null(disallow)) {
    if (is.element("NaN", disallow) && any(is.nan(x))) {
      throw(sprintf("Argument '%s' contains %d NaN value(s).",
                                                   .name, sum(is.nan(x))));
    }

    if (is.element("NA", disallow) && any(is.na(x) & !is.nan(x))) {
      throw(sprintf("Argument '%s' contains %d NA value(s).",
                                                    .name, sum(is.na(x))));
    }

    # For conveniency, disallow 'Inf' here too; other range takes care of it.
    if (is.element("Inf", disallow) && any(is.infinite(x))) {
      throw(sprintf("Argument '%s' contains %d (-/+)Inf value(s).",
                                             .name, sum(is.infinite(x))));
    }
  }

  # Nothing to check?
  if (is.null(range))
    return(x);

  # Argument 'range':
  if (length(range) != 2) {
    throw("Argument 'range' should be of length 2: ", length(range));
  }
  if (range[2] < range[1]) {
    throw(sprintf("Argument 'range' is not ordered: c(%s,%s)", range[1], range[2]));
  }

  # Suppress warnings when there are no finite values in x.
  suppressWarnings({
    xrange <- range(x, na.rm=TRUE);
  })

  if (xrange[1] < range[1] || xrange[2] > range[2]) {
    xrange <- as.character(xrange);
    range <- as.character(range);
    if (length(x) == 1) {
      throw(sprintf("Argument '%s' is out of range [%s,%s]: %s",
                          .name, range[1], range[2], x));
    } else {
      throw(sprintf("Range of argument '%s' is out of range [%s,%s]: [%s,%s]",
                          .name, range[1], range[2], xrange[1], xrange[2]));
    }
  }

  x;
}, static=TRUE)

setMethodS3("getNumeric", "Arguments", function(static, ..., length=1) {
  getNumerics(static, ..., length=length);
}, static=TRUE)




#########################################################################/**
# @RdocMethod getDoubles
# @aliasmethod getDouble
#
# @title "Coerces to a double vector and validates"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @method "getNumeric".}
#   \item{disallow}{Disallowed values. See @method "getNumerics" for details.}
# }
#
# \value{
#  Returns a @double @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getDoubles", "Arguments", function(static, ..., disallow=c("NA","NaN")) {
  getNumerics(static, ..., asMode="double", disallow=disallow);
}, static=TRUE)

setMethodS3("getDouble", "Arguments", function(static, ..., length=1) {
  getDoubles(static, ..., length=length);
}, static=TRUE)




#########################################################################/**
# @RdocMethod getIntegers
# @aliasmethod getInteger
#
# @title "Coerces to a integer vector and validates"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Arguments passed to @method "getNumeric".}
#   \item{disallow}{Disallowed values. See @method "getNumerics" for details.}
# }
#
# \value{
#  Returns a @integer @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getIntegers", "Arguments", function(static, ..., disallow=c("NA","NaN")) {
  getNumerics(static, ..., asMode="integer", disallow=disallow);
}, static=TRUE)

setMethodS3("getInteger", "Arguments", function(static, ..., length=1) {
  getIntegers(static, ..., length=length);
}, static=TRUE)



#########################################################################/**
# @RdocMethod getIndices
# @aliasmethod getIndex
#
# @title "Coerces to a integer vector and validates"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{A single @vector.  If @logical, @see "base::which" is used.}
#   \item{...}{Arguments passed to @method "getIntegers".}
#   \item{range}{Allowed range. See @method "getNumerics" for details.}
#   \item{max}{The maximum of the default range.}
#   \item{.name}{A @character string for name used in error messages.}
# }
#
# \value{
#  Returns an @integer @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getIndices", "Arguments", function(static, x, ..., max=Inf, range=c(1*(max > 0L),max), .name=NULL) {
  if (is.null(.name))
    .name <- as.character(deparse(substitute(x)));

  # Argument 'x':
  if (is.logical(x)) {
    x <- which(x);
  }

  # Argument 'max':
  if (length(max) != 1) {
    throw("Argument 'max' must be a single value: ", length(max));
  }
  max <- as.numeric(max);
  if (is.na(max)) {
    throw("Argument 'max' is NA/NaN: ", max);
  } else if (max < 0) {
    throw("Argument 'max' must be positive: ", max);
  }

  # Argument 'range':
  if (!is.null(range)) {
    if (length(range) != 2) {
      throw("Argument 'range' should be of length 2: ", length(range));
    }
    if (range[2] < range[1]) {
      throw(sprintf("Argument 'range' is not ordered: c(%s,%s)", range[1], range[2]));
    }
  }

  # Identify indices
  x <- getIntegers(static, x, ..., range=range, .name=.name);

  # Special dealing with range = c(0,0)
  if (!is.null(range)) {
    if (range[2] < 1L) {
      xt <- x[is.finite(x)];
      if (length(xt) > 0) {
        throw(sprintf("Argument 'x' contains %d non-missing indices although the range ([%s,%s]) implies that there should be none.", length(xt), range[1L], range[2L]));
      }
    }
  }

  x;
}, static=TRUE)

setMethodS3("getIndex", "Arguments", function(static, ..., length=1) {
  getIndices(static, ..., length=length);
}, static=TRUE)




#########################################################################/**
# @RdocMethod getLogicals
# @aliasmethod getLogical
#
# @title "Coerces to a logical vector and validates"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{A @vector.}
#   \item{disallow}{A @character @vector specifying diallowed value sets
#      after coercing, i.e. \code{"NA"}.}
#   \item{...}{Arguments passed to @method "getVector".}
#   \item{.name}{A @character string for name used in error messages.}
# }
#
# \value{
#  Returns a @numeric @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getLogicals", "Arguments", function(static, x, ..., disallow=c("NA", "NaN"), coerce=FALSE, .name=NULL) {
  if (is.null(.name))
    .name <- as.character(deparse(substitute(x)));
  x <- getVector(static, x, ..., .name=.name);

  # Coerce to logicals?
  if (coerce)
    x <- as.logical(x);

  if (!is.null(disallow)) {
    if (is.element("NA", disallow) && any(is.na(x))) {
      throw(sprintf("Argument '%s' contains %d NA value(s).",
                                                    .name, sum(is.na(x))));
    }
  }

  # Assert that 'x' is logical before returning
  if (any(!is.logical(x)))
    throw(sprintf("Argument '%s' is non-logical: %s", .name, class(x)));

  x;
}, static=TRUE)

setMethodS3("getLogical", "Arguments", function(static, ..., length=1) {
  getLogicals(static, ..., length=length);
}, static=TRUE)



#########################################################################/**
# @RdocMethod getVerbose
#
# @title "Coerces to Verbose object"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{verbose}{A single object. If a @see "Verbose", it is immediately
#      returned.  If a @numeric value, it is used as the threshold.
#      Otherwise the object is coerced to a @logical value and if @TRUE,
#      the threshold is \code{defaultThreshold}.}
#   \item{defaultThreshold}{A @numeric value for the default threshold, if
#       \code{verbose} was interpreted as a @logical value.}
#   \item{useNullVerbose}{If \code{verbose} can be interpreted as @FALSE,
#       return a @see NullVerbose object if @TRUE.}
#   \item{...}{Passed to the constructor of @see "Verbose".}
#   \item{.name}{A @character string for name used in error messages.}
# }
#
# \value{
#  Returns a @see Verbose (or a @see "NullVerbose") object.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getVerbose", "Arguments", function(static, verbose, defaultThreshold=-1, useNullVerbose=TRUE, ..., .name=NULL) {
  if (inherits(verbose, "Verbose"))
    return(verbose);

  if (is.null(.name))
    .name <- as.character(deparse(substitute(verbose)));

  if (is.numeric(verbose)) {
    verbose <- getDouble(static, verbose, .name=.name);
    verbose <- Verbose(threshold=verbose, ...);
  } else {
    verbose <- getLogical(static, verbose, .name=.name);
    if (!verbose && useNullVerbose) {
      verbose <- NullVerbose();
    } else {
      defaultThreshold <- getNumeric(static, defaultThreshold);
      verbose <- Verbose(threshold=defaultThreshold, ...);
    }
  }

  verbose;
}, static=TRUE)


#########################################################################/**
# @RdocMethod getRegularExpression
#
# @title "Gets a valid regular expression pattern"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pattern}{A @character string to be validated.}
#   \item{.name}{A @character string for name used in error messages.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @see "base::grep".
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getRegularExpression", "Arguments", function(static, pattern=NULL, ..., .name=NULL) {
  if (is.null(.name)) {
    .name <- as.character(deparse(substitute(pattern)));
  }

  if (is.null(pattern)) {
    throw(sprintf("Argument '%s' is not a valid regular expression: NULL",
                                                                   .name));
  }

  pattern <- getCharacter(static, pattern, .name=.name, length=c(1,1));

  # Validate it
  tryCatch({
    regexpr(pattern, "dummy string", ...);
  }, error = function(ex) {
    throw(sprintf("Argument '%s' is not a valid regular expression: %s. Error message from regexpr() was: %s", .name, pattern, ex$message));
  })

  pattern;
}, static=TRUE)



#########################################################################/**
# @RdocMethod getEnvironment
#
# @title "Gets an existing environment"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{envir}{An @environment, the name of a loaded package, or @NULL.
#      If @NULL, the global environment is returned.}
#   \item{.name}{A @character string for name used in error messages.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns an @environment.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getEnvironment", "Arguments", function(static, envir=NULL, .name=NULL, ...) {
  if (is.null(.name))
    .name <- as.character(deparse(substitute(envir)));

  if (is.null(envir)) {
    return(.GlobalEnv);
  }

  if (is.character(envir)) {
    name <- getCharacter(static, envir, length=c(1,1));
    envirs <- gsub("^package:", "", search());
    pos <- which(name == envirs);
    if (length(pos) == 0)
      throw("Argument 'envir' is not the name of a loaded package: ", envir);
    envir <- pos.to.env(pos);
  }

  if (!is.environment(envir)) {
    throw(sprintf("Argument '%s' is not an environment: %s",
                                                   .name, class(envir)[1]));
  }
}, static=TRUE)






#########################################################################/**
# @RdocMethod getInstanceOf
#
# @title "Gets an instance of the object that is of a particular class"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{object}{The object that should be returned as an instance of
#      class \code{class}.}
#   \item{class}{A @character string specifying the name of the class that
#      the returned object should inherit from.}
#   \item{coerce}{If @TRUE and the object is not of the wanted class, then
#      method will be coerced to that class, if possible.  Otherwise,
#      an error is thrown.}
#   \item{...}{Not used.}
#   \item{.name}{A @character string for name used in error messages.}
# }
#
# \value{
#   Returns an object inheriting from class \code{class}.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("getInstanceOf", "Arguments", function(static, object, class, coerce=FALSE, ..., .name=NULL) {
  if (is.null(.name)) {
    .name <- as.character(deparse(substitute(object)));
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'class':
  class <- getCharacter(static, class);

  # Argument 'coerce':
  coerce <- getLogical(static, coerce);

  # Argument 'object':
  if (!inherits(object, class)) {
    if (coerce) {
      object <- as(object, class, ...);
    } else {
      throw(sprintf("Argument '%s' is neither of nor inherits class %s: %s",
                     .name, class[1], paste(class(object), collapse=", ")));
    }
  }

  # Return the object
  object;
}, static=TRUE, protected=TRUE)


withoutGString <- function(..., envir=parent.frame()) {
  # Temporarily disable 'asGString' for Arguments$getCharacters()
  oopts <- options("Arguments$getCharacters/args/asGString"=FALSE);
  on.exit(options(oopts));
  eval(..., envir=envir);
} # withoutGString()



############################################################################
# HISTORY:
# 2015-02-05
# o Now getReadablePathname() warns about too long pathnames on Windows.
# 2014-10-03
# o Now Arguments$getReadablePathname(file, path) ignores 'path' if
#   'file' specifies an absolute pathname.
# 2014-05-04
# o Added argument 'adjust' to Arguments$getReadablePathname().
# 2014-01-12
# o Made argument 'useNames' to getCharacters() default to TRUE.
# o Now Arguments$getCharacters() preserves attributes.
# 2013-12-15
# o Added withoutGString().
# 2013-12-13
# o Now argument 'asGString' for Arguments$getCharacters() defaults to
#   getOption("Arguments$getCharacters/args/asGString", TRUE).  This makes
#   it possible to disable this feature, even when it is not possible to
#   directly pass that argument.  This will also make it possible to
#   set the default to FALSE in the future (instead of TRUE as today).
# 2013-11-15
# o CLEANUP: Arguments$getNumerics(NA, range=c(0,1)) no longer gives
#   warnings on "no non-missing arguments to min()" etc.
# 2013-08-26
# o CLEANUP: Arguments$getReadablePathnames(files, paths=NULL) no longer
#   warns about "rep(paths, length.out = nbrOfFiles) : 'x' is NULL so
#   the result will be NULL" if length(files) > 0.
# 2012-12-01
# o BUG FIX: Arguments$getIndices(NA_integer_, max=0, disallow="NaN")
#   would give "Exception: Argument 'x' is of length 1 although the range
#   ([0,0]) implies that is should be empty." although it should return
#   NA_integer.
# 2012-10-21
# o ROBUSTNESS: Added argument 'maxTries' to Arguments$getWritablePathname()
#   to have the method try to create missing directories multiple times
#   before giving up.
# 2012-10-16
# o Moved Arguments$getFilename() from R.filesets to R.utils.
#   Added Rd help.
# 2012-09-24
# o BUG FIX: Arguments$getReadablePath(..., mustExist=FALSE) did not work.
# 2011-11-15
# o SPEEDUP: Now Arguments$getCharacters(s, asGString=TRUE) is much
#   faster for elements of 's' that are non-GStrings.  For long character
#   vectors the speedup is 100-200x times.
# 2011-10-16
# o CORRECTION: Arguments$getNumerics(c(Inf), disallow="Inf") would report
#   that it contains "NA" instead of "Inf" values".
# 2011-03-08
# o Now Arguments$getWritablePath(NULL) returns NULL without asserting
#   write permission, which is analogue to how it is done with
#   Arguments$getReadablePath(NULL).
# 2010-11-19
# o TYPO: Static methods getVector() and getRegularExpression() of
#   Arguments would report the incorrect argument name.
# 2010-01-25
# o ROBUSTNESS: Added validation of argument 'range' in Arguments methods.
# 2010-01-01
# o Now Arguments$getNumerics(x) displays the value of 'x' in the error
#   message if it is a *single* value and out of range.
# o Added argument 'max' to Arguments$getIndices().
# 2009-12-30
# o Now Arguments$getWritablePath() and Arguments$getWritablePathname()
#   throws an error is an NA file/directory is specified.
# o Now Arguments$getReadablePath() and Arguments$getReadablePathname()
#   throws an error is an NA file/directory is specified, unless
#   'mustExist' is FALSE.
# o Added Arguments$getInstanceOf(...).
# o BUG FIX: Arguments$getCharacters(s) would return a *logical* instead
#   of a *character* vector if 's' contained all NAs.
# 2009-11-20
# o If 'x' is a logical vector, Arguments$getIndices(x) will now return
#   the same as if x <- which(x).
# 2009-10-30
# o Now Arguments$getWritablePathname(path) validates that there is enough
#   file permissions so that a file can be created in the 'path' directory.
# 2009-06-29
# o Added argument 'useNames=FALSE' to getCharacters() of Arguments.
#   Don't remember why I didn't want names in the first place (see below).
# 2009-05-18
# o UPDATE: Now getWritablePathname() gives a more precise error message
#   if the file exists but the rights to modifies it does not.
# o UPDATE: Now getEnvironment(), getRegularExpression(), and
#   getReadablePathname() give clearer error messages if more the input
#   contains more than one element.
# 2009-05-15
# o Changed argument 'asMode' for Arguments$getNumerics() to default to
#   NULL instead of "numeric".  This will case the method to return integer
#   if the input is integer, and double if the input is double.  The
#   previous default was alway returning doubles, cf. notes on common
#   misconception of how as.numeric() works.  In the case when the input
#   is neither integer or double, the default is to coerce to doubles.
#   Also, the method is now using storage.mode() instead of mode().
# 2009-04-04
# o Now getReadablePathname(..., mustExist=TRUE) of Arguments reports also
#   the working directory if the a relative pathname is missing.
# o BUG FIX: getReadablePathname(..., mustExist=TRUE) of Arguments gave an
#   internal error if the pathname was in the current directory and did
#   not exist.
# 2008-12-27
# o Now getReadablePathname(..., mustExist=TRUE) and
#   getWritablePathname(..., mkdirs=FALSE) of Arguments report which
#   of the parent directories exists when the requested pathname is not
#   found.  This will help troubleshooting missing pathnames.
# 2008-12-01
# o Now getReadablePathname() and getWritablePathname() use the more
#   trusted fileAccess() of R.utils.
# 2008-02-26
# o Now the '...' arguments to Arguments$getVerbose() are passed to the
#   constructor of Verbose.  This allows the construct of
#   Arguments$getVerbose(-10, timestamp=TRUE).
# 2005-12-05
# o getNumerics(Inf, range=c(0,Inf)) would give a warning "no finite
#   arguments to min; returning Inf". Fixed with a withCallingHandlers().
# 2005-11-22
# o Added Rdoc comments for getReadablePathnames().
# 2005-11-13
# o Added getReadablePathnames().
# o Now getCharacter() only accept vectors of length zero or one.
# 2005-10-25
# o BUG FIX: New 'mustNotExist' argument got logically the inverse.
# 2005-10-21
# o Renamed argument 'overwrite' in getWritablePathname() in Arguments to
#   'mustNotExist'.  Renamed all 'mustExists' to 'mustExist' in all methods
#   of class Arguments.
# 2005-09-06
# o Replace argument 'gString' of getCharacters() to 'asGString', cf.
#   Verbose class.
# o Now Arguments$getReadablePathname() follows Windows shortcut files.
# 2005-08-01
# o getReadablePathname() no longer returns the absolute pathname by
#   default. This is because on some systems the relative pathname can
#   be queried wheras the absolute one may not be access due to missing
#   file permissions.
# o Added getEnvironment(), getRegularExpression(),
#   getReadablePath(), getWritablePath().
# 2005-07-19
# o BUG FIX: getCharacters() would not coerce Object:s correctly.
# 2005-07-07
# o getCharacters() returned attribute 'names' too. Removed.
# 2005-06-20
# o Added argument 'absolutePath' to getReadablePathname().
# 2005-06-18
# o Added static methods getVector(), getNumeric/s(), getDouble/s(),
#   getInteger/s(), getIndices/getIndex(), and getLogical/s(). These should
#   be very handy. Also added getVector().
#   Not sure if getVector() should be renamed to checkLength(), and even
#   be moved to the Assert class.  Not sure where the assert class is
#   heading.
# 2005-05-31
# o Created from former File$validateFileAndPath().
############################################################################
