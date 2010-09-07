###########################################################################/**
# @RdocDefault fileAccess
#
# @title "Checks the permission of a file or a directory"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character string of the file or the directory
#       to be checked.}
#   \item{mode}{An @integer (0,1,2,4), cf. @see "base::file.access".}
#   \item{safe}{If @TRUE, the permissions are tested more carefully,
#       otherwise @see "base::file.access" is used.}
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns an @integer; 0 if the permission exists, -1 if not.
# }
#
# @author
#
# \details{
#   In \R there is @see "base::file.access" for checking whether the
#   permission of a file.
#   Unfortunately, that function cannot be 100\% trusted depending on
#   platform used and file system queried, cf. [1].
# }
#
# @examples "../incl/fileAccess.Rex"
#
# \seealso{
#   @see "base::file.access"
# }
#
# \references{
#  [1] R-devel thread 
#      \emph{file.access() on network (mounted) drive on Windows Vista?}
#      on Nov 26, 2008.\cr
#  [2] Filesystem permissions, Wikipedia, 2010.
#      \url{http://en.wikipedia.org/wiki/Filesystem_permissions}\cr
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("fileAccess", "default", function(pathname, mode=0, safe=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'pathname':
  pathname <- Arguments$getCharacter(pathname);

  # Argument 'mode':
  if (!is.element(mode, c(0, 1, 2, 4))) {
    throw("Valud of argument 'mode' is unknown: ", mode);
  }


  # file.access()  
  fa <- base::file.access(pathname, mode=mode);

  if (!safe)
    return(fa);


  # If file doesn't exists, then we have none of the permission either.
  fe <- file.exists(pathname);
  if (!fe)
    return(as.integer(-1));


  # This is a workaround to make sure any connection opened inside a
  # tryCatch() statement is closed again.
  con <- NULL;
  on.exit({
    if (!is.null(con))
      close(con);
  });


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # mode = 0: Test for existence of file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (mode == 0) {
    faSafe <- -as.integer(!fe);
    if (fa != faSafe) {
      warning("file.access() and file.exists() gives different results for mode=0 (", fa, " != ", faSafe, "). Will use the file.exists() results: ", pathname);
    }
    return(faSafe);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # mode = 1: Test for executable permission of file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (mode == 1) {
    fi <- file.info(pathname);
    isExecutable <- (fi$exe != "no");
    faSafe <- -as.integer(!isExecutable);
    if (fa != faSafe) {
      warning("file.access() and file.info() gives different results for mode=1 (", fa, " != ", faSafe, "). Will use the file.info() results: ", pathname);
    }
    return(faSafe);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # mode = 2: Test for write permission of file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (mode == 2) {
    if (isDirectory(pathname)) {
      # "The write permission, [...] for a directory, this permission 
      #  grants the ability to modify entries in the directory. This 
      #  includes creating files, deleting files, and renaming files." [2]

      # (a) Generate a random filename that does not already exist
      path <- pathname;
      pathname <- NULL;
      for (n in 1:16) {
        repeat {
          chars <- sample(c(base::letters, base::LETTERS), size=n);
          filename <- paste(chars, collapse="");
          pathname <- file.path(path, filename);
          if (!file.exists(pathname))
            break;
          pathname <- NULL;
        }
        if (!is.null(pathname))
          break;
      } # for (n ...)

      # (b) Try to open the random filename for writing
      faSafe <- as.integer(-1);
      tryCatch({
        suppressWarnings({
          con <- file(pathname, open="ab");
        });

        # If we get here, we have permission
        faSafe <- as.integer(0);
      }, error = function(ex) {
        # If we end up here, we do not have permissions
      })

      # Close connection and remove temporary file
      if (!is.null(con) && file.exists(pathname)) {
        close(con);
        con <- NULL;
        file.remove(pathname);
      }

      if (fa != faSafe) {
        warning("file.access() and file() gives different results for mode=2 (", fa, " != ", faSafe, "). Will use the file() results: ", pathname);
      }

      return(faSafe);
    } # if (isDirectory(pathname))

    # This is actually redundant, because of the above file.exists() test,
    # but we keep it here to make it explicit what we are doing.
    if (!isFile(pathname)) {
      # If the file does not exist, we have no permissions.
      return(fa);
    }

    faSafe <- as.integer(-1);
    tryCatch({
      # (a) Try to open the file for writing
      suppressWarnings({
        con <- file(pathname, open="ab");
      });

      # If we get here, we have permission
      faSafe <- as.integer(0);
    }, error = function(ex) {
      # If we end up here, we do not have permissions
    })

    if (fa != faSafe) {
      warning("file.access() and file() gives different results for mode=2 (", fa, " != ", faSafe, "). Will use the file() results: ", pathname);
    }

    return(faSafe);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # mode = 4: Test for read permission of file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (mode == 4) {
    faSafe <- as.integer(-1);
    tryCatch({
      if (isFile(pathname)) {
        # (a) Try to open the file for reading
        con <- file(pathname, open="rb");

        # (b) Try even to read one byte
        bfr <- readBin(con, what=raw(), n=1);
      } else {
        # (a) Try to list directory [Will this take a lot of time?!?]
        dummy <- list.files(path=pathname);
      }

      # If we get here, we have permission
      faSafe <- as.integer(0);
    }, error = function(ex) {
      # If we end up here, we do not have permissions
    })

    if (fa != faSafe) {
      warning("file.access() and file()+readBin() gives different results for mode=4 (", fa, " != ", faSafe, "). Will use the file()+readBin() results: ", pathname);
    }

    return(faSafe);
  }

  return(as.integer(-1));
})

###########################################################################
# HISTORY: 
# 2010-09-06
# o Forgot to remove any temporary created files.
# 2010-09-05
# o DOCUMENTATION: Added an example to help(fileAccess).
# o ROBUSTNESS: Added a more robust test for fileAccess(path, mode=2) 
#   when 'path' is a directory.
# o Now the warning():s generated by fileAccess() also contains the
#   path/pathname tested.
# o Added Rdoc reference to Wikipedia.
# 2009-10-28
# o Clarified in the Rdoc that also directories can be tested.
# 2008-12-03
# o Updated with more warnings().
# o BUG FIX: mode=4 did not work.
# 2008-12-01
# o Created.
###########################################################################
