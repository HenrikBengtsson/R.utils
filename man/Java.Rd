%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  Java.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{Java}
\docType{class}
\alias{Java}


\title{Static class for Java related methods}

\description{
 Package:  R.utils \cr
\bold{Class Java}\cr

\code{\link[R.oo]{Object}}\cr
\code{~~|}\cr
\code{~~+--}\code{Java}\cr

\bold{Directly known subclasses:}\cr
\cr

public static class \bold{Java}\cr
extends \link[R.oo]{Object}\cr



 Static class that provides methods for reading and writing Java data types.
 Currently the following data types are supported: byte, short and int.
 R character strings can be written as UTF-8 formatted strings, which can
 be read by Java. Currently on Java String's that contain ASCII characters
 can be imported into \R. The reason for this is that other characters are
 translated into non-eight bits data, e.g. 16- and 24-bits, which the
 readChar() method currently does not support.\cr

 Furthermore, the Java class defines some static constants describing the
 minimum and maximum value of some of the common Java data types:
   \code{BYTE.MIN}, \code{BYTE.MAX}
   \code{SHORT.MIN}, \code{SHORT.MAX}
   \code{INT.MIN}, \code{INT.MAX}
   \code{LONG.MIN}, and \code{LONG.MAX}.
}

\usage{
Java()
}

\section{Fields and Methods}{
 \bold{Methods:}\cr
\tabular{rll}{
 \tab \code{\link[R.utils:asByte.Java]{asByte}} \tab Converts a numeric to a Java byte.\cr
 \tab \code{\link[R.utils:asInt.Java]{asInt}} \tab Converts an numeric to a Java integer.\cr
 \tab \code{\link[R.utils:asLong.Java]{asLong}} \tab Converts a numeric to a Java long.\cr
 \tab \code{\link[R.utils:asShort.Java]{asShort}} \tab Converts a numeric to a Java short.\cr
 \tab \code{\link[R.utils:readByte.Java]{readByte}} \tab Reads a Java formatted byte (8 bits) from a connection.\cr
 \tab \code{\link[R.utils:readInt.Java]{readInt}} \tab Reads a Java formatted int (32 bits) from a connection.\cr
 \tab \code{\link[R.utils:readShort.Java]{readShort}} \tab Reads a Java formatted short (16 bits) from a connection.\cr
 \tab \code{\link[R.utils:readUTF.Java]{readUTF}} \tab Reads a Java (UTF-8) formatted string from a connection.\cr
 \tab \code{\link[R.utils:writeByte.Java]{writeByte}} \tab Writes a byte (8 bits) to a connection in Java format.\cr
 \tab \code{\link[R.utils:writeInt.Java]{writeInt}} \tab Writes a integer (32 bits) to a connection in Java format.\cr
 \tab \code{\link[R.utils:writeShort.Java]{writeShort}} \tab Writes a short (16 bits) to a connection in Java format.\cr
 \tab \code{\link[R.utils:writeUTF.Java]{writeUTF}} \tab Writes a string to a connection in Java format (UTF-8).\cr
}


 \bold{Methods inherited from Object}:\cr
$, $<-, [[, [[<-, as.character, attach, attachLocally, clearCache, clearLookupCache, clone, detach, equals, extend, finalize, getEnvironment, getFieldModifier, getFieldModifiers, getFields, getInstantiationTime, getStaticInstance, hasField, hashCode, ll, load, objectSize, print, save


}

\examples{
pathname <- tempfile()

# Open the temporary file for writing
out <- file(pathname, open="wb")
b <- -128:127
Java$writeByte(out, b)
s <- -32768:32767
Java$writeShort(out, s)
i <- c(-2147483648, -2147483647, -1, 0, +1, 2147483646, 2147483647);
Java$writeInt(out, i)
str <- c("This R string was written (using the UTF-8 format) using",
         "the static methods of the Java class in the R.io package.")
str <- paste(str, collapse="\n")
Java$writeUTF(out, str)
close(out)

# Open the temporary file for reading
inn <- file(pathname, open="rb")

bfr <- Java$readByte(inn, n=length(b))
cat("Read ", length(bfr), " bytes.\n", sep="")
if (!identical(bfr, b))
  throw("Failed to read the same data that was written.")

bfr <- Java$readShort(inn, n=length(s))
cat("Read ", length(bfr), " shorts.\n", sep="")
if (!identical(bfr, s))
  throw("Failed to read the same data that was written.")

bfr <- Java$readInt(inn, n=length(i))
cat("Read ", length(bfr), " ints.\n", sep="")
if (!identical(bfr, i))
  throw("Failed to read the same data that was written.")

bfr <- Java$readUTF(inn)
cat("Read ", nchar(bfr), " UTF characters:\n", "'", bfr, "'\n", sep="")

close(inn)

file.remove(pathname)
}

\author{Henrik Bengtsson}
\keyword{classes}
