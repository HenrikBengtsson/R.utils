########################################################################/**
# @RdocDefault sourceDirectory
#
# @title "Sources files recursively to either local or global environment"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{path}{A path to a directory to be sourced.}
#  \item{pattern}{A regular expression file name pattern to identify
#        source code files.}
#  \item{recursive}{If @TRUE, subdirectories are recursively sourced
#        first, otherwise not.}
#  \item{envir}{An @environment in which the code should be evaluated.}
#  \item{onError}{If an error occures, the error may stop the job,
#        give a warning, or silently be skipped.}
#  \item{modifiedOnly}{If @TRUE, only files that are modified since the
#        last time they were sourced are sourced, otherwise regardless.}
#  \item{...}{Additional arguments passed to @see "sourceTo".}
#  \item{verbose}{A @logical or a @see "Verbose" object.}
# }
#
# \value{
#  Returns a @vector of the full pathnames of the files sourced.
# }
#
# \section{Details}{
#   Subdirectories and files in each (sub-)directory are sourced
#   in lexicographic order.
# }
#
# \section{Hooks}{
#  This method does not provide hooks, but the internally used
#  @see "sourceTo" does.
# }
#
# \seealso{
#   @see "sourceTo" and compare to @see "base::source".
# }
#
# @author
#
# @keyword IO
# @keyword programming
#**/#######################################################################
# Create a filename pattern for R files and Windows shortcuts too such.
# sourceTo() will automatically recognize those too.
setMethodS3("sourceDirectory", "default", function(path, pattern=".*[.](r|R|s|S|q)([.](lnk|LNK))*$", recursive=TRUE, envir=parent.frame(), onError=c("error", "warning", "skip"), modifiedOnly=TRUE, ..., verbose=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'path':
  path <- filePath(path);
  if (!isDirectory(path))
    return(NULL);

  # Argument 'onError'
  onError <- match.arg(onError);

  # Argument 'verbose'
  verbose <- Arguments$getVerbose(verbose);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # start...
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Store files that get sourced.
  sourcedFiles <- c();

  # First, if recursive, follow all directories...
  if (recursive) {
    verbose && cat(verbose, "Sourcing directory recursively: ", path);
    dirs <- list.files(path=path, recursive=FALSE,
                                          all.files=TRUE, full.names=TRUE);
    dirs <- dirs[!(basename(dirs) %in% c(".", ".."))];

    # Source directories in lexicographic order
    if (length(dirs) > 0)  # To avoid warning():s
      dirs <- sort(dirs);

    for (dir in dirs) {
      pathname <- filePath(dir);
      if (isDirectory(pathname)) {
        verbose && cat(verbose, "Entering: ", pathname);
        sourcedFiles <- c(sourcedFiles,
          sourceDirectory(pathname, pattern=pattern, recursive=recursive,
                       envir=envir, onError=onError, verbose=verbose, ...)
        );

      }
    } # for (dir ...)
  } else {
    verbose && cat(verbose, "Sourcing directory (non-recursively): ", path);
  }

  # Then, get all files in current directory...
  files <- listDirectory(path, pattern=pattern, recursive=FALSE,
                                          allNames=TRUE, fullNames=TRUE);

  # Source files in lexicographic order
  if (length(files) > 0)  # To avoid warning():s
    files <- sort(files);

  if (verbose) {
    if (length(files) > 0) {
      cat(verbose, "Found *.R scripts:");
      readable <- (sapply(files, FUN=file.access, mode=4) == 0);
      bytes <- sapply(files, FUN=function(x) file.info(x)$size);
      df <- data.frame(filename=basename(files), bytes=bytes,
                                        readable=readable, row.names=NULL);
      print(verbose, df);
      # Not needed anymore
      df <- bytes <- readable <- NULL;
    } else {
      cat(verbose, "Found no *.R scripts.");
    }
  }

  for (file in files) {
    pathname <- filePath(file);
    if (!isDirectory(pathname)) {
      # If the parent directory is called 'global' then source to
      # the global environment, otherwise the local job environment.
      parent <- basename(dirname(pathname));
      local <- (parent != "global");
      type <- ifelse(local, "local", "global");

      tryCatch({
        verbose && enter(verbose, "Loading (", type, ") source file: ",
                                                        basename(pathname));
#        output <- capture.output({
          sourceTo(pathname, ..., local=local, chdir=FALSE, envir=envir, modifiedOnly=modifiedOnly);
#        });

#        print(ll(envir=envir));
        sourcedFiles <- c(sourcedFiles, pathname);
#        if (length(output) > 0)
#          verbose && cat(verbose, output	, collapse="\n");
        verbose && exit(verbose);
      }, error = function(ex) {
        if (verbose) {
          print(verbose, ex);
          tryCatch({
            # Display source code with erroneous line highlighted.
            cat(verbose, displayCode(pathname, highlight=ex$message,
                                                             pager="none"));
          }, error = function(ex) {})
        }
        verbose && exit(verbose, suffix="...failed");

        # An error was detected, but always log it.
        verbose && cat(verbose, "Error when sourcing file ", pathname, ": ",
                                                                ex$message);

        if (onError == "skip") {
          # Ignore the error, but log it.
        } else if (onError == "warning") {
          # Give a warning.
          warning(ex$message);
        } else {
          # Rethrow error.
          signalCondition(ex);
          msg <- sprintf("sourceDirectory() failed to source '%s': %s",
                                                    pathname, ex$message);
          stop(msg);
        }
      }) # tryCatch()
    }
  } # for (file ...)

  # Return files that was sourced.
  invisible(sourcedFiles);
})   # sourceDirectory()

###########################################################################
# HISTORY:
# 2014-04-18
# o Added argument 'modifiedOnly' to sourceDirectory() and it now
#   defaults to TRUE.
# 2013-10-13
# o CLEANUP: sourceDirectory() no longer attaches 'R.utils'.
# 2010-01-08
# o Updated help on argument '...'.
# 2008-10-24
# o Now sourceDirectory() also searches for source files with extensions
#   *.r, *.q, *.s, and *.S, cf. R manual 'Writing R Extensions'.
# 2008-07-24
# o Now sourceDirectory() is guaranteed to source directories and files
#   in lexicographic order.
# 2007-06-09
# o BUG FIX: Replaced non-existing 'scriptFile' with 'pathname'.
# 2006-09-15
# o BUG FIX: onError="error" would not throw an error.  Why can't you
#   rethrow a condition using signalCondition()?
# 2006-02-22
# o Modernized the processing of argument 'verbose' using Arguments.
# 2005-12-05
# o sourceDirectory() did not work correctly on recursive calls.
# 2005-10-28
# o Now sourceDirectory() returns the source files invisibly.
# o Gathered files recursively in sourceDirectory(), but it was not needed
#   since sourceDirectory() itself is recursive.
# 2005-07-18
# o BUG FIX: If there are no files to source in a directory, and verbose
#   is active, basefile() on NULL was called generating an error.
# 2005-07-07
# o Not catching warnings in tryCatch() anymore; it will interrupt the
#   call!
# 2005-06-23
# o Remove capture.output() because it cannot handle args '...'.
# o Now sourceTo() supports preprocessing via hook 'sourceTo/onPreprocess'
#   making it very simple to preprocess say VComments.
# o Created from same method in Job.R in R.batch. Generalized a little
#   bit, but pretty much the same code.
###########################################################################

