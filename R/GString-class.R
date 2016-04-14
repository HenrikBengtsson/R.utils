###########################################################################/**
# @RdocClass "GString"
# @set "name=GString-class"
#
# @title "Character string with advanced substitutions"
#
# \description{
#  @classhierarchy
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{one or more objects, to be coerced to @character vectors.}
#   \item{sep}{A @character string to separate the terms.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# @examples "../incl/GString.Rex"
#
# @author
#
# \seealso{
#   For conveniency, see functions @see "gstring" and @see "gcat".
# }
#
# @visibility public
#*/###########################################################################
setConstructorS3("GString", function(..., sep="") {
  s <- paste(..., sep=sep);
  if (length(s) > 1L) {
    throw("Trying to coerce more than one character string to a GString, which is not supported.");
  }
  extend(s, "GString");
})



###########################################################################/**
# @RdocMethod getRaw
#
# @title "Gets the unprocessed GString"
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
#   @seemethod "as.character"
#   @seeclass
# }
#*/###########################################################################
setMethodS3("getRaw", "GString", function(object, ...) {
  unclass(object);
})



###########################################################################/**
# @RdocMethod print
#
# @title "Prints the processed GString"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{...}{Arguments passed to @see "base::print".}
# }
#
# \value{
#   Returns (invisibly) the process GString @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("print", "GString", function(x, ...) {
  # To please R CMD check.
  object <- x;
  print(as.character(object), ...);
})




###########################################################################/**
# @RdocMethod getBuiltinPid
#
# @title "Gets the process id of the current R session"
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
#   Returns an @integer.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("getBuiltinPid", "GString", function(static, ...) {
  pid <- Sys.getpid();
  pid;
}, static=TRUE)



###########################################################################/**
# @RdocMethod getBuiltinHostname
#
# @title "Gets the hostname of the system running R"
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
#*/###########################################################################
setMethodS3("getBuiltinHostname", "GString", function(static, ...) {
  # 1. Try Sys.getenv()
  host <- Sys.getenv(c("HOST", "HOSTNAME", "COMPUTERNAME"))
  host <- host[host != ""];

  # 1. Try calling 'uname'
  if (length(host) == 0L) {
    tryCatch({
      host <- readLines(pipe("/usr/bin/env uname -n"));
      host <- host[host != ""];
    }, error = function(ex) {})
  }

  if (length(host) == 0L)
    host <- NA;
  host[1L];
}, static=TRUE)



###########################################################################/**
# @RdocMethod getBuiltinUsername
#
# @title "Gets the username of the user running R"
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
#*/###########################################################################
setMethodS3("getBuiltinUsername", "GString", function(static, ...) {
  # 1. Try Sys.info(), which returns NULL if not implemented.
  user <- Sys.info()["user"];
  user <- user[user != "unknown"];

  # 2. Try Sys.getenv()
  if (length(user) == 0L) {
    user <- Sys.getenv(c("USER", "USERNAME"));
    user <- user[user != ""];
  }

  # 3. Try calling 'whoami'
  if (length(user) == 0L) {
    tryCatch({
      user <- readLines(pipe("/usr/bin/env whoami"))
      user <- user[user != ""];
    }, error = function(ex) {})
  }
  if (length(user) == 0L)
    user <- NA;
  user[1L];
}, static=TRUE)


###########################################################################/**
# @RdocMethod getBuiltinDate
#
# @title "Gets the current date"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{format}{A @character format string.}
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
#*/###########################################################################
setMethodS3("getBuiltinDate", "GString", function(static, format="%Y-%m-%d", ...) {
  args <- list(Sys.time(), format=format);
  do.call(base::format, args);
}, static=TRUE)


###########################################################################/**
# @RdocMethod getBuiltinTime
#
# @title "Gets the current time"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{format}{A @character format string.}
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
#*/###########################################################################
setMethodS3("getBuiltinTime", "GString", function(static, format="%H:%M:%S", ...) {
  args <- list(Sys.time(), format=format);
  do.call(base::format, args);
}, static=TRUE)


