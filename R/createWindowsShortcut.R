###########################################################################/**
# @RdocDefault createWindowsShortcut
#
# @title "Creates a Microsoft Windows Shortcut (.lnk file)"
#
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#   \item{pathname}{The pathname (with file extension *.lnk) of the link
#     file to be created.}
#   \item{target}{The target file or directory to which the shortcut should
#     point to.}
#   \item{overwrite}{If @TRUE, an existing link file is overwritten,
#     otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the pathname.
# }
#
# \section{Required privileges on Windows}{
#   In order for this method, which utilizes Windows Script Host a VBScript,
#   to succeed on Windows, the client/R session must run with sufficient
#   privileges (it has been reported that Administrative rights are necessary).
# }
#
# @examples "../incl/createWindowsShortcut.Rex"
#
# @author
#
# \seealso{
#   @see "readWindowsShortcut"
# }
#
# \references{
#   [1] Create a windows shortcut (.LNK file), SS64.com,
#       http://ss64.com/nt/shortcut.html \cr
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
setMethodS3("createWindowsShortcut", "default", function(pathname, target, overwrite=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Reference: http://ss64.com/nt/shortcut.html
  makeVBScript <- function(target, link, description=basename(target), ...) {
    # Arguments 'target':
    target <- Arguments$getReadablePathname(target, mustExist=TRUE);
    target <- getAbsolutePath(target);

    # Arguments 'link':
    link <- getAbsolutePath(link);


    targetPath <- gsub("/", "\\\\", target);
    linkFile <- gsub("/", "\\\\", link);
    if (isDirectory(targetPath)) {
      workingDir <- targetPath;
    } else {
      workingDir <- dirname(targetPath);
    }

    s <-      "Set oWS = WScript.CreateObject(\"WScript.Shell\")";
    s <- c(s, sprintf("sLinkFile = \"%s.LNK\"", linkFile));
    s <- c(s, "Set oLink = oWS.CreateShortcut(sLinkFile)");
    s <- c(s, sprintf("oLink.TargetPath = \"%s\"", targetPath));
#    s <- c(s, "oLink.Arguments = \"\"");
    s <- c(s, sprintf("oLink.Description = \"%s\"", description));
#    s <- c(s, "oLink.HotKey = \"\"");
#    s <- c(s, sprintf("oLink.IconLocation = \"%s, 1\"", targetPath));
#    s <- c(s, "oLink.WindowStyle = \"1\"");
#    s <- c(s, sprintf("oLink.WorkingDirectory = \"%s\"", workingDir));
    s <- c(s, "oLink.Save");
    s <- paste(s, collapse="\n");

    s;
  } # makeVBScript

  createWindowsShortcutViaVBScript <- function(pathname, target, ...) {
    link <- gsub("[.](lnk|LNK)$", "", pathname);

    # Generate VB code
    pd <- packageDescription("R.utils");
    pkgInfo <- sprintf("%s v%s", pd$Package, pd$Version);
    description <- sprintf("Windows Shortcut link created by %s", pkgInfo);
    code <- makeVBScript(target, link, description=description);

    tmpFile <- tempfile();
    pathnameT <- sprintf("%s.vbs", tmpFile);
    on.exit(file.remove(pathnameT));
    cat(file=pathnameT, code);
    cmd <- sprintf("cscript \"%s\"", pathnameT);
    tryCatch({
      shell(cmd, intern=TRUE, mustWork=TRUE, shell=Sys.getenv("COMSPEC"));
    }, error = function(ex) {
    })

    # Sanity check
    if (!isFile(pathname)) {
      return(NULL);
    }

    pathname;
  } # createWindowsShortcutViaVBScript()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'overwrite':
  overwrite <- Arguments$getLogical(overwrite);

  # Argument 'pathname':
  if (!overwrite && isFile(pathname)) {
    throw("Cannot create Windows Shortcut link. File already exists: ",
                                                                 pathname);
  }

  # Argument 'target':
  target <- Arguments$getReadablePathname(target, mustExist=TRUE);



  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Create Windows Shortcut link
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  createWindowsShortcutViaVBScript(pathname, target=target);

  link <- gsub("[.](lnk|LNK)$", "", pathname);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate correctness
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Try to read Windows shortcut (throws a parsing error if so)
  lnk <- tryCatch({
    # (i) Try using new reader...
    readWindowsShellLink(pathname);
  }, error = function(ex) {
    # (ii) ...using old reverse-enginered reader
    readWindowsShortcut(pathname);
  });

  target0 <- getAbsolutePath(target);
  target1 <- Arguments$getReadablePathname(link);
  target1 <- getAbsolutePath(target1);

  # AD HOC: It may happen that the case of the drive letters differ.
  if (tolower(target1) != tolower(target0)) {
    throw("Failed to create a valid Windows Shortcut link. The link does not point the expected file: ", target1, " != ", target0);
  }

  # Return the LNK file
  invisible(pathname);
}) # createWindowsShortcut()



#############################################################################
# HISTORY:
# 2014-02-28
# o DOCUMENTATION: Added an Rd section on privileges required on Windows
#   for createLink() to work.
# 2013-10-13
# o CLEANUP: createWindowsShortcut() no longer attaches 'R.utils'.
# 2012-10-29
# o ROBUSTNESS: Now createWindowsShortcut() uses an improved validation
#   strategy of the created *.lnk file.
# 2009-10-01
# o Microsoft has released a document [7] describing the LNK file format.
# o Created.
#############################################################################
