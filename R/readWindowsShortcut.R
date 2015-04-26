###########################################################################/**
# @RdocDefault readWindowsShortcut
#
# @title "Reads a Microsoft Windows Shortcut (.lnk file)"
#
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#   \item{con}{A @connection or a @character string (filename).}
#   \item{verbose}{If @TRUE, extra information is written while reading.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @list structure.
# }
#
# @examples "../incl/readWindowsShortcut.Rex"
#
# \details{
#  The MIME type for a Windows Shortcut file is
#  \code{application/x-ms-shortcut}.
# }
#
# @author
#
# \seealso{
#   @see "createWindowsShortcut"
#   \code{\link{filePath}}
# }
#
# \references{
#   [1] Wotsit's Format, \url{http://www.wotsit.org/}, 2005.\cr
#   [2] Hager J, \emph{The Windows Shortcut File Format}
#       (as reverse-engineered by), version 1.0.\cr
#   [3] Microsoft Developer Network, \emph{IShellLink Interface}, 2008.
#       \url{http://msdn2.microsoft.com/en-us/library/bb774950.aspx} \cr
#   [4] Andrews D, \emph{Parsing Windows Shortcuts (lnk) files in java},
#       comp.lang.java.help, Aug 1999.
#       \url{http://groups.google.com/group/comp.lang.java.help/browse_thread/thread/a2e147b07d5480a2/} \cr
#   [5] Multiple authors, \emph{Windows shell links} (in Tcl), Tcler's Wiki,
#       April 2008. \url{http://wiki.tcl.tk/1844} \cr
#   [6] Daniel S. Bensen, \emph{Shortcut File Format (.lnk)}, Stdlib.com,
#       April 24, 2009. \cr
#       \url{http://www.stdlib.com/art6-Shortcut-File-Format-lnk.html}
#   [7] [MS-SHLLINK]: Shell Link (.LNK) Binary File Format, Microsoft Inc.,
#       September 25, 2009. \cr
# }
#
# @keyword file
# @keyword IO
#*/###########################################################################
# MORE REFERENCES:
# An Unofficial Guide to the URL File Format, \url{http://www.cyanwerks.com/file-format-url.html} (contains info about Hotkeys)
# xxmklink - create a shortcut, http://www.xxcopy.com/xxcopy38.htm
# FILExt, \url{http://filext.com/detaillist.php?extdetail=LNK}, 2005.
setMethodS3("readWindowsShortcut", "default", function(con, verbose=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # dword - An 4-byte unsigned integer
  readByte <- function(con, n=1) {
    readBin(con=con, what=integer(), size=1, n=n,
                                            signed=FALSE, endian="little");

  }

  # word - A 2-byte unsigned integer
  readWord <- function(con, n=1) {
    readBin(con=con, what=integer(), size=2, n=n,
                                            signed=FALSE, endian="little");

  }

  # qword - A 4-byte unsigned integer (actually as signed integer)
  readDWord <- function(con, n=1) {
    readBin(con=con, what=integer(), size=4, n=n,
                                            signed=TRUE, endian="little");

  }

  # qword - An 8-byte unsigned integer (actually as signed integer)
  readQWord <- function(con, n=1) {
    readBin(con=con, what=integer(), size=8, n=n,
                                            signed=TRUE, endian="little");

  }

  readString <- function(con, nchars=-1, unicoded=FALSE) {
    if (nchars == -1) {
      bfr <- c();
      while ((byte <- readByte(con)) != 0) {
        bfr <- c(bfr, byte);
      }
    } else {
      if (unicoded)
        nchars <- 2*nchars;
      bfr <- readByte(con, n=nchars);
    }

    # Since R does not support Unicoded strings, we (incorrectly) assume
    # (=hope) that it is only the unicode characters 0:255 that are used.
    if (unicoded)
      bfr <- bfr[bfr != 0];

    paste(intToChar(bfr), collapse="");
  } # readString()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'con':
  if (is.character(con)) {
    con <- file(con, open="");

  }

  if (inherits(con, "connection")) {
    if (!isOpen(con)) {
      open(con, open="rb");
      on.exit({
        if (inherits(con, "connection") && isOpen(con))
          close(con);
      })
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # File header
  # Shell item ID list
  #   Item 1
  #   Item 2
  #   etc..
  # File locator info
  #   Local path
  #   Network path
  # Description string
  # Relative path string
  # Working directory string
  # Command line string
  # Icon filename string
  # Extra stuff
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # File header
  #
  #   Offset Size/Type Contents
  #   -------------------------
  #     0h  1 dword  Always 0000004Ch 'L'
  #     4h 16 bytes  GUID of shortcut files
  #    14h  1 dword  Flags
  #    18h  1 dword  File attributes
  #    1Ch  1 qword  Time 1
  #    24h  1 qword  Time 2
  #    2Ch  1 qword  Time 3
  #    34h  1 dword  File length
  #    38h  1 dword  Icon number
  #    3Ch  1 dword  ShowWnd value
  #    40h  1 dword  Hot key
  #    44h  2 dwords Unknown, always zero
  #
  # The first 4 bytes of the file form a long integer that is always set
  # to 4Ch this it the ASCII value for the uppercase letter L. This is used
  # to identify a valid shell link file.
  #
  # Identifying Characters (in hex):
  # [  magic  ] [                    GUID                     ]
  # 4C 00 00 00 01 14 02 00 00 00 00 00 C0 00 00 00 00 00 00 46
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  header <- list(
    magic            = readDWord(con),
    guid             = readByte(con, n=16),
    flags            = readDWord(con),
    fileAttributes   = readDWord(con),
    creationTime     = readQWord(con),
    modificationTime = readQWord(con),
    lastAccessTime   = readQWord(con),
    fileLength       = readDWord(con),
    iconNumber       = readDWord(con),
    showWndValue     = readDWord(con),
    hotKey           = readDWord(con),
    unknown          = readDWord(con, n=2)
  );

  if (verbose) {
    message("File header read:");
    message(paste(capture.output(header), collapse="\n"));
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Assert and parse header
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (header$magic != 76) {
    stop("File format error: Magic dword in header is not 0000004C (76): ", header$magic);
  }

  knownGuid <- c(1,20,2,0,0,0,0,0,192,0,0,0,0,0,0,70);
  if (!all.equal(header$guid, knownGuid)) {
    stop("File format error: Unknown GUID: ", paste(header$guid, collapse=","));
  }

  flags <- intToBin(header$flags);
  flags <- rev(strsplit(flags, split="")[[1]]);
  flags <- as.integer(flags);
  flags <- as.logical(flags);
  knownFlagNames <- c("hasShellItemIdList", "pointsToFileOrDirectory", "hasDescription", "hasRelativePath", "hasWorkingDirectory", "hasCommandLineArguments", "hasCustomIcon", "unicodedStrings");
  if (length(flags) <= length(knownFlagNames)) {
    flags <- c(flags, rep(FALSE, length.out=length(knownFlagNames)-length(flags)));
    names(flags) <- knownFlagNames;
  } else {
    extraFlags <- sprintf("unknown%d", 1:(length(flags)-length(knownFlagNames)));
    names(flags) <- c(knownFlagNames, extraFlags);
    if (!is.element(length(extraFlags), c(0,2))) {
    warning("Detected a possibly unsupported file format: There are unknown 'flags' in the Windows Shortcut link file: ", paste(paste(names(flags), flags, sep="="), collapse=", "));
    }
  }
  header$flags <- flags;

  if (header$flags["pointsToFileOrDirectory"]) {
    fileAttributes <- intToBin(header$fileAttributes);
    fileAttributes <- rev(strsplit(fileAttributes, split="")[[1]]);
    fileAttributes <- as.logical(as.integer(fileAttributes));
    if (length(fileAttributes) > 13)
      stop("File format error: Too many bits in flags in header: ", length(fileAttributes));
    fileAttributes <- c(fileAttributes, rep(FALSE, length.out=13-length(fileAttributes)));
    names(fileAttributes) <- c("isReadOnly", "isHidden", "isSystemFile", "isVolumeLabel", "isDirectory", "isModifiedSinceLastBackup", "isEncrypted", "isNormal", "isTemporary", "isSparseFile", "hasReparsePointData", "isCompressed", "isOffline");
    header$fileAttributes <- fileAttributes;
  } else {
    # "If the target is not a file (see flags bit 1), then this is set
    #  to zero."
    if (!all(header$fileAttributes == 0)) {
      stop("File format error: When shortcut is not pointing to a file or a directory all file attributes should be zero.");
    }
    header$fileAttributes <- NA;
  }

  if (header$fileLength < 0) {
    stop("File format error: File length is negative: ", header$fileLength);
  }

  if (header$flags["hasCustomIcon"]) {
  } else {
    if (header$iconNumber != 0)
      stop("File format error: Expected zero icon number: ", header$iconNumber);
  }

  swNames <- c("SW_HIDE", "SW_NORMAL", "SW_SHOWMINIMIZED", "SW_SHOWMAXIMIZED", "SW_SHOWNOACTIVATE", "SW_SHOW", "SW_MINIMIZE", "SW_SHOWMINNOACTIVE", "SW_SHOWNA", "SW_RESTORE", "SW_SHOWDEFAULT");
  if (header$showWndValue %in% 0:10) {
    names(header$showWndValue) <- swNames[header$showWndValue+1];
  } else {
      stop("File format error: showWndValue in header is out of range [0:10]: ", header$showWndValue);
  }

  if (!all(header$unknown == 0)) {
    stop("File format error: Last 2 dwords in header are not zero: ", header$unknown, sep="");
  }

  lnk <- list(header=header);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # The Shell Item Id List
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (header$flags["hasShellItemIdList"]) {
    bytesToRead <- readWord(con);
    if (verbose) {
      message("bytesToRead=", bytesToRead);
    }
    dummy <- readByte(con, n=bytesToRead);
    bytesToRead <- 0;

    while(bytesToRead > 0) {
      itemLength <- readWord(con);
      if (verbose) {
        message("itemLength=", itemLength);
      }
      bytesToRead <- bytesToRead-2;
      item <- readByte(con, n=itemLength-2);
      print(paste(intToChar(item), collapse=""));
      str(item);
      bytesToRead <- bytesToRead-itemLength;
    }
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # File Location Info
  #
  #  Offset Size    Contents
  #   0h    1 dword This is the total length of this structure and all
  #                 following data
  #   4h    1 dword This is a pointer to first offset after this
  #                 structure. 1Ch
  #   8h    1 dword Flags
  #   Ch    1 dword Offset of local volume info
  #  10h    1 dword Offset of base pathname on local system
  #  14h    1 dword Offset of network volume info
  #  18h    1 dword Offset of remaining pathname
  #
  #  Notes: The first length value includes all the assorted pathnames and
  #  other data structures. All offsets are relative to the start of this
  #  structure.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (header$flags["pointsToFileOrDirectory"]) {
    fileLocationInfo <- list(
      length                  = readDWord(con),
      firstOffset             = readDWord(con),
      flags                   = readDWord(con),
      offsetLocalVolumeInfo   = readDWord(con),
      offsetBasePathname      = readDWord(con),
      offsetNetworkVolumeInfo = readDWord(con),
      offsetRemainingPathname = readDWord(con),
      .offset                 = 7*4                # Current read position
    )

    # Set current offset

    if (fileLocationInfo$flags %in% 0:3) {
    } else {
      stop("File format error: Unknown volume flag: ", fileLocationInfo$flags);
    }
    flags <- intToBin(fileLocationInfo$flags);
    flags <- rev(strsplit(flags, split="")[[1]]);
    flags <- as.logical(as.integer(flags));
    flags <- c(flags, rep(FALSE, length.out=2-length(flags)));
    names(flags) <- c("availableOnLocalVolume", "availableOnNetworkShare");
    fileLocationInfo$flags <- flags;

    if (fileLocationInfo$flags["availableOnLocalVolume"] != TRUE) {
      "Random garbage when bit 0 is clear in volume flags" [1]
#      fileLocationInfo$offsetLocalVolumeInfo <- NA;
#      fileLocationInfo$offsetBasePathname <- NA;
    }

    if (fileLocationInfo$flags["availableOnNetworkShare"] != TRUE) {
      "Random garbage when bit 1 is clear in volume flags" [1]
#      fileLocationInfo$offsetNetworkVolumeInfo <- NA;
    }

    if (fileLocationInfo$firstOffset != fileLocationInfo$.offset) {
      warning("File format warning: First offset in File Location Info is not 0x1C (28): ", fileLocationInfo$firstOffset);
      # Skip to first offset
      skip <- fileLocationInfo$firstOffset-fileLocationInfo$.offset;
      readBin(con, what=integer(), size=1, n=skip);
      fileLocationInfo$.offset <- fileLocationInfo$.offset + skip;
    }

    if (verbose) {
      message("File location info:");
      message(paste(capture.output(fileLocationInfo), collapse="\n"));
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # The local volume table
    #
    #  Offset Size    Contents
    #   0h    1 dword Length of this structure.
    #   4h    1 dword Type of volume
    #   8h    1 dword Volume serial number
    #   Ch    1 dword Offset of the volume name (Always 10h)
    #  10h    ASCIZ   Volume label
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (fileLocationInfo$flags["availableOnLocalVolume"]) {
      if (verbose) {
        message("availableOnLocalVolume...");
      }

      # Skip to local volume table
      skip <- fileLocationInfo$offsetLocalVolumeInfo-fileLocationInfo$.offset;
      readBin(con, what=integer(), size=1, n=skip);
      fileLocationInfo$.offset <- fileLocationInfo$.offset + skip;

      table <- list(
        length             = readDWord(con),
        typeOfVolume       = readDWord(con),
        volumeSerialNumber = readDWord(con),
        offsetName         = readDWord(con),
        volumeLabel        = "",                                 # To be read
        .offset            = 4*4
      );

      if (table$typeOfVolume %in% 0:6) {
        names(table$typeOfVolume) <- c("Unknown", "No root directory", "Removable", "Fixed", "Remote", "CD-ROM", "Ram drive")[table$typeOfVolume+1];
      } else {
        stop("File format error: Unknown type of volume: ", table$typeOfVolume);
      }

      if (table$offsetName != table$.offset) {
        warning("File format warning: Offset to volume name in Local Volume Table is not 0x10 (16): ", table$offsetName);
        # Skip to volume label
        skip <- table$offsetName-table$.offset;
        readBin(con, what=integer(), size=1, n=skip);
        table$.offset <- table$.offset + skip;
      }

      table$volumeLabel <- readString(con);
      table$.offset <- table$.offset + nchar(table$volumeLabel, type="chars") + 1;

      if (table$.offset != table$length) {
        stop("File format error: Length of structure did not match the number of bytes read.");
      }

      # Update the offset for file location info
      fileLocationInfo$.offset <- fileLocationInfo$.offset + table$.offset;

      # Remove obsolete information
      table$length <- NULL;
      table$offsetName <- NULL;
      table$.offset <- NULL;

      fileLocationInfo$localVolumeTable <- table;

      if (verbose) {
        message("File location info / Local Volume Table:");
        message(paste(capture.output(fileLocationInfo$localVolumeTable), collapse="\n"));
      }

      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      # The base pathname on local system
      #
      # "To find the filename of the file on the local volume, combine the
      #  base path string and the final path string." [1]
      # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
      # Skip to base pathname
      skip <- fileLocationInfo$offsetBasePathname-fileLocationInfo$.offset;
      readBin(con, what=integer(), size=1, n=skip);
      fileLocationInfo$.offset <- fileLocationInfo$.offset + skip;
      fileLocationInfo$basePathname <- readString(con);
      fileLocationInfo$.offset <- fileLocationInfo$.offset +
                      nchar(fileLocationInfo$basePathname, type="chars") + 1;

      if (verbose) {
        message("basePathname='", fileLocationInfo$basePathname, "'");
        message("availableOnLocalVolume...done");
      }
    }


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # The network volume table
    #
    #  Offset Size    Contents
    #    0h   1 dword Length of this structure
    #    4h   1 dword Unknown, always 2h?
    #    8h   1 dword Offset of network share name (Always 14h)
    #    Ch   1 dword Unknown, always zero?
    #   10h   1 dword Unknown, always 20000h?
    #   14h   ASCIZ   Network share name
    #
    #   Note 1: The above unknown values are the same for a printer or file
    #           share.
    #   Note 2: The above values are for Microsoft Networks, I don't have a
    #           NetWare server to test.
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    if (fileLocationInfo$flags["availableOnNetworkShare"]) {
      if (verbose) {
        message("availableOnNetworkShare...");
      }

      # Skip to local volume table
      skip <- fileLocationInfo$offsetNetworkVolumeInfo-fileLocationInfo$.offset;
      readBin(con, what=integer(), size=1, n=skip);
      fileLocationInfo$.offset <- fileLocationInfo$.offset + skip;

      table <- list(
        length             = readDWord(con),
        unknown1           = readDWord(con),
        offsetName         = readDWord(con),
        unknown2           = readDWord(con),
        unknown3           = readDWord(con),
        networkShareName   = "",                                 # To be read
        .offset            = 5*4
      );

      if (table$offsetName != table$.offset) {
        warning("File format warning: Offset to network share name in Network Volume Table is not 0x14 (20): ", table$offsetName);
        # Skip to volume label
        readBin(con, what=integer(), size=1, n=table$offsetName-table$.offset);
      }

      table$networkShareName <- readString(con);
      table$.offset <- table$.offset + nchar(table$networkShareName, type="chars") + 1;

      if (verbose) {
        message("File location info / Network Volume Table:");
        message(paste(capture.output(table), collapse="\n"));
      }

#      if (table$.offset != table$length) {
      if (table$.offset != table$unknown2) {
        warning("File format warning: Length of table structure did not match the number of bytes read: ", table$.offset, " != ", table$unknown2);
      }

      # Update the offset for file location info
      fileLocationInfo$.offset <- fileLocationInfo$.offset + table$.offset;

      # Remove obsolete information
      table$length <- NULL;
      table$offsetName <- NULL;
      table$unknown1 <- table$unknown2 <- table$unknown3 <- NULL;
      table$.offset <- NULL;

      fileLocationInfo$networkVolumeTable <- table;

      if (verbose) {
        message("File location info / Network Volume Table:");
        message(paste(capture.output(fileLocationInfo$networkVolumeTable), collapse="\n"));
        message("availableOnNetworkShare...done");
      }
    }

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # The remaining pathname on network system
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Skip to remaining pathname
    skip <- fileLocationInfo$offsetRemainingPathname-fileLocationInfo$.offset;
    readBin(con, what=integer(), size=1, n=skip);
    fileLocationInfo$.offset <- fileLocationInfo$.offset + skip;

    fileLocationInfo$remainingPathname <- readString(con);
    fileLocationInfo$.offset <- fileLocationInfo$.offset +
               nchar(fileLocationInfo$remainingPathname, type="chars") + 1;


    if (fileLocationInfo$length != fileLocationInfo$.offset) {
      stop("File format error: Expected to read ", fileLocationInfo$length, " bytes in File Location Info structure, but read ", fileLocationInfo$.offset);
    }

    # Remove obsolete information
    fileLocationInfo$length <- NULL;
    fileLocationInfo$firstOffset <- NULL;
    fileLocationInfo$offsetBasePathname <- NULL;
    fileLocationInfo$offsetLocalVolumeInfo <- NULL;
    fileLocationInfo$offsetNetworkVolumeInfo <- NULL;
    fileLocationInfo$offsetRemainingPathname <- NULL;
    fileLocationInfo$.offset <- NULL;

    lnk$fileLocationInfo <- fileLocationInfo;
  } else {
    lnk$fileLocationInfo <- NA;
  } # if (header$flags["pointsToFileOrDirectory"])

  unicoded <- header$flags["unicodedStrings"];

  if (header$flags["hasDescription"]) {
    nchars <- readWord(con);
    lnk$description <- readString(con, nchars=nchars, unicoded=unicoded);
  }

  if (header$flags["hasRelativePath"]) {
    nchars <- readWord(con);
    lnk$relativePath <- readString(con, nchars=nchars, unicoded=unicoded);
  }

  if (header$flags["hasWorkingDirectory"]) {
    nchars <- readWord(con);
    lnk$workingDirectory <- readString(con, nchars=nchars, unicoded=unicoded);
  }

  if (header$flags["hasCommandLineArguments"]) {
    nchars <- readWord(con);
    lnk$commandLineArguments <- readString(con, nchars=nchars, unicoded=unicoded);
  }

  if (header$flags["hasCustomIcon"]) {
    nbytes <- readWord(con);
    lnk$iconFilename <- readString(con, nchars=nchars, unicoded=unicoded);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # For convenience
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  value <- lnk$relativePath;
  if (!is.null(value)) {
    lnk$relativePathname <- value;
  }

  if (header$flags["pointsToFileOrDirectory"]) {
    if (lnk$fileLocationInfo$flags["availableOnLocalVolume"]) {
      lnk$pathname <- paste(lnk$fileLocationInfo$basePathname,
                           lnk$fileLocationInfo$remainingPathname, sep="");
    }

    if (lnk$fileLocationInfo$flags["availableOnNetworkShare"]) {
      lnk$networkPathname <-
            paste(lnk$fileLocationInfo$networkVolumeTable$networkShareName,
                     "\\", lnk$fileLocationInfo$remainingPathname, sep="");
    }
  } # if (header$flags["pointsToFileOrDirectory"])


  lnk;
}) # readWindowsShortcut()


#############################################################################
# HISTORY:
# 2012-10-29
# o Now readWindowsShortcut() returns list element 'relativePathname',
#   which is identical to 'relativePath'.  This is just to be consistent
#   with the new readWindowsShellLink().
# 2011-09-24
# o Internal readDWord() and readQWord() of readWindowsShortcut() would
#   try read 4- and 8-byte integers as non-signed, which is not supported
#   by base::readBin() and hence instead read as signed integers.
# 2009-10-01
# o Microsoft has released a document [7] describing the LNK file format.
# 2009-05-14
# o Added another reference to the Rdocs.
# 2008-12-03
# o BUG FIX: At least on Windows Vista, for some shortcut files that linked
#   to a Windows network file system, there were more than the 8 known bits
#   in the file flags.  This generated an error.  Known they are quitely
#   accepted with a warning.
# 2007-12-08
# o CLEAN UP: Replaced all stop(paste()) with stop().
# 2007-08-24
# o BUG FIX: Inside if (header$flags["hasCustomIcon"]) {}, non-used variable
#   'nbytes' was used instead of intended 'nchars'.
# 2005-10-17
# o BUG FIX: Had problems reading Network only links.  This was because it
#   still read the local base pathname although it shouldn't.
# 2005-05-27
# o Moved to R.utils package.
# 2004-07-25
# o BUG FIX: If the logical flag 'availableOnNetworkShare' in
#   'File Location Information flags' was FALSE, the internal vector 'flags'
#   would be too short and names() would give an error.
# 2004-06-28
# o Created.
#############################################################################
