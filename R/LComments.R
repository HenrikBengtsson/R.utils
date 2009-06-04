###########################################################################/**
# @RdocClass LComments
#
# @title "The LComments class"
#
# \description{
#  @classhierarchy
#
#  @get "title". 
#
#  This class, is almost identical to the super class, except that the
#  constructor has different defaults. 
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
# @author
#
# @keyword programming
# @keyword IO
#*/###########################################################################
setConstructorS3("LComments", function(letter="L", verboseName="log", ...) {
  extend(VComments(letter=letter, verboseName=verboseName), "LComments")
})


############################################################################
# HISTORY: 
# 2005-06-26
# o Class exists just for conveniency.
# o Created.
############################################################################
