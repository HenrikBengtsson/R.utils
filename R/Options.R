#########################################################################/**
# @RdocClass Options
#
# @title "The Options class"
#
# @synopsis
#
# \arguments{
#   \item{options}{A tree @list structure of options.}
#   \item{...}{Not used.}
# }
#
# \description{
#  @classhierarchy
#
#  A class to set and get either options stored in a @list tree structure.
#
#  Each option has a pathname. The format of a pathname is similar to a
#  (Unix) filesystem pathname, e.g. "graphics/cex". See examples for
#  more details.
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# \value{
#  The constructor returns an Options object.
# }
#
# \details{
#  Note, this class and its methods do \emph{not} operate on the global
#  options structure defined in \R (\link{options}).
# }
#
# @examples "../incl/Options.Rex"
#
# @author
#
# @keyword programming
#*/#########################################################################
setConstructorS3("Options", function(options=list(), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'options':
  if (!is.list(options))
    throw("Argument 'options' must be a list: ", mode(options));

  extend(Object(), "Options",
    .options = options
  )
})



###########################################################################/**
# @RdocMethod "as.character"
#
# @title "Returns a character string version of this object"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("as.character", "Options", function(x, ...) {
  # To please R CMD check
  this <- x;

  s <- paste(class(this)[1], ": ", nbrOfOptions(this), " options set.", sep="");
  s;
})


#########################################################################/**
# @RdocMethod as.list
#
# @title "Gets a list representation of the options"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{Returns a tree @list structure.}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("as.list", "Options", function(x, ...) {
  # To please R CMD check
  this <- x;

  as.list(this$.options);
})


#########################################################################/**
# @RdocMethod equals
#
# @title "Checks if this object is equal to another Options object"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{other}{Another Options object.}
#   \item{...}{Not used.}
# }
#
# \value{Returns @TRUE if they are equal, otherwise @FALSE.}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("equals", "Options", function(this, other, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  equals.list <- function(list1, list2) {
    if (length(list1) != length(list2))
      return(FALSE);

    for (kk in seq_along(list1)) {
      obj1 <- list1[[kk]];
      obj2 <- list2[[kk]];
      if (is.list(obj1)) {
        comp <- equals.list(obj1, obj2);
      } else {
        comp <- equals(obj1, obj2);
      }
      if (!comp)
        return(comp);
    } # for (kk ...)

    TRUE;
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Main comparison
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (!inherits(other, "Options"))
    return(FALSE);

  list1 <- as.list(this);
  list2 <- as.list(other);

  equals.list(list1, list2);
})




###########################################################################/**
# @RdocMethod str
#
# @title "Prints the structure of the options"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{header}{A @character string header to be printed at the top.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("str", "Options", function(object, header=paste(class(this)[1], ":\n", sep=""), ...) {
  # To please R CMD check
  this <- object;

  cat(header);
  res <- list();
  for (name in names(this))
    res[[name]] <- getOption(this, name);
  str(res);
})


#########################################################################/**
# @RdocMethod names
#
# @title "Gets the full pathname of all (non-list) options"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{Returns a @vector of @character strings.}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("names", "Options", function(x, ...) {
  # To please R CMD check
  this <- x;

  names(getLeaves(this, ...));
})



#########################################################################/**
# @RdocMethod getLeaves
#
# @title "Gets all (non-list) options in a flat list"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{Returns a flat @list structure.}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("getLeaves", "Options", function(this, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getLeaves <- function(list, ...) {
    if (length(list) == 0)
      return(NULL);

    names <- names(list);

    isList <- unlist(lapply(list, FUN=is.list));
    leafs <- list[!isList];
    trees <- list[isList];
    treeNames <- names(trees);
    for (kk in seq_along(trees)) {
      tree <- trees[[kk]];
      treeName <- treeNames[kk];
      treeLeaves <- getLeaves(tree, ...);
      names(treeLeaves) <- paste(treeName, names(treeLeaves), sep="/");
      leafs <- c(leafs, treeLeaves);
    }
    leafs;
  }

  getLeaves(as.list(this));
})



#########################################################################/**
# @RdocMethod nbrOfOptions
#
# @title "Gets the number of options set"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{Returns an @integer.}
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("nbrOfOptions", "Options", function(this, ...) {
  length(names(this));
})




#########################################################################/**
# @RdocMethod hasOption
#
# @title "Checks if an option exists"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A single or a @vector of @character strings specifying
#      the paths to the options to be queried.}
#   \item{...}{Not used.}
# }
#
# \value{Returns a @logical (@vector).}
#
# @author
#
# \seealso{
#   @seemethod "getOption".
#   @seemethod "setOption".
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("hasOption", "Options", function(this, pathname, ...) {
  if (length(pathname) > 1) {
    res <- c();
    for (kk in seq_along(pathname))
      res[kk] <- hasOption(this, pathname[kk]);
    names(res) <- pathname;
    return(res);
  }

  # Argument 'pathname':
  pathname <- as.character(pathname);

  if (length(pathname) != 1) {
    throw("Argument 'pathname' must be a single character string: ",
                                           paste(pathname, collapse=", "));
  }

  if (regexpr("\\.", pathname) != -1) {
    throw("Argument 'pathname' must not contain a period: ", pathname);
  }

  pathname <- unlist(strsplit(pathname, split="/"));

  if (any(nchar(pathname, type="chars") == 0))
    throw("Argument 'pathname' contains a zero length elements.");

  cur <- as.list(this);
  if (length(cur) == 0)
    return(FALSE);

  depth <- length(pathname);
  for (kk in seq_len(depth)) {
    key <- pathname[kk];
    keys <- names(cur);
    if (key %in% keys) {
      cur <- cur[[key]];
      if (kk == depth)
        return(TRUE);
    } else {
      return(FALSE);
    }

    if (!is.list(cur))
      break;
  }

  FALSE;
})


