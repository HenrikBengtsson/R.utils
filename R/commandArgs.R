#########################################################################/**
# @RdocFunction commandArgs
# @alias cmdArgs
#
# @title "Extract Command Line Arguments"
#
# \usage{
#   commandArgs(@eval "t<-formals(R.utils::commandArgs);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")
#   cmdArgs(@eval "t<-formals(R.utils::cmdArgs);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")
# }
#
# \description{
#  Provides access to a copy of the command line arguments supplied when 
#  this \R session was invoked.  This function is backward compatible with
#  @see "base::commandArgs" of the \pkg{base} package, but adds more
#  features.
# }
#
# \arguments{
#   \item{asValues}{If @TRUE, a named @list is returned, where command
#     line arguments of type \code{--foo} will be returned as @TRUE with 
#     name \code{foo}, and arguments of type \code{-foo=value} will be
#     returned as @character string \code{value} with name \code{foo}.
#     In addition, if \code{-foo value} is given, this is interpreted
#     as \code{-foo=value}, as long as \code{value} does not start with
#     a double dash (\code{--}).}
#   \item{defaults}{A @character @vector or a named @list of default 
#     arguments.  Any command-line or fixed arguments will override
#     default arguments with the same name.}
#   \item{fixed}{A @character @vector or a named @list of fixed
#     arguments.  These will override default and command-line
#     arguments with the same name.}
#   \item{adhoc}{(ignored if \code{asValues=FALSE}) If @TRUE, then
#     additional ad hoc coercion of @character command line arguments
#     is performed by trial and error, iff possible.}
#   \item{unique}{If @TRUE, the returned set of arguments contains only
#     unique arguments such that no two arguments have the same name.
#     If duplicates exists, it is only the last one that is kept.}
#   \item{excludeReserved}{If @TRUE, arguments reserved by \R are excluded,
#     otherwise not. Which the reserved arguments are depends on operating
#     system. For details, see Appendix B on "Invoking R" in 
#     \emph{An Introduction to R}.}
#   \item{excludeEnvVars}{If @TRUE, arguments that assigns environment 
#     variable are excluded, otherwise not. As described in \code{R --help},
#     these are arguments of format <key>=<value>.}
#   \item{os}{A @vector of @character strings specifying which set of
#      reserved arguments to be used. Possible values are \code{"unix"},
#      \code{"mac"}, \code{"windows"}, \code{"ANY"} or \code{"current"}. 
#      If \code{"current"}, the current platform is used. If \code{"ANY"} or
#      @NULL, all three OSs are assumed for total cross-platform
#      compatibility.}
#   \item{args}{A @character @vector of command-line arguments.}
#   \item{...}{Passed to @see "base::commandArgs" of the \pkg{base} package.}
# }
#
# \value{
#   If \code{asValue} is @FALSE, a @character @vector is returned, which
#   contains the name of the executable and the non-parsed user-supplied 
#   arguments.
#
#   If \code{asValue} is @TRUE, a named @list containing is returned, which
#   contains the the executable and the parsed user-supplied arguments.
#
#   The first returned element is the name of the executable by which 
#   \R was invoked.  As far as I am aware, the exact form of this element
#   is platform dependent. It may be the fully qualified name, or simply
#   the last component (or basename) of the application.  The returned
#   attribute \code{isReserved} is a @logical @vector specifying if the
#   corresponding command line argument is a reserved \R argument or not.
# }
#
# \section{Backward compatibility}{
#  This function should be fully backward compatible with the same 
#  function in the \pkg{base} package.
# }
#
# \section{Coercing to non-character data types}{
#   When \code{asValues} is @TRUE, the command-line arguments are 
#   returned as a named @list.  By default, the values of these
#   arguments are @character strings.
#   However, any command-line argument that share name with one of
#   the fixed or default arguments, then its value is coerced to
#   the corresponding data type (via @see "methods::as").
#   This provides a mechanism for specifying data types other than
#   @character strings.
#   
#   Furthermore, when \code{asValues} and \code{adhoc} are @TRUE,
#   any remaining character string command-line arguments are coerced 
#   to @numerics (via @see "base::as.numeric"), unless the coerced 
#   value becomes @NA.
# }
#
# \section{cmdArgs()}{
#   The \code{cmdArgs(...)} function is short for calling
#   \code{R.utils::commandArgs(asValues=TRUE, adhoc=TRUE, unique=TRUE, 
#         excludeReserved=TRUE, ...)[-1L]}.
# }
#
# @author
#
# @examples "../incl/commandArgs.Rex"
#
# \seealso{
#   @see "base::commandArgs", @see "base::Platform"
# }
#
# @keyword "programming"
#*/#########################################################################
commandArgs <- function(asValues=FALSE, defaults=NULL, fixed=NULL, adhoc=FALSE, unique=FALSE, excludeReserved=FALSE, excludeEnvVars=FALSE, os=NULL, args=base::commandArgs(...), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  assertNamedList <- function(x, .name=as.character(substitute(x))) {
    # Nothing todo?
    if (length(x) == 0L) return(x);

    keys <- names(x);
    if (is.null(keys)) {
      throw(sprintf("None of the elements in '%s' are named.", .name));
    }
  
    if (any(nchar(keys) == 0L)) {
      throw(sprintf("Detected one or more non-named arguments in '%s' after parsing.", .name));
    }

    x;
  } # assertNamedList()

  coerceAs <- function(args, types) {
    types <- types[types != "NULL"];
    idxs <- which(is.element(names(args), names(types)));
    if (length(idxs) > 0L) {
      argsT <- args[idxs];
      typesT <- types[names(argsT)];
      suppressWarnings({
        for (jj in seq_along(argsT)) {
          argsT[[jj]] <- as(argsT[[jj]], Class=typesT[jj]);
        }
      });
      args[idxs] <- argsT;
    }
    args;
  } # coerceAs()


  getReserved <- function(os) {
    rVer <- getRversion();
  
    # General arguments
    if (rVer >= "2.13.0") {
      # According to R v2.13.1:
      reservedArgs <- c("--help", "-h", "--version", "--encoding[= ].*", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "-f .*", "--file=.*", "-e .*", "--min-vsize=.*", "--max-vsize=.*", "--min-nsize=.*", "--max-nsize=.*", "--max-ppsize=.*", "--quiet", "--silent", "-q", "--slave", "--verbose", "--args");
    } else if (rVer >= "2.7.0") {
      # According to R v2.7.1:
      reservedArgs <- c("--help", "-h", "--version", "--encoding=.*", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "-f .*", "--file=.*", "-e .*", "--min-vsize=.*", "--max-vsize=.*", "--min-nsize=.*", "--max-nsize=.*", "--max-ppsize=.*", "--quiet", "--silent", "-q", "--slave", "--interactive", "--verbose", "--args");
    } else {
      # According to R v2.0.1:
      reservedArgs <- c("--help", "-h", "--version", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "--min-vsize=.*", "--max-vsize=.*", "--min-nsize=.*", "--max-nsize=.*", "--max-ppsize=.*", "--quiet", "--silent", "-q", "--slave", "--verbose", "--args");
    }

    # a) Unix (and OSX?!? /HB 2011-09-14)
    if ("unix" %in% os) {
      reservedArgs <- c(reservedArgs, "--no-readline", "--debugger=.*", "-d", "--gui=.*", "-g", "--interactive", "--arch=.*")
    }
    
    # b) Macintosh
    if ("mac" %in% os) {
      # Nothing special here.
    }
    
    # c) Windows
    if ("windows" %in% os) {
      reservedArgs <- c(reservedArgs, "--no-Rconsole", "--ess", "--max-mem-size=.*");
      # Additional command-line options for RGui.exe
      reservedArgs <- c(reservedArgs, "--mdi", "--sdi", "--no-mdi", "--debug");
    }
  
    # If duplicates where created, remove them
    reservedArgs <- unique(reservedArgs);
  
    reservedArgs;
  } # getReserved()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'defaults':
  if (asValues) {
    defaults <- as.list(defaults);
    defaults <- assertNamedList(defaults);
  } else {
    if (is.list(defaults)) {
      throw("Argument 'defaults' must not be a list when asValues=FALSE.");
    }
  }

  # Argument 'fixed':
  if (asValues) {
    fixed <- as.list(fixed);
    fixed <- assertNamedList(fixed);
  } else {
    if (is.list(fixed)) {
      throw("Argument 'fixed' must not be a list when asValues=FALSE.");
    }
  }

  # Argument 'os':
  if (is.null(os) || toupper(os) == "ANY") {
    os <- c("unix", "mac", "windows");
  } else if (tolower(os) == "current") {
    os <- .Platform$OS.type;
  }
  os <- tolower(os);
  if (any(is.na(match(os, c("unix", "mac", "windows"))))) {
    throw("Argument 'os' contains unknown values.");
  }

  # Argument 'args':
  if (is.null(args)) {
    args <- base::commandArgs(...);
  } else if (!is.character(args)) {
    throw("Argument 'args' must be a character vector: ", class(args)[1L]);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Infer which arguments are reserved R arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  # (1) Get the list of reserved R command line arguments
  # Reserved R command line options according to paragraph
  # 'R accepts the following command-line options' in
  # "An Introduction to R" for R v 2.7.1 (was v2.0.1):
  reservedArgs <- getReserved(os);

  # Create regular expression patterns out of the reserved arguments
  reservedArgs <- paste("^", reservedArgs, "$", sep="");

  # Identify arguments after optional '--args'
  nargs <- length(args);
  isUserArgs <- logical(nargs);
  if (nargs > 0L) {
    idx <- which(args == "--args")[1L];
    if (!is.na(idx) && idx < nargs) {
      isUserArgs[(idx+1L):nargs] <- TRUE;
    }
  }

  # Temporarily patch any '-<key> <value>' and '--<key> <value>' arguments
  args0 <- args;
  isKeyValue <- (regexpr("^([^=])*=.*$", args) != -1L);
  isFlag <- (regexpr("^(-|--)([^ =])*$", args) != -1L);
  isNextKeyValue <- c(isKeyValue[-1L], FALSE);
  isNextFlag <- c(isFlag[-1L], FALSE);
  isNextValue <- (!isNextKeyValue & !isNextFlag);
  isNextValue[length(isNextValue)] <- FALSE;
  isKeyValuePair <- (isFlag & isNextValue);
  if (any(isKeyValuePair)) {
    idxs <- which(isKeyValuePair);
    args[idxs] <- paste(args[idxs], args[idxs+1L], sep=" ");
    args[idxs+1L] <- args[idxs];
  }

  isReserved <- logical(nargs);
  for (rarg in reservedArgs) {
    isReserved <- isReserved | (regexpr(rarg, args) != -1L);
  }
  isReserved[isUserArgs] <- FALSE;

  # Undo any patching
  args <- args0;

  # Not needed anymore
  rm(isKeyValue, isFlag, isNextKeyValue, isNextFlag, 
     isNextValue, isKeyValuePair, args0);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Flag environment variable arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  pattern <- "^([^=-]*)(=)(.*)$";
  isEnvVars <- (regexpr(pattern, args) != -1L);
  isEnvVars[isUserArgs] <- FALSE;


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Exclude non-wanted elements
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  keep <- rep(TRUE, times=nargs);
  if (excludeReserved) {
    keep <- keep & !isReserved;
  }
  if (excludeEnvVars) {
    keep <- keep & !isEnvVars;
  }

  attrs <- list(isReserved=isReserved, isEnvVars=isEnvVars, isUserArgs=isUserArgs);
  attrs <- c(attributes(args), attrs);
  args <- args[keep];
  attributes(args) <- attrs;


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Coerce arguments to a named list?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (asValues) {
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (a) Parse key-value pairs
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    keys <- args[1L];
    values <- list(NA);
    for (arg in args[-1L]) {
      # --<key>=<value>
      pattern <- "^--([^=]*)(=)(.*)$";
      if (regexpr(pattern, arg) != -1L) {
        # Was previous a non-valued flag?
        if (length(values) < length(keys))
          values <- c(values, TRUE);
        key <- gsub(pattern, "\\1", arg);
        value <- gsub(pattern, "\\3", arg);
        keys <- c(keys, key);
        values <- c(values, value);
        next;
      } 

      # --<key>
      pattern <- "^--([^=]*)$";
      if (regexpr(pattern, arg) != -1L) {
        # Was previous a non-valued flag?
        if (length(values) < length(keys))
          values <- c(values, TRUE);
        key <- gsub(pattern, "\\1", arg);
        keys <- c(keys, key);
        next;
      }

      # -<key>=<value>
      pattern <- "^-([^=]*)(=)(.*)$";
      if (regexpr(pattern, arg) != -1L) {
        # Was previous a non-valued flag?
        if (length(values) < length(keys))
          values <- c(values, TRUE);
        key <- gsub(pattern, "\\1", arg);
        value <- gsub(pattern, "\\3", arg);
        keys <- c(keys, key);
        values <- c(values, value);
        next;
      } 

      # -<key>
      pattern <- "^-([^ ]*)$";
      if (regexpr(pattern, arg) != -1L) {
        # Was previous a non-valued flag?
        if (length(values) < length(keys))
          values <- c(values, TRUE);
        key <- gsub(pattern, "\\1", arg);
        keys <- c(keys, key);
        next;
      }

      # <key>=<value>
      pattern <- "^([^=-]*)(=)(.*)$";
      if (regexpr(pattern, arg) != -1L) {
        # Was previous a non-valued flag?
        if (length(values) < length(keys))
          values <- c(values, TRUE);
        key <- gsub(pattern, "\\1", arg);
        value <- gsub(pattern, "\\3", arg);
        keys <- c(keys, key);
        values <- c(values, value);
        next;
      } 

      values <- c(values, arg);
    } # for (arg ...)

    if (length(values) < length(keys)) {
      values <- c(values, TRUE);
    }

    if (length(values) != length(keys)) {
      throw("Internal error of commandArgs(). The lengths of keys and values does not match: keys=(", paste(keys, collapse=", "), "), values=(", paste(values, collapse=", "), ")");
    }
 
    names(values) <- keys;
    args <- values;

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (a) Corce arguments to known data types?
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(args) > 0L && length(defaults) + length(fixed) > 0L) {
      # First to the 'fixed', then remaining to the 'defaults'.
      types <- sapply(c(defaults, fixed), FUN=storage.mode);
      keep <- !duplicated(names(types), fromLast=TRUE);
      types <- types[keep];
      args <- coerceAs(args, types=types);
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (b) Ad hoc corcion of numerics?
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(args) > 0L && adhoc) {
      modes <- sapply(args, FUN=storage.mode);
      idxs <- which(modes == "character");
      if (length(idxs) > 0L) {
        argsT <- args[idxs];
        # Try to coerce to numeric
        for (kk in seq_along(argsT)) {
          arg <- argsT[[kk]];
          tryCatch({
            suppressWarnings({
               value <- as.numeric(arg);
            });
            if (!is.na(value)) {
              argsT[[kk]] <- value;
            }
          }, error=function(ex) {});
        }
        args[idxs] <- argsT;
      }
    } # if (adhoc)

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (d) Prepend defaults, if not already specified
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(defaults) > 0L) {
      # Any missing?
      idxs <- which(!is.element(names(defaults), names(args)));
      if (length(idxs) > 0L) {
        args <- c(defaults[idxs], args);
      }
    }
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (e) Override by/append fixed arguments?
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(fixed) > 0L) {
      args <- c(args, fixed);
    }
  } else {
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (a) Prepend defaults, if not already specified
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(defaults) > 0L) {
      # Any missing?
      idxs <- which(!is.element(defaults, args));
      if (length(idxs) > 0L) {
        args <- c(defaults[idxs], args);
      }
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (b) Append fixed argument, if not already specified
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(fixed) > 0L) {
      args <- c(args, setdiff(fixed, args));
    }

  } # if (asValues)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Keep only unique arguments?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (unique && length(args) > 0L) {
    if (asValues) {
      keep <- !duplicated(names(args), fromLast=TRUE);
    } else {
      keep <- !duplicated(args, fromLast=TRUE);
    }
    args <- args[keep];
  }
  
  args;
} # commandArgs()



