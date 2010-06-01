#########################################################################/**
# @RdocFunction commandArgs
#
# @title "Extract Command Line Arguments"
#
# \usage{commandArgs(@eval "t<-formals(R.utils::commandArgs);paste(gsub('=$', '', paste(names(t), t, sep='=')), collapse=', ')")}
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
#   \item{...}{Passed to @see "base::commandArgs" of the \pkg{base} package.}
# }
#
# \value{
#   Returns a @character @vector containing the names of the executable and 
#   the user-supplied command line arguments, or a @list if \code{asValue}
#   is @TRUE.
#
#   The first element is the name
#   of the executable by which \R was invoked. As far as I am aware, the
#   exact form of this element is platform dependent. It may be the fully
#   qualified name, or simply the last component (or basename) of the
#   application. The attribute \code{isReserved} is a @logical @vector
#   specifying if the corresponding command line argument is a reserved
#   \R argument or not.
# }
#
# \details{
#  This function should be fully backward compatible with the same 
#  function in the base package.
# }
#
# @author
#
# \examples{
#   # Get all arguments
#   commandArgs()
#
#   ## Spawn a copy of this application as it was invoked.
#   ## system(paste(commandArgs(), collapse=" "))
#
#   # Get only "private" arguments and not the name of the R executable.
#   commandArgs(excludeReserved=TRUE)[-1]
#
#   # If R is started as
#   #   R DATAPATH=../data --args --root="do da" --foo bar --details --a=2 
#   # then commandArgs(asValue=TRUE) returns a list like
#   #   list(R=NA, DATAPATH="../data" args=TRUE, root="do da", foo="bar", details=TRUE, a="2")
# }
#
# \seealso{
#   @see "base::commandArgs", @see "base::Platform"
# }
#
# @keyword "programming"
#*/#########################################################################
commandArgs <- function(asValues=FALSE, excludeReserved=FALSE, excludeEnvVars=FALSE, os=NULL, ...) {
  # Process argument 'os'
  if (is.null(os) || toupper(os) == "ANY")
    os <- c("unix", "mac", "windows")
  else if (tolower(os) == "current")
    os <- .Platform$OS.type;
  os <- tolower(os);
  if (any(is.na(match(os, c("unix", "mac", "windows")))))
    stop("Argument 'os' contains unknown values.");

  # Reserved R command line options according to paragraph
  # 'R accepts the following command-line options' in
  # "An Introduction to R" for R v 2.7.1 (was v2.0.1):

  # General arguments
  # According to R v2.0.1:
## reservedArgs <- c("--help", "-h", "--version", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "--min-vsize=.*", "--max-vsize=.*", "--min-nsize=.*", "--max-nsize=.*", "--max-ppsize=.*", "--quiet", "--silent", "-q", "--slave", "--verbose", "--args");
  # According to R v2.7.1:
  reservedArgs <- c("--help", "-h", "--version", "--encoding=.*", "--save", "--no-save", "--no-environ", "--no-site-file", "--no-init-file", "--restore", "--no-restore", "--no-restore-data", "--no-restore-history", "--vanilla", "-f", "--file=.*", "=e", "--min-vsize=.*", "--max-vsize=.*", "--min-nsize=.*", "--max-nsize=.*", "--max-ppsize=.*", "--quiet", "--silent", "-q", "--slave", "--interactive", "--verbose", "--args");

  # a) Unix
  if ("unix" %in% os) {
    reservedArgs <- c(reservedArgs, "--no-readline", "--debugger=.*", "-d", "--gui=.*", "-g")
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

  # Create regular expression patterns out of the reserved arguments
  reservedArgs <- paste("^", reservedArgs, "$", sep="");
  
  # Flag reserved arguments
  args <- base::commandArgs(...);

  isReserved <- logical(length(args));
  for (rarg in reservedArgs)
    isReserved <- isReserved | (regexpr(rarg, args) != -1);

  # Flag environment variable arguments
  pattern <- "^([^=-]*)(=)(.*)$";
  isEnvVars <- (regexpr(pattern, args) != -1);

  # Exclude non wanted elements
  keep <- rep(TRUE, length(args));
  if (excludeReserved)
    keep <- keep & !isReserved;
  if (excludeEnvVars)
    keep <- keep & !isEnvVars;

  attrs <- list(isReserved=isReserved, isEnvVars=isEnvVars);
  attrs <- c(attributes(args), attrs);
  args <- args[keep];
  attributes(args) <- attrs;

  if (asValues) {
    keys <- args[1];
    values <- list(NA);
    for (arg in args[-1]) {
      # --<key>=<value>
      pattern <- "^--([^=]*)(=)(.*)$";
      if (regexpr(pattern, arg) != -1) {
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
      if (regexpr(pattern, arg) != -1) {
        if (length(values) < length(keys))
          values <- c(values, TRUE);
        key <- gsub(pattern, "\\1", arg);
        keys <- c(keys, key);
        next;
      }

      # <key>=<value>
      pattern <- "^([^=-]*)(=)(.*)$";
      if (regexpr(pattern, arg) != -1) {
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

    if (length(values) < length(keys))
      values <- c(values, TRUE);

    if (length(values) != length(keys)) {
      throw("Internal error of commandArgs(). The lengths of keys and values does not match: keys=(", paste(keys, collapse=", "), "), values=(", paste(values, collapse=", "), ")");
    }
 
    names(values) <- keys;
    args <- values;
  }
  
  args;
}

############################################################################
# HISTORY:
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