#########################################################################/**
# @RdocMethod getOption
#
# @title "Gets an option"
#
# \description{
#  @get "title" in the options tree structure or return a default value.
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A single or a @vector of @character strings specifying
#      the paths to the options to be queried.
#      By default the complete options structure is returned.}
#   \item{defaultValue}{The default value to be returned, if option is
#      missing. If multiple options are queried at the same times, multiple
#      default values may be specified as a @vector or a @list.}
#   \item{...}{Not used.}
# }
#
# \value{If a single option is queried, a single value is returned.
#   If a @vector of options are queried, a @list of values are returned.
#   For non-existing options, the default value is returned.}
#
# @author
#
# \seealso{
#   @seemethod "hasOption".
#   @seemethod "setOption".
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("getOption", "Options", function(this, pathname=NULL, defaultValue=NULL, ...) {
  if (length(pathname) > 1) {
    defaultValue <- rep(defaultValue, length.out=length(pathname));
    res <- list();
    for (kk in seq_along(pathname))
      res[[kk]] <- getOption(this, pathname[kk], defaultValue[kk]);
    names(res) <- pathname;
    return(res);
  }

  if (is.null(pathname))
    return(as.list(this));

  # Argument 'pathname':
  pathname <- as.character(pathname);

  if (length(pathname) != 1) {
    throw("Argument 'pathname' must be a single character string: ",
                                           paste(pathname, collapse=", "));
  }

#  if (regexpr("\\.", pathname) != -1) {
#    throw("Argument 'pathname' must not contain a period: ", pathname);
#  }

  pathname <- unlist(strsplit(pathname, split="/"));

  if (any(nchar(pathname, type="chars") == 0))
    throw("Argument 'pathname' contains a zero length elements.");

  cur <- as.list(this);
  if (length(pathname) == 0)
    return(cur);

  if (length(cur) == 0)
    return(defaultValue);

  depth <- length(pathname);
  for (kk in seq_len(depth)) {
    key <- pathname[kk];
    keys <- names(cur);
    if (key %in% keys) {
      cur <- cur[[key]];
      if (kk == depth)
        return(cur);
    } else {
      return(defaultValue);
    }

    if (!is.list(cur))
      break;
  }

  defaultValue;
})



#########################################################################/**
# @RdocMethod setOption
#
# @title "Sets an option"
#
# \description{
#  @get "title" in the options tree structure.
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A single @character string specifying the path to the
#      option.}
#   \item{value}{The value to be assigned to the option.}
#   \item{overwrite}{If @TRUE, already existing options are overwritten,
#      otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{Returns (invisibly) the old option value.}
#
# @author
#
# \seealso{
#   @seemethod "hasOption".
#   @seemethod "setOption".
#   @seeclass
# }
#
# @keyword programming
#*/#########################################################################
setMethodS3("setOption", "Options", function(this, pathname, value, overwrite=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  setOptionList <- function(list, path, value) {
    if (length(path) == 1) {
      list[[path]] <- value;
    } else {
      name <- path[1];
      if (!is.list(list[[name]]))
        list[[name]] <- list();
      list[[name]] <- setOptionList(list[[name]], path[-1], value);
    }
    list;
  } # setOptionList()


  # Argument 'pathname':
  pathname <- as.character(pathname);

  if (length(pathname) != 1) {
    throw("Argument 'pathname' must be a single character string: ",
                                           paste(pathname, collapse=", "));
  }

#  if (regexpr("\\.", pathname) != -1) {
#    throw("Argument 'pathname' must not contain a period: ", pathname);
#  }

  oldValue <- getOption(this, pathname);

  # If option is already set, should it be overwritten.
  if (!is.null(oldValue) && !overwrite)
    return(invisible(oldValue));

  pathname <- unlist(strsplit(pathname, split="/"));

  if (any(nchar(pathname, type="chars") == 0))
    throw("Argument 'pathname' contains a zero length elements.");

  if (is.null(this$.options))
    this$.options <- list();

  this$.options <- setOptionList(this$.options, pathname, value);

  invisible(oldValue);
})




############################################################################
# HISTORY:
# 2006-02-22
# o BUG FIX: getLeaves() would give an error for Options with an option
#   tree with branches, i.e. not a single straight path.
# 2005-10-20
# o BUG FIX: getLeaves() would give an error for empty Options objects.
# 2005-09-23
# o Now the options are always retrieved via as.list(this).  This makes
#   it easier to override this class to dynamically retrieve options, say
#   via options().
# 2005-06-03
# o Added getLeaves().
# 2005-06-01
# o Added argument 'overwrite' to setOption().
# o Added equals().
# o Added Rdoc comments.
# o Removed the read() and write() methods. Use load() and save() instead.
# 2005-05-26
# o Added support to query multiple options in has-/getOption().
# o Created. Needed an flexible API to deal with settings in the R.matlab
#   package.
############################################################################
