###########################################################################/**
# @RdocClass Assert
#
# @title "The Assert class"
#
# \description{
#  @classhierarchy
# }
# 
# @synopsis
#
# \arguments{
#   \item{...}{Not used.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
# 
# @author
#*/###########################################################################
setConstructorS3("Assert", function(...) {
  extend(Object(), "Assert"
  )
})


#########################################################################/**
# @RdocMethod isScalar
#
# @title "Static method asserting thatan object is a single value"
# 
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{Object to be checked.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE, or throws an exception.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/######################################################################### 
setMethodS3("isScalar", "Assert", function(static, x, ...) {
  name <- as.character(substitute(x));
  if (length(x) != 1)
    throw("Argument '", name, "' is not a scalar.");
  if (is.matrix(x))
    throw("Argument '", name, "' is not a scalar.");
  invisible(TRUE);
}, static=TRUE)



#########################################################################/**
# @RdocMethod isVector
#
# @title "Static method asserting thatan object is a vector"
# 
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{Object to be checked.}
#  \item{length}{Required length. If @NULL, this is not checked.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE, or throws an exception.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/######################################################################### 
setMethodS3("isVector", "Assert", function(static, x, length=NULL, ...) {
  name <- as.character(substitute(x));
  if (!is.vector(x))
    throw("Argument '", name, "' is not a vector.");
  if (!is.null(length) && length(x) != length)
    throw("Argument '", name, "' is not a vector of length ", length, ": ", length(x));
  invisible(TRUE);
}, static=TRUE)



#########################################################################/**
# @RdocMethod isMatrix
#
# @title "Static method asserting thatan object is a matrix"
# 
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{x}{Object to be checked.}
#  \item{nrow}{Required number of rows. If @NULL, this is not checked.}
#  \item{ncol}{Required number of columns. If @NULL, this is not checked.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE, or throws an exception.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/######################################################################### 
setMethodS3("isMatrix", "Assert", function(static, x, nrow=NULL, ncol=NULL, ...) {
  name <- as.character(substitute(x));
  if (!is.matrix(x))
    throw("Argument '", name, "' is not a matrix.");

  if (!is.null(nrow) && nrow(x) != nrow) {
    throw("Argument '", name, "' is not a matrix with ", nrow, " rows: ", nrow(x));
  }

  if (!is.null(ncol) && ncol(x) != ncol) {
    throw("Argument '", name, "' is not a matrix with ", ncol, " columns: ", ncol(x));
  }

  invisible(TRUE);
}, static=TRUE)


#########################################################################/**
# @RdocMethod inherits
#
# @title "Static method asserting that an object inherits from of a certain class"
# 
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{object}{Object to be checked.}
#  \item{class}{Name of class.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE, or throws an exception.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/######################################################################### 
setMethodS3("inherits", "Assert", function(static, object, class, ...) {
  name <- as.character(substitute(x));
  if (!inherits(object, class))
    throw("Argument '", name, "' does not inherit from class '", class, "': ", paste(class(class), collapse=", "));
  invisible(TRUE);
}, static=TRUE)



#########################################################################/**
# @RdocMethod check
#
# @title "Static method asserting that a generic condition is true"
# 
# \description{
#   @get "title".
# }
#
# @synopsis
#
# \arguments{
#  \item{condition}{A condition that should return @TRUE if ok, or something
#   else if not.}
#  \item{message}{The error message to be reported on failure. If @NULL,
#   a message is automatically created.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE, or throws an exception.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/######################################################################### 
setMethodS3("check", "Assert", function(static, condition, message=NULL, ...) {
  if (!identical(condition, TRUE)) {
    if (is.null(message)) {
      message <- paste(as.character(substitute(condition)), collapse=" ");
      message <- paste("A condition was not met: ", message, sep="");
    }
    throw(message);
  }
  invisible(TRUE);
}, static=TRUE)


############################################################################
# HISTORY:
# 2005-05-31
# o Added Rdoc comments.
# 2004-02-12
# o Made the dimension arguments for isVector() and isMatrix() optional.
# 2003-12-10
# o Added inherits().
# 2003-12-08
# o Added check().
# 2003-12-07
# o Created.
############################################################################
