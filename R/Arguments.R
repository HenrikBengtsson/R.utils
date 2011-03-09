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
setMethodS3("getReadablePathname", "Arguments", function(static, file=NULL, path=NULL, mustExist=TRUE, absolutePath=FALSE, ...) {
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

  pathname <- filePath(path, file, expandLinks="any");

  if (absolutePath) {
    pathname <- getAbsolutePath(pathname);
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
      if (!is.null(reason))
        if (!isAbsolutePath(pathname)) {
          reason <- sprintf("%s; current directory is '%s'", reason, getwd());
        }
        reason <- sprintf(" (%s)", reason);
      throw("Pathname not found: ", pathname, reason);
    }

    # Check if file permissions allow reading
    if (fileAccess(pathname, mode=4) == -1) {
      throw("Pathname exists, but there is no permission to read file: ", pathname);
    }
  }
    
  pathname;
}, static=TRUE)




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
  paths <- rep(paths, length.out=nbrOfFiles);

  pathnames <- list();
  for (kk in seq(length=nbrOfFiles)) {
    pathnames[[kk]] <- Arguments$getReadablePathname(files[kk], 
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
setMethodS3("getWritablePathname", "Arguments", function(static, ..., mustExist=FALSE, mustNotExist=FALSE, mkdirs=TRUE) {
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
    # Check if parent directory exists
    path <- getParent(pathname);
    if (!isDirectory(path)) {
      # Check if parent directory should be created
      if (!mkdirs) {
        path <- Arguments$getReadablePath(path, mustExist=TRUE);
      }

      if (!mkdirs(path)) {
  	throw("Failed not create file path: ", path);
      }
    }

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
        file.remove(pathnameT);
      }
    }, add=TRUE);
    tryCatch({
      cat(file=pathnameT, Sys.time());
    }, error = function(ex) {
      throw("No permission to create a new file in directory: ", path);
    });
  }

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
  if (isDirectory(pathname))
    return(pathname);

  if (!mkdirs)
    throw("Directory does not exist: ", pathname);

  if (!mkdirs(pathname))
    throw("Failed to create directory (recursively): ", pathname);

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
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("getCharacters", "Arguments", function(static, s, length=NULL, trim=FALSE, nchar=NULL, useNames=FALSE, asGString=TRUE, .name=NULL, ...) {
  if (is.null(.name))
    .name <- as.character(deparse(substitute(s)));

  s <- getVector(static, s, length=length, .name=.name);

  # Nothing to check?
  if (length(s) == 0)
    return(s);

  # Coerce GString:s to character strings?
  if (asGString) {
    s <- unlist(lapply(s, FUN=function(x) {
      if (!is.na(x)) {
        x <- GString(x);
      }
      as.character(x);
    }));
  }

  if (trim) {
    # Trim the strings.
    s <- unlist(lapply(s, FUN=trim));
  }

  # Coerce to character strings
  s <- unlist(lapply(s, FUN=function(x) {
    as.character(x);
  }));

  if (!useNames) {
    names(s) <- NULL;
  }

  # Nothing to check?
  if (is.null(nchar))
    return(s);
 
  if (length(nchar) == 1)
    nchar <- c(1, nchar);
  
  # Check the string length of each character string
  for (kk in seq(length=length(s))) {
    slen <- nchar(s[kk]);
    if (slen < nchar[1] || slen > nchar[2]) {
      throw(sprintf("String length of elements #%d in '%s' is out of range [%d,%d]: %d '%s'", kk, .name, nchar[1], nchar[2], slen, s[kk]));
    }
  }

  unlist(s);
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
      throw(sprintf("Argument '%s' contains %d NA value(s).", 
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

  withCallingHandlers({
    xrange <- range(x, na.rm=TRUE);
  }, warnings=function(warn) {})
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


  # Special dealing with range = c(0,0)
  if (!is.null(range)) {
    if (range[2] < 1L) {
      if (length(x) > 0) {
        throw(sprintf("Argument 'x' is of length %d although the range ([%s,%s]) implies that is should be empty.", length(x), range[1], range[2]));
      }
    }
  }

  getIntegers(static, x, ..., range=range, .name=.name);
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




setMethodS3("getReadablePath", "Arguments", function(static, path=NULL, ...) {
  if (is.null(path))
    return(NULL);

  pathname <- getReadablePathname(static, path=path, ...);
  if (!is.na(pathname) && !isDirectory(pathname)) {
    throw("Argument 'path' is not a directory: ", path);
  }

  pathname;
}, static=TRUE, protected=TRUE)






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
  class <- Arguments$getCharacter(class);

  # Argument 'coerce':
  coerce <- Arguments$getLogical(coerce);

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



############################################################################
# HISTORY:
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
