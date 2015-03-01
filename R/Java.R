###########################################################################/**
# @RdocClass Java
#
# @title "Static class for Java related methods"
#
# \description{
#  @classhierarchy
#
#  Static class that provides methods for reading and writing Java data types.
#  Currently the following data types are supported: byte, short and int.
#  R character strings can be written as UTF-8 formatted strings, which can
#  be read by Java. Currently on Java String's that contain ASCII characters
#  can be imported into \R. The reason for this is that other characters are
#  translated into non-eight bits data, e.g. 16- and 24-bits, which the
#  readChar() method currently does not support.\cr
#
#  Furthermore, the Java class defines some static constants describing the
#  minimum and maximum value of some of the common Java data types:
#    \code{BYTE.MIN}, \code{BYTE.MAX}
#    \code{SHORT.MIN}, \code{SHORT.MAX}
#    \code{INT.MIN}, \code{INT.MAX}
#    \code{LONG.MIN}, and \code{LONG.MAX}.
# }
#
# @synopsis
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# @examples "../incl/Java.Rex"
#
# @author
#*/###########################################################################
setConstructorS3("Java", function() {
  extend(Object(), "Java",
    BYTE.MIN  = -128,                  # -2^7
    BYTE.MAX  =  127,                  #  2^7-1
    SHORT.MIN = -32768,                # -2^15
    SHORT.MAX =  32767,                #  2^15-1
    INT.MIN   = -2147483648,           # -2^31
    INT.MAX   =  2147483647,           #  2^31-1
    LONG.MIN  = -9223372036854775808,  # -2^63
    LONG.MAX  =  9223372036854775807   #  2^63-1
  )
}, static=TRUE)





#########################################################################/**
# @RdocMethod writeByte
#
# @title "Writes a byte (8 bits) to a connection in Java format"
#
# \description{
#   Writes one or several byte's (8 bits) to a connection in Java
#   format so they will be readable by Java.
#   All data types in Java are signed, i.e. a byte can hold a value in
#   the range [-128,127]. Trying to write a value outside this range
#   will automatically be truncated without a warning.
# }
#
# @synopsis
#
# \arguments{
#   \item{con}{Binary connection to be written to.}
#   \item{b}{Vector of bytes to be written.}
# }
#
# \details{
#   This method is included for consistency reasons only.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("writeByte", "Java", function(static, con, b, ...) {
  writeBin(con=con, as.integer(b), size=1);
}, static=TRUE);






#########################################################################/**
# @RdocMethod writeShort
#
# @title "Writes a short (16 bits) to a connection in Java format"
#
# \description{
#   Writes one or several short's (16 bits) to a connection in Java
#   format so they will be readable by Java.
#   All data types in Java are signed, i.e. a byte can hold a value in
#   the range [-32768,32767]. Trying to write a value outside this range
#   will automatically be truncated without a warning.
# }
#
# @synopsis
#
# \arguments{
#   \item{con}{Binary connection to be written to.}
#   \item{s}{Vector of shorts to be written.}
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("writeShort", "Java", function(static, con, s, ...) {
   writeBin(con=con, as.integer(s), size=2, endian="big");
}, static=TRUE)





#########################################################################/**
# @RdocMethod writeInt
#
# @title "Writes a integer (32 bits) to a connection in Java format"
#
# \description{
#   Writes one or several integer's (32 bits) to a connection in Java
#   format so they will be readable by Java.
#   All data types in Java are signed, i.e. a byte can hold a value in
#   the range [-2147483648,2147483647]. Trying to write a value outside
#   this range will automatically be truncated without a warning.
# }
#
# @synopsis
#
# \arguments{
#   \item{con}{Binary connection to be written to.}
#   \item{i}{Vector of integers to be written.}
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("writeInt", "Java", function(static, con, i, ...) {
   i <- matrix(i, nrow=1);
   bfr <- apply(i, MARGIN=2, FUN=function(x) {
     c(x %/% 256^3, x %/% 256^2, x %/% 256, x %% 256);
   })
   bfr <- as.vector(bfr);
   writeBin(con=con, as.integer(bfr), size=1);
}, static=TRUE)




