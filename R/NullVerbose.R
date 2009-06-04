###########################################################################/**
# @RdocClass NullVerbose
#
# @title "A Verbose class ignoring everything"
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
#   \item{...}{Ignored.}
# }
#
# \section{Fields and Methods}{
#  @allmethods  
# }
#
# @examples "../incl/NullVerbose.Rex"
#
# @author
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("NullVerbose", function(...) {
  extend(Verbose(core=FALSE, ...), "NullVerbose")
})


###########################################################################/**
# @RdocMethod writeRaw
# @aliasmethod cat
# @aliasmethod printf
# @aliasmethod enter
# @aliasmethod exit
# @aliasmethod print
# @aliasmethod str
# @aliasmethod summary
# @aliasmethod evaluate
# @aliasmethod newline
# @aliasmethod ruler
# @aliasmethod header
#
# @title "All output methods"
#
# \description{
#   @get "title" of this class ignores their input arguments and outputs
#   nothing.
# }
# 
# @synopsis
#
# \arguments{
#  \item{...}{Ignored.}
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
# Create all methods that Verbose have, but make them ignore everything.
setMethodS3("writeRaw", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("cat", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("printf", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("enter", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("exit", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("print", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("str", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("summary", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("evaluate", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("newline", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("ruler", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);
setMethodS3("header", "NullVerbose", function(...) {invisible(FALSE)}, protected=TRUE);


###########################################################################/**
# @RdocMethod isVisible
#
# @title "Checks if a certain verbose level will be shown or not"
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
#   Returns always @FALSE.
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
setMethodS3("isVisible", "NullVerbose", function(this, ...) {
  FALSE;
})


###########################################################################/**
# @RdocMethod isOn
#
# @title "Checks if the output is on"
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
#   Returns always @FALSE.
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
setMethodS3("isOn", "NullVerbose", function(this, ...) {
  FALSE;
})



############################################################################
# HISTORY: 
# 2005-06-11
# o Now all output methods returns FALSE.
# 2005-06-10
# o Now the core of a NullVerbose object, that is the value of the reference
#   variable, is always FALSE. This makes it  possible to use the reference
#   variable in logical tests, which might speed up code a bit, e.g. 
#   verbose && enter(verbose, "Loading"). It also makes it possible to set
#   verbose to FALSE.
# 2005-06-09
# o Created.
############################################################################
