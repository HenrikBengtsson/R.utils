###########################################################################/**
# @RdocClass VComments
#
# @title "The VComments class"
#
# \description{
#  @classhierarchy
#
#  @get "title". 
# }
#
# @synopsis
#
# \arguments{
#   \item{letter}{The smart letter.}
#   \item{verboseName}{The name of the verbose object.}
#   \item{...}{Not used.}
# }
#
# \section{Fields and Methods}{
#  @allmethods  
# }
#
# \details{
#  The 'v' in VComments stands for 'verbose', because of its relationship
#  to the @see "Verbose" class.
#
#  Here is a list of VComments and the \R code that replaces each of them
#  by the compiler:
#
#  \bold{Constructors}\cr
#  \itemize{
#   \item{\#V0\#}{[<args>] - NullVerbose(<args>)}
#   \item{\#V1\#}{[<args>] - Verbose(<args>)}
#  }
#
#  \bold{Controls}\cr
#  \itemize{
#   \item{\#V=\#}{[<variable>] - Sets the name of the <verbose> object.
#                                Default is 'verbose'.}
#   \item{\#V\^\#}{<threshold> - setThreshold(<verbose>, <threshold>)}
#   \item{\#V?\#}{<expression> - if (isVisible(<verbose>)) \{ <expression> \}}
#   \item{\#V@\#}{<level> - setDefaultLevel(<verbose>, <level>)}
#   \item{\#Vm\#}{<method> <args> - <method>(<verbose>, <args>)}
#  }
#
#  \bold{Enters and exits}\cr
#  \itemize{
#   \item{\#V+\#}{[<message>] - enter(<verbose>, <message>)}
#   \item{\#V-\#}{[<message>] - exit(<verbose>, <message>)}
#   \item{\#V!\#}{[<message>] - pushState(<verbose>)\cr
#                             on.exit(popState(<verbose>))\cr
#                             If <message>, enter(<verbose>, <message>)}
#  }
#
#  \bold{Simple output}\cr
#  \itemize{
#   \item{\#Vn\#}{<ignored> - newline(<verbose>)}
#   \item{\#Vr\#}{<ignored> - ruler(<verbose>)}
#   \item{\#Vt\#}{<ignored> - timestamp(<verbose>)}
#   \item{\#Vw\#}{[<title>] - warnings(<verbose>, <title>)}
#  }
#
#  \bold{Output messages}\cr
#  \itemize{
#   \item{\#Vc\#}{[<message>] - cat(<verbose>, <message>)}
#   \item{\#Ve\#}{<expression> - eval(<verbose>, <expression>)}
#   \item{\#Vh\#}{<message> - header(<verbose>, <message>)}
#   \item{\#Vp\#}{<object> - print(<verbose>, <object>)}
#   \item{\#Vs\#}{<object> - summary(<verbose>, <object>)}
#   \item{\#Vz\#}{<object> - str(<verbose>, <object>)}
#  }
# }
#
# @examples "../incl/VComments.Rex"
#
# @author
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("VComments", function(letter="V", verboseName="verbose", ...) {
  verboseName <- as.character(verboseName);

  extend(SmartComments(letter=letter), "VComments",
    resetVerboseName = verboseName,
    verboseName = verboseName
  )
})



###########################################################################/**
# @RdocMethod reset
#
# @title "Resets a VComments compiler"
#
# \description{
#   @get "title".
# }
# 
# @synopsis
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns nothing.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("reset", "VComments", function(this, ...) {
  NextMethod("reset");
  this$verboseName <- this$resetVerboseName;
})