###########################################################################/**
# @RdocMethod getBuiltinDatetime
#
# @title "Gets the current date and time"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{format}{A @character format string.}
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
#*/###########################################################################
setMethodS3("getBuiltinDatetime", "GString", function(static, format=NULL, ...) {
  args <- list(Sys.time(), format=format);
  do.call(base::format, args);
}, static=TRUE)


###########################################################################/**
# @RdocMethod getBuiltinRversion
#
# @title "Gets the current R version"
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
#*/###########################################################################
setMethodS3("getBuiltinRversion", "GString", function(static, ...) {
  getRversion();
}, static=TRUE)



###########################################################################/**
# @RdocMethod getBuiltinRhome
#
# @title "Gets the path where R is installed"
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
#*/###########################################################################
setMethodS3("getBuiltinRhome", "GString", function(static, ...) {
  R.home();
}, static=TRUE)


###########################################################################/**
# @RdocMethod getBuiltinOs
#
# @title "Gets the operating system of the running machine"
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
#*/###########################################################################
setMethodS3("getBuiltinOs", "GString", function(static, ...) {
  .Platform$OS.type;
}, static=TRUE)




###########################################################################/**
# @RdocMethod getVariableValue
#
# @title "Gets a variable value given a name and attributes"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{name}{The name of the variable or function to be queried.}
#  \item{attributes}{A @character string of the attributes.}
#  \item{where}{A @character @vector of where to search for the variable
#     or function.}
#  \item{envir}{An @environment.}
#  \item{inherits}{A @logical.}
#  \item{missingValue}{The value returned if not found.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a (@vector of) objects.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("getVariableValue", "GString", function(static, name, attributes="", where=c("builtin", "envir", "parent", "Sys.getenv", "getOption"), envir=parent.frame(), inherits=TRUE, missingValue=NA, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'name':
  if (is.null(name)) {
    throw("Argument 'name' is NULL.");
  } else if (!is.character(name)) {
    throw("Argument 'name' must be a character string: ", mode(name));
  }

  # Argument 'envir':
  stopifnot(is.environment(envir));


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Process attributes
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  attrs <- strsplit(attributes, split=", ")[[1L]];
  if (length(attrs) > 0L) {
    isSimpleAttr <- (regexpr("^[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0-9._]+=.*$", attrs) == -1L);
    simpleAttrs <- attrs[isSimpleAttr];
    if (length(simpleAttrs) == 0L)
      simpleAttrs <- NULL;
    attrs <- paste(attrs[!isSimpleAttr], collapse=", ");
    attrs <- eval(parse(text=paste("list(", attrs, ")")));
  } else {
    attrs <- NULL;
    simpleAttrs <- NULL;
  }

  value <- NULL;
  for (ww in where) {
    if (ww == "builtin") {
      capitalizedName <- paste(toupper(substr(name, start=1L, stop=1L)), substr(name, start=2L, stop=nchar(name)), sep="");
      builtInMethodName <- paste("getBuiltin", capitalizedName, sep="");
      tryCatch({
        args <- list(static);
        args <- c(args, attrs);
        value <- do.call(builtInMethodName, args=args);
      }, error = function(ex) { })
    } else if (ww == "Sys.getenv") {
      value <- Sys.getenv(name);
      if (nchar(value) == 0L)
        value <- NULL;
    } else if (ww == "getOption") {
      value <- getOption(name);
    } else if (ww == "envir") {
      if (exists(name, envir=envir, inherits=inherits)) {
        value <- get(name, envir=envir, inherits=inherits);
      }
    } else if (ww == "parent") {
      envirL <- NULL;
      n <- 0L;
      while (TRUE) {
        n <- n + 1L;
        envirP <- parent.frame(n=n);
        if (identical(envirP, envirL))
          break;
        envirL <- envirP;
        if (exists("...abcdef", envir=envirP, inherits=FALSE))
          next;
        if (exists(name, envir=envirP, inherits=FALSE)) {
          value <- get(name, envir=envirP, inherits=FALSE);
          break;
        }
        if (identical(envir, .GlobalEnv))
          break;
      }
    } else {
      if (exists(ww, mode="function")) {
        tryCatch({
          args <- c(attrs, list(...));
          value <- do.call(name, args=args);
        }, error = function(ex) {})
      } else {
        throw("Unknown search location of variable '", name, "': ", ww);
      }
    }

    if (!is.null(value)) {
      tryCatch({
        value <- as.character(value);
      }, error = function(ex) {
        value <<- NA;
      })

      # Apply simple attributes
      for (attr in simpleAttrs) {
        if (attr == "capitalize") {
          value <- paste(toupper(substring(value, first=1L, last=1L)),
                                 substring(value, first=2L), sep="");
        } else {
          tryCatch({
            fcn <- get(attr, mode="function");
            value <- fcn(value);
          }, error = function(ex) {})
        }
      }

      if (any(nchar(value) > 0L))
        break;
    }
  } # for (ww in ...)

  if (is.null(value)) {
    value <- missingValue;
  }

  value;
}, static=TRUE, private=TRUE)