#########################################################################/**
# @RdocMethod writeUTF
#
# @title "Writes a string to a connection in Java format (UTF-8)"
#
# \description{
#   @get "title"
#   so it will be readable by Java. At the beginning of each UTF-8 sequence
#   there is a short integer telling how many bytes (characters?) follows.
# }
#
# @synopsis
#
# \arguments{
#   \item{con}{Binary connection to be written to.}
#   \item{str}{String to be written.}
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("writeUTF", "Java", function(static, con, str, ...) {
   str <- as.character(str);
   writeShort(static, con=con, nchar(str));
   writeChar(con=con, str, eos=NULL);
}, static=TRUE)


#########################################################################/**
# @RdocMethod readByte
#
# @title "Reads a Java formatted byte (8 bits) from a connection"
#
# \description{
#   Reads one or several Java formatted byte's (8 bits) from a connection.
#   All data types in Java are signed, i.e. a byte can hold a value in
#   the range [-128,127].
# }
#
# @synopsis
#
# \arguments{
#  \item{con}{Binary connection to be read from.}
#  \item{n}{Number of byte's to be read.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector.
# }
#
# \details{
#   This method is included for consistency reasons only.
# }
#
# @author
#
# \seealso{
#   @see "base::readBin".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("readByte", "Java", function(static, con, n=1, ...) {
   as.integer(readBin(con=con, what=integer(), size=1, n=n));
}, static=TRUE)





#########################################################################/**
# @RdocMethod readShort
#
# @title "Reads a Java formatted short (16 bits) from a connection"
#
# \description{
#   Reads one or several Java formatted short's (16 bits) from a connection.
#   All data types in Java are signed, i.e. a byte can hold a value in
#   the range [-32768,32767].
# }
#
# @synopsis
#
# \arguments{
#  \item{con}{Binary connection to be read from.}
#  \item{n}{Number of short's to be read.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector.
# }
#
# @author
#
# \seealso{
#   @see "base::readBin".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("readShort", "Java", function(static, con, n=1, ...) {
# From java.io.DataOutput.writeShort():
#  The byte values to be written, in the order shown, are:
#   (byte)(0xff & (v >> 8))
#   (byte)(0xff & v)
#  readBin(con=con, what=integer(), size=2, n=n, endian="big");
  bfr <- readBin(con=con, what=integer(), size=1, n=2*n, signed=FALSE);
  bfr <- matrix(bfr, ncol=2, byrow=TRUE);
  bfr[,1] <-   bfr[,1]*256;
  bfr <- rowSums(bfr);
  neg <- (bfr >= 2^15)
  bfr[neg] <- bfr[neg] - 2^16;
  as.integer(bfr);
}, static=TRUE)



#########################################################################/**
# @RdocMethod readInt
#
# @title "Reads a Java formatted int (32 bits) from a connection"
#
# \description{
#   Reads one or several Java formatted int's (32 bits) from a connection.
#   All data types in Java are signed, i.e. a byte can hold a value in
#   the range [-2147483648,2147483647].
# }
#
# @synopsis
#
# \arguments{
#  \item{con}{Binary connection to be read from.}
#  \item{n}{Number of int's to be read.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of @doubles. Note that R @integers gives
#   NA is as.integer(-2147483648), which is the smallest Java int
#   available.
# }
#
# @author
#
# \seealso{
#   @see "base::readBin".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("readInt", "Java", function(static, con, n=1, ...) {
#   readBin(con=con, what=integer(), size=4, n=n, endian="big");
  bfr <- readBin(con=con, what=integer(), size=1, n=4*n, signed=FALSE);
  bfr <- matrix(bfr, ncol=4, byrow=TRUE);
  bfr[,1] <-   bfr[,1] * 256^3;
  bfr[,2] <-   bfr[,2] * 256^2;
  bfr[,3] <-   bfr[,3] * 256;
  bfr <- rowSums(bfr);
  neg <- (bfr >= 2^31)
  bfr[neg] <- bfr[neg] - 2^32;
  bfr;
}, static=TRUE)