cmdArgs <- function(args=NULL, ...) {
  # Argument 'args':
  if (identical(args, "*")) args <- list("*");
  if (!is.null(args) && !is.list(args)) {
    throw("Argument 'args' must be a list or NULL: ", class(args)[1L]);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Default call?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.null(args)) {
    return(commandArgs(asValues=TRUE, adhoc=TRUE, unique=TRUE, excludeReserved=TRUE, ...)[-1L]);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Split 'args' into 'defaults', 'args', and 'fixed'
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Find the asterisk ('*')
  if (length(args) == 0L) {
    idxA <- integer(0L);
  } else {
    idxA <- which(sapply(args, FUN=identical, "*"));
    # Use only first asterisk if more than one is used
    if (length(idxA) > 1L) {
      excl <- idxA[-1L];
      args <- args[excl];
      idxA <- idxA[1L];
    }
  }

  # None?
  if (length(idxA) == 0L) {
    defaults <- NULL;
    fixed <- args;
    args <- character(0L);
  } else {
    n <- length(args); # Here n >= 1
    idxsD <- if (idxA == 1L) integer(0L) else 1:(idxA-1L);
    idxsF <- if (idxA == n)  integer(0L) else (idxA+1L):n;
    defaults <- args[idxsD];
    fixed <- args[idxsF];
    args <- NULL;
  }

  commandArgs(asValues=TRUE, defaults=defaults, fixed=fixed, adhoc=TRUE, unique=TRUE, excludeReserved=TRUE, args=args, ...)[-1L];
} # cmdArgs()


############################################################################
# HISTORY:
# 2013-03-08
# o Now commandArgs(excludeReserved=TRUE) no longer drops arguments
#   specified after '--args', which are considered user specific
#   arguments.  Same for excludeEnvVars=TRUE.
# 2013-02-23
# o BUG FIX: In commandArgs(), it is now only 'args' that are coerced
#   to the types of 'defaults' and 'fixed', and no longer arguments
#   specified by the latter two.
# 2013-02-21
# o Added arguments 'default', 'fixed', 'adhoc' and 'unique' to commandArgs().
# 2011-09-14
# o BUG FIX: commandArgs() would not handle '-<key> <value>' and
#   '--<key> <value>' properly in all cases.
# o Added a bit meat to example(commandArgs).
# 2008-10-17
# o BUG FIX: commandArgs() would 'Error in !attr(args, "isEnvVars") : 
#   invalid argument type' if both arguments excludeReserved=TRUE and
#   excludeEnvVars=TRUE were used.
# 2008-08-04
# o Now commandArgs(...) pass '...' to base::commandArgs() making it
#   fully backward compatible.
# o Updated to recognize all command line options as of R v2.7.1 and 
#   R v2.8.0 devel.
# 2005-06-19
# o Added argument 'excludeEnvVars'. 
# o Now commandArgs(asValue=FALSE) also returns attribute 'isEnvVars'.
# o BUG FIX: commandArgs(asValue=TRUE) would give "Internal error of 
#   commandArgs(). Contact author." if R was called with R <key>=<value>, 
#   e.g. when environment variables are set when calling R.
# 2005-02-25
# o Updated the list of reserved arguments according to R v2.0.1.
# 2005-02-23
# o Added argument 'asValues'. Both '--key=value' and '--key value' are 
#   recognized.
# 2002-06-27
# o Created.
############################################################################
