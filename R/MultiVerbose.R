###########################################################################/**
# @RdocClass MultiVerbose
#
# @title "A Verbose class ignoring everything"
#
# \description{
#  @classhierarchy
#
#  @get "title". 
#
#  \emph{This is a trial class}.
# }
#
# @synopsis
#
# \arguments{
#   \item{verboseList}{A @list of @see "Verbose" objects.}
#   \item{...}{Ignored.}
# }
#
# \section{Fields and Methods}{
#  @allmethods  
# }
#
# @examples "../incl/MultiVerbose.Rex"
#
# @author
#
# @keyword programming
# @keyword IO
# @keyword internal
#*/###########################################################################
setConstructorS3("MultiVerbose", function(verboseList=NULL, ...) {
  # Validate arguments
  if (!is.null(verboseList)) {
    for (arg in verboseList) {
      if (!inherits(arg, "Verbose")) {
        throw("One of the elements in argument 'verboseList' is not a Verbose object: ", class(arg)[1]);
      }
    }
  }


  extend(Verbose(...), "MultiVerbose",
    .verboseList = verboseList
  )
})


###########################################################################/**
# @RdocMethod as.list
#
# @title "Gets a list of Verbose objects"
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
#   Returns a @list of @see "Verbose" objects.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("as.list", "MultiVerbose", function(x, ...) {
  # To please R CMD check
  this <- x;
  this$.verboseList;
}, protected=TRUE)



###########################################################################/**
# @RdocMethod writeRaw
#
# @title "Writes to each of the Verbose objects"
#
# \description{
#   @get "title".
# }
# 
# @synopsis
#
# \arguments{
#  \item{...}{Additiona objects to be passed to \code{writeRaw()} for
#     each @see "Verbose" object.}
# }
#
# \value{
#   Returns (invisibly) @TRUE.
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
setMethodS3("writeRaw", "MultiVerbose", function(this, ...) {
  # Write output to each of the Verbose objects
  lapply(this, FUN=writeRaw, ...);
  invisible(TRUE);
})




############################################################################
# HISTORY: 
# 2012-11-29
# o CLEANUP: Dropped lapply() for MultiVerbose.
# o Added as.list() to MultiVerbose.
# 2007-11-26
# o BUG FIX: writeRaw() of MultiVerbose returned a list of logicals.  Now
#   it returns TRUE.
# 2007-04-26
# o Created.
############################################################################