###########################################################################/**
# @RdocMethod parse
#
# @title "Parses a GString"
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
#   Returns a @list structure.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("parse", "GString", function(object, ...) {
  s <- getRaw(object);

  # If there is no markup, then there is nothing to parse
  if (length(s) == 0L || !regexpr("${", s, fixed=TRUE) != -1L) {
    return(list(text=s));
  }

  # Parse the GString into a list of 'strings' intermixed with 'gstrings'.
  parts <- list();

  # Formats:
  # ${expression}
  # $[attribute,attribute,...,attribute]{expression}

  while(TRUE) {
    pattern <- "^\\$(\\[.*\\]|)\\{([^\\}]*)\\}";
    pos <- regexpr(pattern, s);
    matchLen <- attr(pos, "match.length");
    pos <- pos[1L];
    if (pos != -1L) {
      text <- "";
    } else {
      pattern <- "[^\\\\$]\\$(\\[.*\\]|)\\{([^\\}]*)\\}";
      pos <- regexpr(pattern, s);
      matchLen <- attr(pos, "match.length");
      pos <- pos[1];
      if (pos != -1) {
        text <- substr(s, start=1L, stop=pos);
        text <- gsub("\\\\\\$", "$", text);
      } else {
        text <- s;
        text <- gsub("\\\\\\$", "$", text);
        parts <- append(parts, list(text=text));
        break;
      }
    }

    prefix <- list(text=text);
    parts <- append(parts, prefix);

    last <- pos + matchLen - 1L;
    var <- substr(s, start=pos, stop=last);

    attributes <- gsub(pattern, "\\1", var);
    attributes <- gsub("^\\[", "", attributes);
    attributes <- gsub("\\]$", "", attributes);

    name <- gsub(pattern, "\\2", var);

    searchReplace <- NULL;
    patterns <- c("^[']([^']*)[']$", '^["]([^"]*)["]$');
    if (all(sapply(patterns, FUN=regexpr, name) == -1L)) {
      pattern <- "^(.*)/(.*)/(.*)";
      if (regexpr(pattern, name) != -1L) {
        searchPattern <- gsub(pattern, "\\2", name);
        replacePattern <- gsub(pattern, "\\3", name);
        name <- gsub(pattern, "\\1", name);
        searchReplace <- list(search=searchPattern, replace=replacePattern);
      }
    } else {
      for (pattern in patterns) {
        name <- gsub(pattern, "\\1", name);
      }
    }

    pattern <- "^`(.*)`";
    isExpression <- (regexpr(pattern, name) != -1L);
    if (isExpression) {
      call <- gsub(pattern, "\\1", name);
      part <- list(expression=list(call=call));
    } else {
      part <- list(variable=list(name=name));
    }
    part[[1L]]$attributes <- attributes;
    part[[1L]]$searchReplace <- searchReplace;

    parts <- append(parts, part);

    s <- substr(s, start=last+1L, stop=nchar(s));
    if (nchar(s) == 0L)
      break;
  } # while(TRUE)

  parts;
}, private=TRUE)



