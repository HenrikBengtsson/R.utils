#########################################################################/**
# @RdocDefault setOption
#
# @title "Sets a option in R"
#
# \description{
#  @get "title" by specifying its name as a @character string.
# }
#
# @synopsis
#
# \arguments{
#   \item{x}{The name of the option to be set.}
#   \item{value}{The new value of the option.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) the previous value of the option.
# }
#
# @author
#
# \seealso{
#  See @see "base::getOption" and "base::options".
# }
#
# @keyword "programming"
#*/######################################################################### 
setMethodS3("setOption", "default", function(x, value, ...) {
  # Get the old option value
  ovalue <- getOption(x);

  # Set the new one
  opts <- list(value);
  names(opts) <- x;
  options(opts);

  invisible(ovalue);
}) # setOption()


############################################################################
# HISTORY:
# 2011-03-10
# o Added setOption().  It should really be in the 'base' package.
############################################################################
