###########################################################################/**
# @RdocClass TimeoutException
#
# @title "TimeoutException represents timeout errors"
#
# \description{
#  @classhierarchy
#  
#  @get "title" occurring when a set of R expressions executed did not
#  finish in time.
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Any arguments accepted by @see "Exception"}.
#   \item{cpu, elapsed}{The maximum time the R expressions were allowed
#     to be running before the timeout occurred as measured in CPU time
#     and (physically) elapsed time.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
#
# @author
#
# \seealso{
#   For detailed information about exceptions see @see "Exception".
# }
#
# \keyword{programming}
# \keyword{methods}
# \keyword{error}
#*/########################################################################### 
setConstructorS3("TimeoutException", function(..., cpu=NA, elapsed=NA) {
  extend(Exception(...), "TimeoutException",
    cpu = cpu,
    elapsed = elapsed
  )
})

###########################################################################/**
# @RdocMethod getMessage
#
# @title "Gets the message of the exception"
#
# \description{
#  @get "title".
# }
#
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \value{
#  Returns a @character string.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#
# \keyword{programming}
# \keyword{methods}
# \keyword{error}
#*/###########################################################################  
setMethodS3("getMessage", "TimeoutException", function(this, ...) {
  sprintf("%s [cpu=%ss, elapsed=%ss]", this$.msg, this$cpu, this$elapsed)
})
