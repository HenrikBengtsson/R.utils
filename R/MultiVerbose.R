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
# @RdocMethod lapply
#
# @title "Applies a function to each of the Verbose objects"
#
# \description{
#   @get "title".
# }
# 
# @synopsis
#
# \arguments{
#  \item{...}{Objects passed to @see "base::lapply".}
# }
#
# \value{
#   Returns what @see "base::lapply" returns.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/###########################################################################
setMethodS3("lapply", "MultiVerbose", function(X, ...) {
  # To please R CMD check
  this <- X;

  lapply(this$.verboseList, ...);
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
#  \item{...}{Objects to be passed to @seemethod "lapply".}
# }
#
# \value{
#   Returns what @seemethod "lapply" returns.
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
# 2007-11-26
# o BUG FIX: writeRaw() of MultiVerbose returned a list of logicals.  Now
#   it returns TRUE.
# 2007-04-26
# o Created.
############################################################################
