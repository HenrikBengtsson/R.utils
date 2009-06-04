###########################################################################/**
# @RdocClass SmartComments
#
# @title "Abstract class SmartComments"
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
#   \item{letter}{A single @character.}
#   \item{...}{Not used.}
# }
#
# \section{Fields and Methods}{
#  @allmethods  
# }
#
# \details{
#  A "smart" source-code comment is an \R comment, which start with a '\#',
#  but is followed by a single letter, then a single symbol and a second
#  '\#' and then an option character string, and there must not be any code
#  before the comment on the same line. In summary, a smart comment line
#  has format: \code{<white spaces>\#<letter><symbol>\# <some text>}.
#
#  Example code with two smart comments (VComments):
#  \preformatted{
#    x <- 2
#    \#V1\# threshold=-1
#    \#Vc\# A v-comment log message
#    cat("Hello world")
#  }
#  which after compilation becomes
#  \preformatted{
#    x <- 2
#    verbose <- Verbose(threshold=-1)
#    if (verbose) { cat(verbose, "A v-comment log message"); }
#    cat("Hello world")
#  }
# }
#
# @author
#
# \seealso{
#   @see "VComments".
# }
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("SmartComments", function(letter=NA, ...) {
  letter <- as.character(letter);
  extend(Object(), "SmartComments",
    resetLetter = letter,
    letter = letter
  )
})



###########################################################################/**
# @RdocMethod reset
#
# @title "Resets a SmartComments compiler"
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
setMethodS3("reset", "SmartComments", function(this, ...) {
  this$letter <- this$resetLetter;
})



###########################################################################/**
# @RdocMethod parse
#
# @title "Parses one single smart comment"
#
# \description{
#   @get "title".
# }
# 
# @synopsis
#
# \arguments{
#  \item{lines}{A @character @vector of lines of code containing smart 
#                                                           comments (only).}
#  \item{currLine}{The line number on which to smart smart comment begins.}
#  \item{...}{Not used.}
#  \item{letter}{The letter of the smart comment. Available to avoid lookup
#     at every line.}
#  \item{pattern}{The pattern of the smart comment.}
#  \item{letter}{The letter of the smart comment. Available to avoid lookup
#     at every line.}
# }
#
# \value{
#   Returns a @list structure.
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
setMethodS3("parse", "SmartComments", function(this, lines, currLine, ..., letter=this$letter, pattern=NULL) {
  if (is.null(pattern))
    pattern <- paste("^([ \t]*)(#", letter, ")(.)(#)(.*)", sep="");

  # Get next line
  line <- lines[currLine];

  if (is.na(line))
    return(NULL);
  if (regexpr(pattern, line) == -1)
    return(NULL);

  indent <- gsub(pattern, "\\1", line);
  cmd <- gsub(pattern, "\\3", line);
  args <- gsub(pattern, "\\5", line);
  args <- trim(args);
  multiline <- (regexpr(" \\\\$", args) != -1);

  currLine <- currLine + 1;

  # Peek ahead on the next lines to get the rest of 'args'
  while(multiline) {
    # Remove trailing ' \'
    args <- gsub(" \\\\$", "", args);
    args <- trim(args);

    vcom  <- gsub(pattern, "\\2", lines[currLine]);
    if (vcom != paste("#", letter, sep=""))
      throw("Syntax error: Following line is not a VComment: ", lines[currLine]);
    args2 <- gsub(pattern, "\\5", lines[currLine]);
    lines[currLine] <- NA;
    args2 <- trim(args2);
    multiline <- (regexpr(" \\\\$", args2) != -1);
    args <- paste(args, args2, sep=" ");
    args <- trim(args);

    currLine <- currLine + 1;
  }

  if (nchar(args) == 0)
    args <- NULL;
  list(indent=indent, cmd=cmd, args=args, currLine=currLine);
}, protected=TRUE)




###########################################################################/**
# @RdocMethod compile
#
# @title "Preprocess a vector of code lines"
#
# \description{
#   @get "title".
# }
# 
# @synopsis
#
# \arguments{
#  \item{lines}{A @character @vector of lines of code to be preprocessed.}
#  \item{trim}{If @TRUE, trailing whitespace characters are removed from 
#     every line of code, and contigous empty lines are replaced with a
#     single empty line.}
#  \item{excludeComments}{If @TRUE, comments in the input lines, that is,
#     also smart comments, are excluded.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @character @vector.
# }
#
# \details{
#  When called, the compiler is reset.
#
#  Just before trimming is done, the validate() method is called. In the
#  current class, this does nothing, but can be overridden in subclasses.
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
setMethodS3("compile", "SmartComments", function(this, lines, trim=TRUE, excludeComments=FALSE, ...) {
  # Reset the compiler
  reset(this);

  if (length(lines) == 0)
    return(NULL);

  # 1. Get all comments-only lines
  pattern <- "^[ \t]*#";
  isComments <- (regexpr(pattern, lines) != -1);
  idxComments <- which(isComments);
  if (length(idxComments) == 0)
    return(lines);

  if (excludeComments) {
    lines <- lines[!isComments];
  } else {
    comments <- lines[idxComments];
    
    # 2. Among these, check for "Smart" comments.
    letter <- this$letter;
    pattern <- paste("^([ \t]*)(#", letter, ")(.)(#)(.*)", sep="");
    idxSmartComments <- which(regexpr(pattern, comments) != -1);
    if (length(idxSmartComments) == 0)
      return(lines);
  
    # 3. Parse the "Smart" comments
    smartComments <- comments[idxSmartComments];
  
    currLine <- 1;
    while (currLine <= length(smartComments)) {
      smartComment <- parse(this, smartComments, currLine, letter=letter, pattern=pattern);
      if (is.null(smartComment)) {
        throw("Internal error!");
        currLine <- currLine + 1;
        next;
      }
  
      newLine <- convertComment(this, smartComment, .currLine=currLine, .line=trim(smartComments[currLine]));
   
      smartComments[currLine] <- newLine;
   
      nextLine <- smartComment$currLine;
      if (nextLine > currLine+1)
        smartComments[(currLine+1):(nextLine-1)] <- NA;
      currLine <- nextLine;
    } # while()
  
  
    # Update all comment lines
    comments[idxSmartComments] <- smartComments;
  
    # Update all lines
    lines[idxComments] <- comments;
  
    # Exclude removed lines, i.e. now NAs
    lines <- lines[!is.na(lines)];
  }

  lines <- validate(this, lines);

  if (trim) {
    lines <- gsub("[ \t]*$", "", lines);
    empty <- (nchar(lines) == 0);
    multi <- (diff(c(TRUE, empty)*1) == 0)
    keep <- !(empty & multi);
    lines <- lines[keep];
  }

  lines;
})




###########################################################################/**
# @RdocMethod convertComment
#
# @title "Converts a single smart comment to R code"
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
#   Should return single @character of valid \R code.
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
setMethodS3("convertComment", "SmartComments", abstract=TRUE, protected=TRUE);




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
setMethodS3("validate", "SmartComments", function(this, lines, ...) {
  lines;
}, protected=TRUE)



############################################################################
# HISTORY: 
# 2005-09-04
# o BUG FIX: Smart comments preceeded by TABs would not be recognized.
# 2005-06-26
# o Made class and methods non-static, but they can still be used by the
#   static class instance, which then works as a default object.
# 2005-06-23
# o Added reset().
# o Added Rdoc comments.
# 2005-06-22
# o Created.
############################################################################
