#########################################################################/**
# @RdocFunction commandArgs
#
# @title "Extract command-line arguments"
#
# @synopsis
#
# \description{
#  Provides access to a copy of the command-line arguments supplied when 
#  this \R session was invoked.  This function is backward compatible with
#  @see "base::commandArgs" of the \pkg{base} package, but adds more
#  features.
# }
#
# \arguments{
#   \item{trailingOnly}{If @TRUE, only arguments after \code{--args}
#     are returned.}
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
#   \item{always}{A @character @vector or a named @list of fixed
#     arguments.  These will override default and command-line
#     arguments with the same name.}
#   \item{adhoc}{(ignored if \code{asValues=FALSE}) If @TRUE, then
#     additional ad hoc coercion of @character command-line arguments
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
#   \item{args}{A named @list of arguments.}
#   \item{.args}{A @character @vector of command-line arguments.}
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
#   the last component (or basename) of the application.
#   The returned attribute \code{isReserved} is a @logical @vector 
#   specifying if the corresponding command-line argument is a reserved
#   \R argument or not.
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
#   the 'always' or 'default' arguments, then its value is coerced to
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
# @author
#
# @examples "../incl/commandArgs.Rex"
#
# \seealso{
#   For a more user friendly solution, see @see "cmdArgs".
#   Internally @see "base::commandArgs" is used.
# }
#
# @keyword "programming"
# @keyword "internal"
#*/#########################################################################
commandArgs <- function(trailingOnly=FALSE, asValues=FALSE, defaults=NULL, always=NULL, adhoc=FALSE, unique=FALSE, excludeReserved=FALSE, excludeEnvVars=FALSE, os=NULL, .args=base::commandArgs(trailingOnly=trailingOnly), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  getReserved <- function(os, patterns=FALSE) {
    rVer <- getRversion();
  
    # General arguments
    if (rVer >= "2.13.0") {
      # According to R v2.13.1:
      reservedArgs <- c("--help", "-h", "--version", "--encoding[= ](.*)", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "-f (.*)", "--file=(.*)", "-e (.*)", "--min-vsize=(.*)", "--max-vsize=(.*)", "--min-nsize=(.*)", "--max-nsize=(.*)", "--max-ppsize=(.*)", "--quiet", "--silent", "-q", "--slave", "--verbose", "--args");
    } else if (rVer >= "2.7.0") {
      # According to R v2.7.1:
      reservedArgs <- c("--help", "-h", "--version", "--encoding=(.*)", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "-f (.*)", "--file=(.*)", "-e (.*)", "--min-vsize=(.*)", "--max-vsize=(.*)", "--min-nsize=(.*)", "--max-nsize=(.*)", "--max-ppsize=(.*)", "--quiet", "--silent", "-q", "--slave", "--interactive", "--verbose", "--args");
    } else {
      # According to R v2.0.1:
      reservedArgs <- c("--help", "-h", "--version", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "--min-vsize=(.*)", "--max-vsize=(.*)", "--min-nsize=(.*)", "--max-nsize=(.*)", "--max-ppsize=(.*)", "--quiet", "--silent", "-q", "--slave", "--verbose", "--args");
    }

    # a) Unix (and OSX?!? /HB 2011-09-14)
    if ("unix" %in% os) {
      reservedArgs <- c(reservedArgs, "--no-readline", "--debugger=(.*)", "-d", "--gui=(.*)", "-g", "--interactive", "--arch=(.*)")
    }
    
    # b) Macintosh
    if ("mac" %in% os) {
      # Nothing special here.
    }
    
    # c) Windows
    if ("windows" %in% os) {
      reservedArgs <- c(reservedArgs, "--no-Rconsole", "--ess", "--max-mem-size=(.*)");
      # Additional command-line options for RGui.exe
      reservedArgs <- c(reservedArgs, "--mdi", "--sdi", "--no-mdi", "--debug");
    }
  
    # If duplicates where created, remove them
    reservedArgs <- unique(reservedArgs);
  
    if (patterns) {
      # Create regular expression patterns out of the reserved arguments
      reservedArgs <- paste("^", reservedArgs, "$", sep="");
    }

    reservedArgs;
  } # getReserved()


  # Parse reserved pairs ('-<key>', '<value>') and ('--<key>', '<value>')
  # arguments into '-<key> <value>' and '--<key> <value>', respectively.
  parseReservedArgs <- function(args, os) {
    nargs <- length(args);

    reservedArgs <- getReserved(os=os, pattern=FALSE);

    # Identify the reserved arguments that takes a 2nd argument
    pairArgs <- grep(".*", reservedArgs, fixed=TRUE, value=TRUE);
    keys <- strsplit(pairArgs, split="([ =]|\\[= \\])", fixed=FALSE);
    keys <- unlist(lapply(keys, FUN=function(x) x[1L]));
    idxs <- which(is.element(args, keys));

    idxU <- which(args == "--args")[1L];

    argsT <- list();
    user <- FALSE;
    idx <- 1L;
    while (idx <= nargs) {
       user <- !user && (!is.na(idxU) && idx > idxU);
       if (!user && is.element(idx, idxs)) {
         arg <- c(args[idx], args[idx+1L]);
         idx <- idx + 1L;
         reserved <- TRUE;
         merged <- TRUE;
       } else {
         arg <- args[idx];
         reserved <- !user && is.element(arg, reservedArgs);
         merged <- FALSE;
         envvar <- !user && (regexpr("^([^=-]*)(=)(.*)$", arg) != -1L);
       }
       argsT[[idx]] <- list(arg=arg, user=user, reserved=reserved, merged=merged, envvar=envvar);
       idx <- idx + 1L;
    }
    argsT <- argsT[!sapply(argsT, FUN=is.null)];

    argsT;
  } # parseReservedArgs()


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



  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'defaults':
  if (asValues) {
    defaults <- as.list(defaults);
    defaults <- assertNamedList(defaults);
  } else {
    if (is.list(defaults)) {
      throw("Argument 'defaults' must not be a list when asValues=FALSE.");
    }
  }

  # Argument 'always':
  if (asValues) {
    always <- as.list(always);
    always <- assertNamedList(always);
  } else {
    if (is.list(always)) {
      throw("Argument 'always' must not be a list when asValues=FALSE.");
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

  # Argument '.args':
  if (is.null(.args)) {
    .args <- base::commandArgs(trailingOnly=trailingOnly);
  } else if (!is.character(.args)) {
    throw("Argument '.args' must be a character vector: ", class(.args)[1L]);
  }

  args <- .args;


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # (1) Parse into user, paired, reserved arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  argsT <- parseReservedArgs(args, os=os);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # (2) Identify which arguments not to drop
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  keep <- unlist(lapply(argsT, FUN=function(arg) {
     !(excludeReserved && arg$reserved) && !(excludeEnvVars && arg$envvar);
  }))
  argsT <- argsT[keep];


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # (3) Coerce arguments to a named list?
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (asValues) {
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (a) Parse key-value pairs
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    nargsT <- length(argsT);
    for (ii in seq(length=nargsT)) {
      argI <- argsT[[ii]];
      arg <- argI$arg;
      if (length(arg) == 2L) {
        argsT[[ii]]$key <- arg[1L];
        argsT[[ii]]$value <- arg[2L];
        next;
      }

      # Sanity check
      stopifnot(length(arg) == 1L);

      # --<key>=<value>
      pattern <- "^--([[:alnum:]]+)(=)(.*)$";
      if (regexpr(pattern, arg) != -1L) {
        key <- gsub(pattern, "\\1", arg);
        value <- gsub(pattern, "\\3", arg);
        argsT[[ii]]$key <- key;
        argsT[[ii]]$value <- value;
        next;
      } 

      # --<key>
      pattern <- "^--([[:alnum:]]+)$";
      if (regexpr(pattern, arg) != -1L) {
        key <- gsub(pattern, "\\1", arg);
        argsT[[ii]]$key <- key;
        next;
      }

      # -<key>=<value>
      pattern <- "^-([[:alnum:]]+)(=)(.*)$";
      if (regexpr(pattern, arg) != -1L) {
        key <- gsub(pattern, "\\1", arg);
        value <- gsub(pattern, "\\3", arg);
        argsT[[ii]]$key <- key;
        argsT[[ii]]$value <- value;
        next;
      } 

      # -<key>
      pattern <- "^-([[:alnum:]]+)$";
      if (regexpr(pattern, arg) != -1L) {
        key <- gsub(pattern, "\\1", arg);
        argsT[[ii]]$key <- key;
        next;
      }

      # <key>=<value>
      pattern <- "^([[:alnum:]]+)(=)(.*)$";
      if (regexpr(pattern, arg) != -1L) {
        key <- gsub(pattern, "\\1", arg);
        value <- gsub(pattern, "\\3", arg);
        argsT[[ii]]$key <- key;
        argsT[[ii]]$value <- value;
        next;
      }

      argsT[[ii]]$value <- arg;
    } # for (ii ...)

    # Rescue missing values
    if (nargsT > 1L) {
      for (ii in 1:(nargsT-1L)) {
        if (length(argsT[[ii]]) == 0L)
          next;
       
        key <- argsT[[ii]]$key;
        value <- argsT[[ii]]$value;

        # No missing value?
        if (!is.null(value)) {
           if (is.null(key)) {
              argsT[[ii]]$key <- value;
              argsT[[ii]]$value <- NA;
           }
           next;
        }

        # Missing value - can we rescue it?
        nextKey <- argsT[[ii+1L]]$key;
        nextValue <- argsT[[ii+1L]]$value;
        if (is.null(nextKey)) {
           # Definitely!
           argsT[[ii]]$value <- nextValue;
           argsT[[ii+1L]] <- list(); # Drop next
           next;
        }

        # Otherwise, interpret as a flag
        argsT[[ii]]$value <- TRUE;
      } # for (ii ...)

      # Drop empty
      keep <- (sapply(argsT, FUN=length) > 0L);
      argsT <- argsT[keep];
      nargsT <- length(argsT);
    }

    keys <- unlist(lapply(argsT, FUN=function(x) x$key));
    args <- lapply(argsT, FUN=function(x) x$value);
    names(args) <- keys;

    # Not needed anymore
    rm(argsT, keys);


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (b) Corce arguments to known data types?
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(args) > 0L && length(defaults) + length(always) > 0L) {
      # First to the 'always', then remaining to the 'defaults'.
      types <- sapply(c(defaults, always), FUN=storage.mode);
      keep <- !duplicated(names(types), fromLast=TRUE);
      types <- types[keep];
      args <- coerceAs(args, types=types);
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (c) Ad hoc corcion of numerics?
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
        args <- c(args[1L], defaults[idxs], args[-1L]);
      }
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (e) Override by/append 'always' arguments?
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(always) > 0L) {
      args <- c(args, always);
    }

    # Keep only unique arguments?
    if (unique && length(args) > 1L) {
      keep <- !duplicated(names(args), fromLast=TRUE);
      args <- args[keep];
    }
  } else {
    args <- unlist(lapply(argsT, FUN=function(x) x$arg));
    rm(argsT);

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (a) Prepend defaults, if not already specified
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(defaults) > 0L) {
      # Any missing?
      idxs <- which(!is.element(defaults, args));
      if (length(idxs) > 0L) {
        args <- c(args[1L], defaults[idxs], args[-1L]);
      }
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # (b) Append 'always' argument, if not already specified
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (length(always) > 0L) {
      args <- c(args, setdiff(always, args));
    }

    # Keep only unique arguments?
    if (unique && length(args) > 0L) {
      keep <- !duplicated(args, fromLast=TRUE);
      args <- args[keep];
    }
  } # if (asValues)

  args;
} # commandArgs()



############################################################################
# HISTORY:
# 2013-03-20
# o Added argument 'trailingOnly' to commandArgs().
# 2013-03-07
# o BUG FIX: commandArgs(asValues=TRUE) failed for reserved arguments
#   that takes a second value when the value contained an equal sign,
#   when the value would in turn be interpreted as a <key>=<value> pair.
# o commandArgs() no longer returns attributes.
# o Renamed argument 'fixed' to 'always'.
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
# o Updated to recognize all command-line options as of R v2.7.1 and 
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