#########################################################################/**
# @RdocMethod readUTF
#
# @title "Reads a Java (UTF-8) formatted string from a connection"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{con}{Binary connection to be read from.}
#  \item{as.character}{If @TRUE, the read string converted,
#     i.e. translated, into an \R character string before
#     returned, otherwise an integer vector representation of
#     the Unicode string is returned.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character string or an @integer @vector.
# }
#
# \details{
#   Currently only 8-bit UTF-8 byte sequences are supported, i.e. plain
#   ASCII sequences, i.e. characters that take up more than one byte are
#   read \emph{incorrectly} without any warnings.
# }
#
# @author
#
# \seealso{
#   @see "base::readBin".
#   @seeclass
# }
#*/#########################################################################
setMethodS3("readUTF", "Java", function(static, con, as.character=TRUE, ...) {
   # BUG:
   nbrOfBytes <- readShort(static, con)
   # Nothing to read?
   if (as.character) {
     if (length(nbrOfBytes) == 0L) return(character(0L))
     readChar(con=con, nchars=nbrOfBytes);
   } else {
     if (length(nbrOfBytes) == 0L) return(integer(0L))
     readBin(con=con, what=integer(), size=1, n=nbrOfBytes)
   }
}, static=TRUE)




#########################################################################/**
# @RdocMethod asByte
#
# @title "Converts a numeric to a Java byte"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{A @numeric @vector.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("asByte", "Java", function(static, x, ...) {
  BYTE.MIN <- -128;
  BYTE.MAX <-  127;
  BYTE.RANGE <- BYTE.MAX-BYTE.MIN + 1;
  x <- (x-BYTE.MIN) %% BYTE.RANGE + BYTE.MIN;
  as.integer(x);
}, static=TRUE)



#########################################################################/**
# @RdocMethod asShort
#
# @title "Converts a numeric to a Java short"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{A @numeric @vector.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("asShort", "Java", function(static, x, ...) {
#  x <- as.integer(x);
  SHORT.MIN <- -32768;
  SHORT.MAX <-  32767;
  SHORT.RANGE <- SHORT.MAX-SHORT.MIN + 1;
  x <- (x-SHORT.MIN) %% SHORT.RANGE + SHORT.MIN;
  as.integer(x);
}, static=TRUE)



#########################################################################/**
# @RdocMethod asInt
#
# @title "Converts an numeric to a Java integer"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{A @numeric @vector.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("asInt", "Java", function(static, x, ...) {
  INT.MIN <- -2147483648;
  INT.MAX <-  2147483647;
  INT.RANGE <- INT.MAX-INT.MIN + 1;
  x <- (x-INT.MIN) %% INT.RANGE + INT.MIN;
  as.integer(x);
}, static=TRUE)



#########################################################################/**
# @RdocMethod asLong
#
# @title "Converts a numeric to a Java long"
#
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{A @numeric @vector.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/#########################################################################
setMethodS3("asLong", "Java", function(static, x, ...) {
#  x <- as.integer(x);
  LONG.MIN <- -9223372036854775808;
  LONG.MAX <-  9223372036854775807;
  LONG.RANGE <- LONG.MAX-LONG.MIN + 1;
  x <- (x-LONG.MIN) %% LONG.RANGE + LONG.MIN;
  as.integer(x);
}, static=TRUE)






############################################################################
# HISTORY:
# 2015-01-13
# o ROBUSTNESS: Now readUTF() returns an empty vector if stream is empty.
# 2005-02-15
# o Added arguments '...' in order to match any generic functions.
# 2005-02-10
# o Wrote remaining Rdoc comments for the asNNN() methods.
# 2003-04-16
# o Updated the Rdoc's to make use of the new Rdoc comments.
# 2003-01-16
# o Added static constants for minimum and maximum values of some of the
#   Java data types, e.g. LONG.MIN and SHORT.MAX.
# o Added executable example code for the Java class. This was mainly
#   to have a some test code that would make sure that bugs are not
#   introduced with new version.
# o BUG FIX: readShort() of the Java class did not return integers (as it
#   could), i.e. is.integer() would return FALSE. Also, readShort()
#   returned 32768 when it read -32768. readInt() did inherit an analogue
#   problem for the smallest possible integer.
# o BUG FIX: Java$writeUTF() and Java$readUTF() was broken because I forgot
#   to update the code to call the write/read methods as static methods as
#   introduced 2002-10-23 (see below).
# 2002-10-23
# o Place all methods in a static class.
# 2002-09-03
# o Cleaned up the code and wrote up the Rdoc comments.
# 2002-08-26
# o Created.
############################################################################