###########################################################################/**
# @RdocMethod convertComment
#
# @title "Converts a verbose comment to R code"
#
# \description{
#   @get "title".
# }
# 
# @synopsis
#
# \arguments{
#  \item{vcomment}{A vcomment @list structure.}
#  \item{.currLine, .line}{A line number and the line currently processed. 
#      Used for error message and warnings.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns one @character string of \R code.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("convertComment", "VComments", function(this, vcomment, .currLine=NA, .line=NA, ...) {
  cmd <- vcomment$cmd;
  args <- vcomment$args;

  if (is.null(args)) {
    argsStr <- "";
  } else {
    argsStr <- sprintf(", \"%s\"", gsub("\"", "\\\"", args, fixed=TRUE));
  }

  vcmd <- NULL;
  if (cmd == "+") {
    vcmd <- sprintf("enter(<verbose>%s)", argsStr);
  } else if (cmd == "-") {
    vcmd <- sprintf("exit(<verbose>%s)", argsStr);
  } else if (cmd %in% c("0", "1")) {
    clazz <- ifelse(cmd == "1", "Verbose", "NullVerbose");
    if (is.null(args)) {
      vcmd <- sprintf("<verbose> <- %s()", clazz);
    } else {
      vcmd <- sprintf("<verbose> <- %s(%s)", clazz, args);
    }
  } else if (cmd == "=") {
    if (is.null(args)) {
      reset(this);
    } else {
      this$verboseName <- args;
    }
  } else if (cmd == "^") {
    threshold <- as.integer(args);
    if (!is.na(threshold)) {
      vcmd <- sprintf("setThreshold(<verbose>, threshold=%d)", threshold);
    } else {
      throw("Invalid threshold value: ", threshold);
    }
  } else if (cmd == "?") {
    vcmd <- sprintf("if (isVisible(<verbose>)) { capture(<verbose>, %s) }", args);
  } else if (cmd == "@") {
    if (is.na(as.numeric(args))) {
      throw("VComment error: Invalid verbose level on line ", .currLine, ": ", .line);
    }
    vcmd <- sprintf("setDefaultVerboseLevel(<verbose>, %s)", as.double(args));
  } else if (cmd == "!") {
    vcmd <- "pushState(<verbose>); on.exit(popState(<verbose>), add=TRUE)";
    if (!is.null(args))
      vcmd <- sprintf("%s; enter(<verbose>, \"%s\")", vcmd, args);
  } else if (cmd == "c") {
    vcmd <- sprintf("cat(<verbose>%s)", argsStr);
  } else if (cmd == "e") {
    vcmd <- sprintf("evaluate(<verbose>, %s)", args);
  } else if (cmd == "m") {
    method <- gsub("^([^ ]*)([ ]*)(.*)", "\\1", args);
    args <- gsub("^([^ ]*)([ ]*)(.*)", "\\3", args);
    args <- trim(args);
    if (nchar(args) == 0) {
      vcmd <- sprintf("%s(<verbose>)", method);
    } else {
      vcmd <- sprintf("%s(<verbose>, %s)", method, args);
    }
  } else if (cmd == "n") {
    vcmd <- sprintf("newline(<verbose>)");
  } else if (cmd == "p") {
    vcmd <- sprintf("print(<verbose>, %s)", args);
  } else if (cmd == "s") {
    vcmd <- sprintf("summary(<verbose>, %s)", args);
  } else if (cmd == "t") {
    vcmd <- "timestamp(<verbose>)";
  } else if (cmd == "w") {
    if (nchar(args) == 0) {
      vcmd <- "warnings(<verbose>)";
    } else {
      vcmd <- sprintf("warnings(<verbose>, %s)", args);
    }
  } else if (cmd == "z") {
    vcmd <- sprintf("str(<verbose>, %s)", args);
  } else if (cmd == "r") {
    vcmd <- sprintf("ruler(<verbose>)");
  } else if (cmd == "h") {
    vcmd <- sprintf("header(<verbose>, \"%s\")", args);
  } else {
    vcmd <- NA;
  }

  if (!is.null(vcmd)) {
    if (is.na(vcmd)) {
      newLine <- paste("# <?>", .line, "</?>", sep="");
      warning("Unknown VComment on line ", .currLine, ": ", .line);
    } else if (cmd %in% c("0", "1")) {
      newLine <- vcmd;
    } else {
      newLine <- paste("if (<verbose>) { ", vcmd, " }", sep="");
    }
  
    newLine <- gsub("<verbose>", this$verboseName, newLine, fixed=TRUE);
    paste(vcomment$indent, newLine, sep="");
  } else {
    NA;
  }
}, protected=TRUE)




###########################################################################/**
# @RdocMethod validate
#
# @title "Validates the compiled lines"
#
# \description{
#   @get "title"
# }
# 
# @synopsis
#
# \arguments{
#  \item{lines}{A @character @vector of lines of code to validated.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character @vector.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# @keyword programming
#*/###########################################################################
setMethodS3("validate", "VComments", function(this, lines, ...) {
  # Check number of enters and exits.
  pattern <- paste("enter(", this$verboseName, sep="");
  nbrOfEnters <- sum(regexpr(pattern, lines, fixed=TRUE) != -1);
  pattern <- paste("exit(", this$verboseName, sep="");
  nbrOfExits <- sum(regexpr(pattern, lines, fixed=TRUE) != -1);
  if (nbrOfEnters != nbrOfExits) {
    warning("Number of verbose enters and exits do not match: ", 
                                             nbrOfEnters, " != ", nbrOfExits);
  }

  lines;
}, protected=TRUE)


############################################################################
# HISTORY: 
# 2011-02-01
# o ROBUSTNESS: Now using argument 'fixed' (not 'fix') in regexpr() calls.
# 2005-07-07
# o Added output of warnings.
# 2005-06-26
# o Made class and methods non-static, but they can still be used by the
#   static class instance, which then works as a default object.
# 2005-06-23
# o Added reset().
# o Now it is possible to rename the 'verbose' object.
# o Added Rdoc comments.
# 2005-06-22
# o Created.
############################################################################