###########################################################################/**
# @RdocMethod evaluate
#
# @title "Parses and evaluates a GString"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{envir}{The @environment in which the @see "GString" is evaluated.}
#  \item{...}{Additional arguments passed to @seemethod "parse".}
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
#*/###########################################################################
setMethodS3("evaluate", "GString", function(object, envir=parent.frame(), ...) {
  # Argument 'envir':
  stopifnot(is.environment(envir));

  # If there is no markup, then return alrady here.
  s <- unclass(object);
  # If there is no markup, then there is nothing to parse
  if (length(s) == 0L || !regexpr("${", s, fixed=TRUE) != -1L) {
    return(s);
  }

  parts <- parse(object, ...);
  keys <- names(parts);
  ...abcdef <- TRUE;

  isVariable <- (keys == "variable");
  for (kk in which(isVariable)) {
    part <- parts[[kk]];
    value <- getVariableValue(object, name=part$name,
                              attributes=part$attributes, envir=envir, ...);
    if (!is.null(part$searchReplace))
      value <- gsub(part$searchReplace$search,
                    part$searchReplace$replace, value);
    parts[[kk]] <- value;
  }

  isExpression <- (keys == "expression");
  for (kk in which(isExpression)) {
    part <- parts[[kk]];
    expr <- parse(text=part$call);
    value <- eval(expr);
    if (!is.null(part$searchReplace))
      value <- gsub(part$searchReplace$search,
                    part$searchReplace$replace, value);
    parts[[kk]] <- value;
  }

  s <- "";
  for (kk in seq_along(parts)) {
    part <- parts[[kk]];
    s <- paste(s, part, sep="");
  }

  s;
}, protected=TRUE) # evaluate()


###########################################################################/**
# @RdocMethod as.character
#
# @title "Gets the processed character string"
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
#*/###########################################################################
setMethodS3("as.character", "GString", function(x, envir=parent.frame(), ...) {
  evaluate(x, envir=envir, ...);
})




######################################################################
# HISTORY:
# 2013-12-13
# o Added argument 'inherits' to evaluate() for GString.  Default
#   is TRUE for backward compatibility.
# 2013-02-18
# o BUG FIX: evaluate(..., where="parent") for GString would result
#   in an endless loop.
# o Now it is possible to escape the sed-like search replace format
#   for GString:s via quoting, e.g. ${'R.rsp/HttpDaemon/RspVersion'} .
# 2013-02-14
# o Added gstring() and gcat().
# 2013-02-13
# o Added evaluate() for GString.
# 2011-11-19
# o Now parse() and as.character() also handle "empty" GString:s.
# 2011-11-15
# o KNOWN ISSUES: as.character() is also finding objects of the
#   local environment.
# o SPEEDUP: Now as.character() and parse() for GString return
#   faster if the string is a plain string without markup etc.
#   This made as.character() about 10-15 times faster.
# 2005-12-05
# o BUG FIX: getVariableValue() would generate an error if a
#   functions was detected. Now, NA is returned.
# 2005-09-06
# o BUG FIX of yesterdays patch. Forgot to extract the 'match.length'.
# 2005-09-05
# o Expected in parse() that regexpr() only returned one value, but
#   sometimes it did return more and a warning was generated.
# 2005-06-09
# o Added print() to get rid of the class attributes.
# o Made static method static.
# 2005-06-08
# o Added Rdoc comments to all methods.
# o Created.
######################################################################
