###########################################################################/**
# @RdocDefault fileAccess
#
# @title "Checks the permission of a file"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{pathname}{A @character string of the pathname to be checked.}
#   \item{mode}{An @integer...}
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
#   Unfortunately, this function cannot be 100\% trusted depending on
#   platform used and file system queried, cf. [1].
# }
#
# \seealso{
#   @see "base::file.access"
# }
#
# \references{
#   [1] R-devel thread 
#       \emph{file.access() on network (mounted) drive on Windows Vista?}
#       on Nov 26, 2008.
# }
#
# @keyword IO
# @keyword programming
#*/###########################################################################
setMethodS3("fileAccess", "default", function(pathname, mode=0, safe=TRUE, ...) {
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


  # If file doesn't exists, there we have none of the permission either.
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
      warning("file.access() and file.exists() gives different results for mode=0 (", fa, " != ", faSafe, "). Will use the file.exists() results");
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
      warning("file.access() and file.info() gives different results for mode=1 (", fa, " != ", faSafe, "). Will use the file.info() results.");
    }
    return(faSafe);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # mode = 2: Test for write permission of file
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (mode == 2) {
    if (!isFile(pathname)) {
      # Safe testing of write permission for a directory is not implemented.
      return(fa);
    }

    faSafe <- as.integer(-1);
    tryCatch({
      # (a) Try to open the file for writing
      con <- file(pathname, open="ab");

      # If we get here, we have permission
      faSafe <- as.integer(0);
    }, error = function(ex) {
      # If we end up here, we do not have permissions
    })

    if (fa != faSafe) {
      warning("file.access() and file() gives different results for mode=2 (", fa, " != ", faSafe, "). Will use the file() results.");
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
      warning("file.access() and file()+readBin() gives different results for mode=4 (", fa, " != ", faSafe, "). Will use the file()+readBin() results.");
    }

    return(faSafe);
  }

  return(as.integer(-1));
})

###########################################################################
# HISTORY: 
# 2008-12-03
# o Updated with more warnings().
# o BUG FIX: mode=4 did not work.
# 2008-12-01
# o Created.
###########################################################################
