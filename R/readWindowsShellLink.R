###########################################################################/**
# @RdocDefault readWindowsShellLink
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
#   \item{clean}{If @TRUE, low-level file specific fields are dropped,
#      e.g. offsets on file locations.}
#   \item{verbose}{If @TRUE, extra information is written while reading.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @list structure.
# }
#
# @examples "../incl/readWindowsShellLink.Rex"
#
# \details{
#  This function is implemented based on the official file format
#  specification [1].
#  It is intended to replace @see "readWindowsShortcut", which was
#  written based on reverse engineering (before [1] was made available).
# }
#
# @author
#
# \seealso{
#   @see "readWindowsShortcut"
#   \code{\link{filePath}}
# }
#
# \references{
#   [1] [MS-SHLLINK]: Shell Link (.LNK) Binary File Format, Microsoft Inc.,
#       September 25, 2009. \cr
# }
#
# @keyword file
# @keyword IO
# @keyword internal
#*/###########################################################################
setMethodS3("readWindowsShellLink", "default", function(con, clean=TRUE, verbose=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Local functions
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  intToBits <- function(x, n=NULL, names=NULL, rev=TRUE, ...) {
    # Argument 'x':
    stopifnot(is.integer(x));
    stopifnot(length(x) == 1L);

    # Argument 'n':
    if (!is.null(n)) {
      stopifnot(n > 0L);
    }

    # Argument 'names':
    if (!is.null(names)) {
      stopifnot(is.character(names));
      if (!is.null(n)) {
        stopifnot(length(names) == n);
      }
      n <- length(names);
    }

    # Get binary represenation
    x <- intToBin(x);
    x <- unlist(strsplit(x, split=""), use.names=FALSE);
    stopifnot(length(x) <= n);
    x <- as.integer(x);
    x <- as.logical(x);
    x <- c(rep(FALSE, times=n-length(x)), x);
    stopifnot(length(x) == n);
    if (!is.null(names)) {
      x <- rev(x);
      names(x) <- names;
      x <- rev(x);
    }
    if (rev) {
      x <- rev(x);
    }
    x;
  } # intToBits()

  readBits <- function(con, n=32L, ...) {
    stopifnot(n %% 8 == 0);
    nbrOfBytes <- n %/% 8L;
    if (nbrOfBytes <= 2L) {
      x <- readBin(con=con, what=integer(), size=nbrOfBytes, n=1L, signed=FALSE, endian="little");
    } else {
      x <- readBin(con=con, what=integer(), size=nbrOfBytes, n=1L, endian="little");
    }
    intToBits(x, n=n);
  } # readBits()

  # raw - An 1-byte unsigned integer
  readRaw <- function(con, n=1) {
    readBin(con=con, what=raw(), n=n);
  }

  # byte - An 1-byte unsigned integer
  readByte <- function(con, n=1) {
    readBin(con=con, what=integer(), size=1L, n=n,
                                            signed=FALSE, endian="little");
  }

  # word - A 2-byte unsigned integer
  readWord <- function(con, n=1) {
    readBin(con=con, what=integer(), size=2L, n=n,
                                            signed=FALSE, endian="little");
  }

  # qword - A 4-byte unsigned integer (actually as signed integer)
  readDWord <- function(con, n=1) {
    readBin(con=con, what=integer(), size=4L, n=n,
                                            signed=TRUE, endian="little");
  }

  # qword - An 8-byte unsigned integer (actually as signed integer)
  readQWord <- function(con, n=1) {
    readBin(con=con, what=integer(), size=4L, n=2*n,
                                            signed=TRUE, endian="little");
  }

  readString <- function(con, nchars=-1L, unicoded=FALSE) {
    if (nchars == -1) {
      bfr <- c();
      while ((byte <- readByte(con)) != 0L) {
        bfr <- c(bfr, byte);
      }
    } else {
      if (unicoded)
        nchars <- 2L*nchars;
      bfr <- readByte(con, n=nchars);
    }

    # Since R does not support Unicoded strings, we (incorrectly) assume
    # (=hope) that it is only the unicode characters 0:255 that are used.
    if (unicoded)
      bfr <- bfr[bfr != 0];

    paste(intToChar(bfr), collapse="");
  } # readString()


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # From [7]:
  # The Shell Link Binary File Format consists of a sequence of structures
  # that conform to the following ABNF rules [RFC5234]:
  #
  # SHELL_LINK = SHELL_LINK_HEADER [LINKTARGET_IDLIST] [LINKINFO]
  #             [STRING_DATA] *EXTRA_DATA
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # The ShellLinkHeader structure contains identification information,
  # timestamps, and flags that specify the presence of optional structures,
  # including LinkTargetIdList (section 2.2), LinkInfo (section 2.3),
  # and StringData (section 2.4).
  #
  # [SHELL_LINK_HEADER] =
  #   HeaderSize (4 bytes):
  #     The size, in bytes, of this structure. MUST be 0x0000004C.
  #   LinkCLSID (16 bytes):
  #     A class identifier (CLSID). MUST be 00021401-0000-0000-C000-000000000046.
  #   LinkFlags (4 bytes):
  #     A LinkFlags structure (section 2.1.1) that specifies information about
  #     the shell link and the presence of optional portions of the structure.
  #   FileAttributes (4 bytes):
  #     A FileAttributesFlags structure (section 2.1.2) that specifies
  #     information about the link target.
  #   CreationTime (8 bytes):
  #     A FILETIME structure ([MS-DTYP] section 2.3.1) that specifies the
  #     creation time of the link target in UTC (Coordinated Universal Time).
  #     If the value is zero, there is no creation time set on the link target.
  #   AccessTime (8 bytes):
  #     A FILETIME structure ([MS-DTYP] section 2.3.1) that specifies the
  #     access time of the link target in UTC (Coordinated Universal Time).
  #     If the value is zero, there is no access time set on the link target.
  #   WriteTime (8 bytes):
  #     A FILETIME structure ([MS-DTYP] section 2.3.1) that specifies the
  #     write time of the link target in UTC (Coordinated Universal Time).
  #     If the value is zero, there is no write time set on the link target.
  #   FileSize (4 bytes):
  #     A 32-bit unsigned integer that specifies the size, in bytes,
  #     of the link target.  If the link target file is larger than
  #     0xFFFFFFFF, this value specifies the least significant 32 bits
  #     of the link target file size.
  #   IconIndex (4 bytes);
  #     A 32-bit signed integer that specifies the index of an icon
  #     within a given icon location.
  #   ShowCommand (4 bytes):
  #     A 32-bit unsigned integer that specifies the expected window state
  #     of an application launched by the link. This value SHOULD be one
  #     of the following.
  #      SW_SHOWNORMAL = 0x00000001
  #       The application is open and its window is open in a normal fashion.
  #      SW_SHOWMAXIMIZED = 0x00000003
  #       The application is open, and keyboard focus is given to the
  #       application, but its window is not shown.
  #      SW_SHOWMINNOACTIVE = 0x00000007
  #       The application is open, but its window is not shown. It is not
  #       given the keyboard focus.
  #   HotKey (2 bytes):
  #     A HotKeyFlags structure (section 2.1.3) that specifies the keystrokes
  #     used to launch the application referenced by the shortcut key. This
  #     value is assigned to the application after it is launched, so that
  #     pressing the key activates that application.
  #   Reserved1 (2 bytes):  A value that MUST be zero.
  #   Reserved2 (4 bytes):  A value that MUST be zero.
  #   Reserved3 (4 bytes):  A value that MUST be zero.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  parseLinkFlags <- function(flags, ...) {
    keys <- character(length=27L);
    keys[ 1] <- "HasLinkTargetIdList";
    keys[ 2] <- "HasLinkInfo";
    keys[ 3] <- "HasName";
    keys[ 4] <- "HasRelativePath";
    keys[ 5] <- "HasWorkingDir";
    keys[ 6] <- "HasArguments";
    keys[ 7] <- "HasIconLocation";
    keys[ 8] <- "IsUnicode";
    keys[ 9] <- "ForceNoLinkInfo";
    keys[10] <- "HasExpString";
    keys[11] <- "RunInSeparateProcess";
    keys[12] <- "Unused1";
    keys[13] <- "HasDarwinId";
    keys[14] <- "RunAsUser";
    keys[15] <- "HasExpIcon";
    keys[16] <- "NoPidlAlias";
    keys[17] <- "Unused2";
    keys[18] <- "RunWithShimLayer";
    keys[19] <- "ForceNoLinkTrack";
    keys[20] <- "EnableTargetMetadata";
    keys[21] <- "DisableLinkPathTracking";
    keys[22] <- "DisableKnownFolderTracking";
    keys[23] <- "DisableKnownFolderAlias";
    keys[24] <- "AllowLinkToLink";
    keys[25] <- "UnaliasOnSave";
    keys[26] <- "PreferEnvironmentPath";
    keys[27] <- "KeepLocalIdListForUNCTarget";
    flags <- intToBits(flags, names=keys);

    # Validation
    stopifnot(flags["IsUnicode"]);

    flags;
  } # parseLinkFlags()


  parseFileAttributes <- function(attrs, ...) {
    keys <- character(length=15L);
    keys[ 1] <- "readOnly";
    keys[ 2] <- "hidden";
    keys[ 3] <- "system";
    keys[ 4] <- "reserved1";
    keys[ 5] <- "directory";
    keys[ 6] <- "archive";
    keys[ 7] <- "reserved2";
    keys[ 8] <- "normal";
    keys[ 9] <- "temporary";
    keys[10] <- "sparseFile";
    keys[11] <- "reparsePoint";
    keys[12] <- "compressed";
    keys[13] <- "offline";
    keys[14] <- "notContentIndexed";
    keys[15] <- "encrypted";
    attrs <- intToBits(attrs, names=keys);

    # Validate
    keys <- c("reserved1", "reserved2");
    for (key in keys) {
      if (attrs[key] != 0L) {
        stop(sprintf("File format error: File header field 'fileAttributes' flag '%s' must be FALSE: %d", key, attrs[key]));
      }
    }
    if (attrs["normal"] && sum(attrs) != 1L) {
      stop(sprintf("File format error: File header field 'fileAttributes' flag 'normal' is set, but still detected %d other flags also being set.", sum(attrs)-1L));
    }

    attrs;
  } # parseFileAttributes()

  parseShowCommand <- function(showCommand, ...) {
    # Argument 'showCommand':
    stopifnot(is.integer(showCommand));
    stopifnot(length(showCommand) == 1L);
    showCommand;
  } # parseShowCommand()

  parseHotKey <- function(hotKey, ...) {
    # Argument 'hotKey':
    stopifnot(is.integer(hotKey));
    stopifnot(length(hotKey) == 1L);

    # Get binary represenation
    lowByte <- hotKey %% 256L;
    highByte <- hotKey %/% 256L;

    if (highByte < 0L || highByte > 7L) {
      stop(sprintf("File format error: File header field 'hotKey' has a 'highByte' out of range [0x00,0x07]: %d", highByte));
    }

    hotKey <- c(lowByte=lowByte, highByte=highByte);

    hotKey;
  } # parseHotKey()


  readShellLinkHeader <- function(con, ...) {
    hdr <- list(
      headerSize       = readDWord(con),      #   4 bytes
      linkCLSID        = readRaw(con, n=16),  #  16 bytes
      linkFlags        = readDWord(con),      #   4 bytes = 32 bits
      fileAttributes   = readDWord(con),      #   4 bytes = 32 bits
      creationTime     = readQWord(con),      #   8 bytes
      accessTime       = readQWord(con),      #   8 bytes
      writeTime        = readQWord(con),      #   8 bytes
      fileSize         = readDWord(con),      #   4 bytes
      iconIndex        = readDWord(con),      #   4 bytes
      showCommand      = readDWord(con),      #   4 bytes
      hotKey           = readWord(con),       #   2 bytes
      reserved1        = readWord(con),       #   2 bytes
      reserved2        = readDWord(con),      #   4 bytes
      reserved3        = readDWord(con)       #   4 bytes
    );                                        # =76 bytes total

    # Validate
    if (hdr$headerSize != 76L) {
      stop("File format error: Shell link header size is not 76 bytes (0x0000004C): ", hdr$headerSize);
    }

    # Validate
    knownCLSID <- as.raw(c(0x01, 0x14, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46));
    if (!all.equal(hdr$linkCLSID, knownCLSID)) {
      knownCLSID <- paste(sprintf("%02x", as.integer(knownCLSID)), collapse=",");
      linkCLSID <- paste(sprintf("%02x", as.integer(hdr$linkCLSID)), collapse=",");
      stop("File format error: Shell link header has an unknown CLSID: ", knownCLSID, " != ", linkCLSID);
    }

    # Parse (and validate)
    hdr$linkFlags <- parseLinkFlags(hdr$linkFlags);

    # Parse (and validate)
    hdr$fileAttributes <- parseFileAttributes(hdr$fileAttributes);

    parseFileTime <- function(time, ...) {
      offset <- as.POSIXlt("1601-01-01");
      timeD <- as.double(time);
      timeD <- c(1, 2^32)*timeD;
      timeD <- sum(timeD);
      secs <- 1.0e-7*timeD;
      time <- offset + secs;
      time;
    } # parseFileTime()
    hdr$creationTime <- parseFileTime(hdr$creationTime);
    hdr$accessTime <- parseFileTime(hdr$accessTime);
    hdr$writeTime <- parseFileTime(hdr$writeTime);

    if (hdr$linkFlags["HasLinkInfo"]) {
      attrs <- hdr$fileAttributes;
#      attrs <- names(attrs[attrs]);
#      if (length(attrs) > 0L) {
#        stop("File format error: When shortcut is not pointing to a file or a directory no other file attributes should be set: ", paste(attrs, collapse=", "));
#      }
    }

    # Validate
    if (hdr$fileSize < 0L) {
      stop("File format error: File length is negative: ", header$fileLength);
    }

    # Parse (and validate)
    hdr$showCommand <- parseShowCommand(hdr$showCommand);

    # Parse (and validate)
    hdr$hotKey <- parseHotKey(hdr$hotKey);

    # Validate
    keys <- c("reserved1", "reserved2", "reserved3");
    for (key in keys) {
      if (hdr[[key]] != 0L) {
        stop(sprintf("File format error: File header field '%s' must be 0: %d", key, hdr[[key]]));
      }
    }
    if (clean) {
      hdr$headerSize <- NULL;
    }

    hdr;
  } # readShellLinkHeader()


  readLinkTargetIdList <- function(con, ...) {
    readIdList <- function(con, n) {
      stopifnot(n >= 2L);
      raw <- readRaw(con, n=n);
      terminalId <- raw[(n-1L):n];
      stopifnot(all(terminalId == 0L));
      raw <- raw[1:(n-2L)];

      # Parse 'itemIdList' into list of 'ItemId':s
      itemIdList <- list();
      idx <- 1L;
      while(length(raw) > 0L) {
        stopifnot(length(raw) >= 2L);
        itemIdSize <- readWord(raw);
        raw <- raw[-(1:2)];
        nbrOfBytesToRead <- itemIdSize - 2L;
        if (nbrOfBytesToRead > 0L) {
          stopifnot(length(raw) >= nbrOfBytesToRead);
          Data <- readRaw(raw, n=nbrOfBytesToRead);
          itemIdList[[idx]] <- Data;
          raw <- raw[-(1:nbrOfBytesToRead)];
        } else {
          Data <- raw(length=0L);
        }
        itemIdList[[idx]] <- Data;
        idx <- idx + 1L;
      } # while()

      # Sanity check
      stopifnot(length(raw) == 0L);

##      itemIdList <- lapply(itemIdList, FUN=rawToChar);
      idList <- list(itemIdList=itemIdList, terminalId=terminalId);
      if (clean) {
        idList$terminalId <- NULL;
      }
      idList;
    } # readIdList()

    idListSize <- readWord(con);
    idList <- readIdList(con, n=idListSize);
  } # readLinkTargetIdList()


  readLinkInfo <- function(con, ...) {
    parseLinkInfoFlags <- function(flags, ...) {
      keys <- character(length=2L);
      keys[1] <- "VolumeIdAndLocalBasePath";
      keys[2] <- "CommonNetworkRelativeLinkAndPathSuffix";
      flags <- intToBits(flags, names=keys);
      flags;
    } # parseLinkInfoFlags()

    readVolumeId <- function(con, ...) {
      id <- list(
        volumeIdSize      = readDWord(con), # 4 bytes
        driveType         = readDWord(con), # 4 bytes
        driveSerialNumber = readDWord(con), # 4 bytes
        volumeLabelOffset = readDWord(con)  # 4 bytes
      );

      nbrOfBytesRead <- 4*4L;

      stopifnot(id$volumeIdSize > 0x00000010);
      stopifnot(id$volumeLabelOffset >= 0L);
      stopifnot(id$volumeLabelOffset < id$volumeIdSize);
      stopifnot(id$driveType >= 0L);
      stopifnot(id$driveType <= 6L);

      if (id$volumeLabelOffset == 0x00000014) {
        id$volumeLabelOffsetUnicode <- readDWord(con);
        nbrOfBytesRead <- nbrOfBytesRead + 4L;
        offset <- id$volumeLabelOffsetUnicode;
      } else {
        offset <- id$volumeLabelOffset;
      }

      id$data <- readRaw(con, n=id$volumeIdSize-nbrOfBytesRead);
      offset <- offset - nbrOfBytesRead;
      nbrOfBytesRead <- nbrOfBytesRead + length(id$data);

      # Parse the volume label
      data <- id$data;
      if (offset > 0L) {
        data <- data[-c(1:offset)];
      }
      n <- which(data == as.raw(0x0))-1L;
      if (n < length(data)) {
        data <- data[1:n];
      }
      id$volumeLabel <- rawToChar(data);

      # Sanity check
      stopifnot(nbrOfBytesRead == id$volumeIdSize);

      id;
    } # readVolumeId()

    info <- list(
      size                    = readDWord(con), # 4 bytes
      headerSize              = readDWord(con), # 4 bytes
      flags                           = readDWord(con), # 4 bytes = 32 bits
      volumeIdOffset                  = readDWord(con), # 4 bytes
      localBasePathOffset             = readDWord(con), # 4 bytes
      commonNetworkRelativeLinkOffset = readDWord(con), # 4 bytes
      commonPathSuffixOffset          = readDWord(con)  # 4 bytes
    );
    nbrOfBytesRead <- 7*4L;

    stopifnot(info$size >= 0L);
    stopifnot(info$headerSize >= 0L);
    stopifnot(info$headerSize < info$size);
    stopifnot(info$volumeIdOffset < info$size);
    stopifnot(info$localBasePathOffset < info$size);
    stopifnot(info$commonNetworkRelativeLinkOffset < info$size);
    stopifnot(info$commonPathSuffixOffset < info$size);

    info$flags <- parseLinkInfoFlags(info$flags);

    # Validate
    if (info$flags["VolumeIdAndLocalBasePath"]) {
    } else {
      # Sanity checks
      stopifnot(info$volumeIdOffset == 0L);
      stopifnot(info$localBasePathOffset == 0L);
      if (info$headerSize >= 0x00000024) {
        stopifnot(info$localBasePathOffsetUnicode == 0L);
      }
    }

    # Validate
    if (info$flags["CommonNetworkRelativeLinkAndPathSuffix"]) {
    } else {
      # Sanity checks
      stopifnot(info$commonNetworkRelativeLinkOffset == 0L);
    }

    # LocalBasePathOffsetUnicode (optional)
    if (info$headerSize >= 0x00000024) {
      info$localBasePathOffsetUnicode <- readDWord(con);
      nbrOfBytesRead <- nbrOfBytesRead + 4L;
      # Sanity check
      if (info$flags["VolumeIdAndLocalBasePath"]) {
        stopifnot(info$localBasePathOffsetUnicode >= 0L);
      } else {
        stopifnot(info$localBasePathOffsetUnicode == 0L);
      }
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # CommonPathSuffixOffsetUnicode (optional)
    if (info$headerSize >= 0x00000024) {
      info$commonPathSuffixOffsetUnicode <- readDWord(con);
      nbrOfBytesRead <- nbrOfBytesRead + 4L;
      # Sanity check
      if (info$flags["VolumeIdAndLocalBasePath"]) {
        stopifnot(info$commonPathSuffixOffsetUnicode >= 0L);
      } else {
        stopifnot(info$commonPathSuffixOffsetUnicode == 0L);
      }
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # VolumeId (variable)
    if (info$flags["VolumeIdAndLocalBasePath"]) {
      offset <- info$volumeIdOffset - nbrOfBytesRead;
      stopifnot(offset >= 0L);
      if (offset > 0L) {
        readRaw(con, n=offset);
        nbrOfBytesRead <- nbrOfBytesRead + offset;
      }
      id <- readVolumeId(con);
      nbrOfBytesRead <- nbrOfBytesRead + id$volumeIdSize;
      if (clean) {
        id$volumeIdSize <- NULL;
        id$volumeLabelOffset <- NULL;
      }
      info$volumeId <- id;
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # LocalBasePath (variable)
    if (info$flags["VolumeIdAndLocalBasePath"]) {
      offset <- info$localBasePathOffset;
      stopifnot(offset >= 0L);
      if (offset > 0L) {
        offset <- offset - nbrOfBytesRead;
        stopifnot(offset >= 0L);
        if (offset > 0L) {
          readRaw(con, n=offset);
          nbrOfBytesRead <- nbrOfBytesRead + offset;
        }
        nextOffset <- info$commonNetworkRelativeLinkOffset;
        if (nextOffset == 0L || is.null(nextOffset)) {
          nextOffset <- info$commonPathSuffixOffset;
          if (nextOffset == 0L || is.null(nextOffset)) {
            stop("XXX");
          }
        }
        n <- nextOffset - nbrOfBytesRead;
        localBasePath <- readRaw(con, n=n);
        nbrOfBytesRead <- nbrOfBytesRead + n;
        info$localBasePath <- rawToChar(localBasePath);
      }
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # CommonNetworkRelativeLink (variable)
    if (info$flags["CommonNetworkRelativeLinkAndPathSuffix"]) {
      readCommonNetworkRelativeLink <- function(con, ...) {
        parseCommonNetworkRelativeLinkFlags <- function(x, ...) {
          keys <- c("ValidDevice", "ValidNetType");
          x <- intToBits(x, names=keys);
          x;
        } # parseCommonNetworkRelativeLinkFlags()

        link <- list(
          size  = readDWord(con), # 4 bytes
          flags = readDWord(con), # 4 bytes
          netNameOffset                  = readDWord(con), # 4 bytes
          deviceNameOffset               = readDWord(con), # 4 bytes
          networkProviderType            = readDWord(con)  # 4 bytes
        );
        # Validate
        stopifnot(link$size >= 0x00000014);
        stopifnot(link$netNameOffset >= 0L);
        stopifnot(link$deviceNameOffset >= 0L);

        nbrOfBytesRead <- 5*4L;

        link$flags <- parseCommonNetworkRelativeLinkFlags(link$flags);

        if (!link$flags["ValidDevice"]) {
           stopifnot(link$deviceNameOffset == 0L);
        }

        if (!link$flags["ValidNetType"]) {
           stopifnot(link$netProviderType == 0L);
        }

        if (link$netNameOffset > 0x00000014) {
          link$netNameOffsetUnicode <- readDWord(con);
          nbrOfBytesRead <- nbrOfBytesRead + 4L;
          stopifnot(link$netNameOffsetUnicode >= 0L);

          link$deviceNameOffsetUnicode <- readDWord(con);
          nbrOfBytesRead <- nbrOfBytesRead + 4L;
          stopifnot(link$deviceNameOffsetUnicode >= 0L);
        }

        # NetName (variable)
        nextOffset <- link$deviceNameOffset;
        if (nextOffset == 0L) {
          nextOffset <- link$netNameOffsetUnicode;
          if (is.null(nextOffset)) {
            nextOffset <- link$deviceNameOffsetUnicode;
            if (is.null(nextOffset)) {
              nextOffset <- link$size + 1L;
            }
          }
        }
        stopifnot(!is.null(nextOffset));
        offset <- link$netNameOffset - nbrOfBytesRead;
        stopifnot(offset >= 0L);
        if (offset > 0L) {
          readRaw(con, n=offset);
          nbrOfBytesRead <- nbrOfBytesRead + offset;
        }
        n <- nextOffset - nbrOfBytesRead - 1L;
        netName <- readRaw(con, n=n);
        nbrOfBytesRead <- nbrOfBytesRead + n;
        link$netName <- rawToChar(netName);

        # DeviceName (variable)
        if (link$flags["ValidDevice"]) {
          nextOffset <- link$netNameOffsetUnicode;
          if (is.null(nextOffset)) {
            nextOffset <- link$deviceNameOffsetUnicode;
            if (is.null(nextOffset)) {
              nextOffset <- link$size + 1L;
            }
          }
          stopifnot(!is.null(nextOffset));
          offset <- link$deviceNameOffset - nbrOfBytesRead;
          stopifnot(offset >= 0L);
          if (offset > 0L) {
            readRaw(con, n=offset);
            nbrOfBytesRead <- nbrOfBytesRead + offset;
          }
          n <- nextOffset - nbrOfBytesRead - 1L;
          netName <- readRaw(con, n=n);
          nbrOfBytesRead <- nbrOfBytesRead + n;
          link$deviceName <- rawToChar(netName);
        }

        # NetNameOffsetUnicode (variable)
        if (!is.null(link$netNameOffsetUnicode)) {
          nextOffset <- link$deviceNameOffsetUnicode;
          if (is.null(nextOffset)) {
            nextOffset <- link$size + 1L;
          }
          stopifnot(!is.null(nextOffset));
          offset <- link$netNameOffsetUnicode - nbrOfBytesRead;
          stopifnot(offset >= 0L);
          if (offset > 0L) {
            readRaw(con, n=offset);
            nbrOfBytesRead <- nbrOfBytesRead + offset;
          }
          n <- nextOffset - nbrOfBytesRead - 1L;
          netName <- readRaw(con, n=n);
          nbrOfBytesRead <- nbrOfBytesRead + n;
          link$netNameOffsetUnicode <- rawToChar(netName);
        }

        # DeviceNameOffsetUnicode (variable)
        if (!is.null(link$deviceNameOffsetUnicode)) {
          nextOffset <- link$size + 1L;
          stopifnot(!is.null(nextOffset));
          offset <- link$deviceNameOffsetUnicode - nbrOfBytesRead;
          stopifnot(offset >= 0L);
          if (offset > 0L) {
            readRaw(con, n=offset);
            nbrOfBytesRead <- nbrOfBytesRead + offset;
          }
          n <- nextOffset - nbrOfBytesRead - 1L;
          value <- readRaw(con, n=n);
          nbrOfBytesRead <- nbrOfBytesRead + n;
          link$deviceNameOffsetUnicode <- rawToChar(value);
        }

        link;
      } # readCommonNetworkRelativeLink();

      offset <- info$commonNetworkRelativeLinkOffset - nbrOfBytesRead;
      stopifnot(offset >= 0L);
      if (offset > 0L) {
        readRaw(con, n=offset);
        nbrOfBytesRead <- nbrOfBytesRead + offset;
      }
      info$commonNetworkRelativeLink <- readCommonNetworkRelativeLink(con);
      n <- info$commonNetworkRelativeLink$size;
      nbrOfBytesRead <- nbrOfBytesRead + n;
      if (clean) {
        info$commonNetworkRelativeLink$flags <- NULL;
        info$commonNetworkRelativeLink$size <- NULL;
        info$commonNetworkRelativeLink$netNameOffset <- NULL;
        info$commonNetworkRelativeLink$deviceNameOffset <- NULL;
      }
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # CommonPathSuffix (variable)
    offset <- info$commonPathSuffixOffset;
    if (!is.null(offset) && (offset < info$size)) {
      offset <- offset - nbrOfBytesRead;
      stopifnot(offset >= 0L);
      if (offset > 0L) {
        readRaw(con, n=offset);
        nbrOfBytesRead <- nbrOfBytesRead + offset;
      }
      nextOffset <- info$localBasePathUnicode;
      if (is.null(nextOffset)) {
        nextOffset <- info$commonPathSuffixUnicode;
        if (is.null(nextOffset)) {
          nextOffset <- info$size + 1L;
        }
      }
      stopifnot(!is.null(nextOffset));
      n <- nextOffset - nbrOfBytesRead - 1L;
      value <- readRaw(con, n=n);
      nbrOfBytesRead <- nbrOfBytesRead + n;
      info$commonPathSuffix <- rawToChar(value);
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # LocalBasePathUnicode (variable)
    offset <- info$localBasePathOffsetUnicode;
    if (!is.null(offset) && (offset < info$size)) {
      offset <- offset - nbrOfBytesRead;
      stopifnot(offset >= 0L);
      if (offset > 0L) {
        readRaw(con, n=offset);
        nbrOfBytesRead <- nbrOfBytesRead + offset;
      }
      nextOffset <- info$commonPathSuffixUnicode;
      if (is.null(nextOffset)) {
        nextOffset <- info$size + 1L;
      }
      stopifnot(!is.null(nextOffset));
      n <- nextOffset - nbrOfBytesRead - 1L;
      value <- readRaw(con, n=n);
      nbrOfBytesRead <- nbrOfBytesRead + n;
      info$localBasePathUnicode <- rawToChar(value);
    }
    stopifnot(nbrOfBytesRead <= info$size);

    # CommonPathSuffixUnicode (variable)
    offset <- info$commonPathOffsetUnicode;
    if (!is.null(offset) && (offset < info$size)) {
      offset <- offset - nbrOfBytesRead;
      stopifnot(offset >= 0L);
      if (offset > 0L) {
        readRaw(con, n=offset);
        nbrOfBytesRead <- nbrOfBytesRead + offset;
      }
      nextOffset <- info$size + 1L;
      n <- nextOffset - nbrOfBytesRead - 1L;
      value <- readRaw(con, n=n);
      nbrOfBytesRead <- nbrOfBytesRead + n;
      info$commonPathSuffixUnicode <- rawToChar(value);
    }
    stopifnot(nbrOfBytesRead <= info$size);

    stopifnot(nbrOfBytesRead == info$size);

    if (clean) {
      info$size <- NULL;
      info$flags <- NULL;
      info$headerSize <- NULL;
      info$volumeIdOffset <- NULL;
      info$localBasePathOffset <- NULL;
      info$commonNetworkRelativeLinkOffset <- NULL;
      info$commonPathSuffixOffset <- NULL;
    }

    info;
  } # readLinkInfo()


  readStringData <- function(con, ...) {
    data <- list(
      countCharacters = readWord(con) # 2 bytes
    );
    value <- readRaw(con, n=2*data$countCharacters);
    value <- matrix(value, nrow=2L);
    value <- value[1L,];
    value <- rawToChar(value);
    data$string <- value;
    stopifnot(nchar(data$string) == data$countCharacters);
    if (clean) {
      data <- data$string;
    }
    data;
  } # readStringData()


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
  lnk <- list();

  lnk$header <- readShellLinkHeader(con);
  if (verbose) {
    message("File header read:");
    message(paste(capture.output(lnk$header), collapse="\n"));
  }

  if (lnk$header$linkFlags["HasLinkTargetIdList"]) {
    lnk$idList <- readLinkTargetIdList(con);
  }

  if (lnk$header$linkFlags["HasLinkInfo"]) {
    lnk$linkInfo <- readLinkInfo(con);
  }

  keys <- c("HasName", "HasRelativePath", "HasWorkingDir", "HasArguments", "HasIconLocation");
  if (any(lnk$header$linkFlags[keys])) {
    lnk$stringData <- list();
    stringData <- list();
    if (lnk$header$linkFlags["HasName"]) {
      stringData$name <- readStringData(con);
    }
    if (lnk$header$linkFlags["HasRelativePath"]) {
      stringData$relativePath <- readStringData(con);
    }
    if (lnk$header$linkFlags["HasWorkingDir"]) {
      stringData$workingDir <- readStringData(con);
    }
    if (lnk$header$linkFlags["HasArguments"]) {
      stringData$commandLineArguments <- readStringData(con);
    }
    if (lnk$header$linkFlags["HasIconLocation"]) {
      stringData$iconLocation <- readStringData(con);
    }
    lnk$stringData <- stringData;
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # For convenience
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  key <- "relativePath";
  if (is.element(key, names(lnk$stringData))) {
    value <- lnk$stringData[[key]];
    if (!clean) {
      value <- value$data;
    }
    lnk$relativePathname <- value;
  }

  key <- "localBasePath";
  if (is.element(key, names(lnk$linkInfo))) {
    path <- lnk$linkInfo[[key]];
    lnk$pathname <- file.path(path, lnk$linkInfo$commonPathSuffix, fsep="");
  }

  key <- "commonNetworkRelativeLink";
  if (is.element(key, names(lnk$linkInfo))) {
    path <- lnk$linkInfo[[key]]$netName;
    lnk$networkPathname <- file.path(path, lnk$linkInfo$commonPathSuffix, fsep="\\");
  }

  lnk;
}) # readWindowsShellLink()


#############################################################################
# HISTORY:
# 2012-10-29
# o Updated Rdoc help.
# 2012-10-28
# o Created.
#############################################################################
