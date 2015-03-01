########################################################################/**
# @class list
# @RdocMethod attachLocally
# @alias attachLocally.data.frame
# @alias attachLocally.environment
# @alias attachLocally
#
# @title "Assigns an objects elements locally"
#
# @synopsis
#
# \description{
#  @get "title".
# }
#
# \arguments{
#   \item{object}{An object with named elements such as an @environment,
#     a @list, or a @data.frame.}
#   \item{fields}{A @character @vector specifying elements to be copied.
#      If @NULL, all elements are considered.}
#   \item{excludeFields}{A @character @vector specifying elements not to
#      be copied.  This has higher priority than \code{fields}.}
#   \item{overwrite}{If @FALSE, fields that already exists will not be
#      copied.}
#   \item{envir}{The @environment where elements are copied to.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) a @character @vector of the fields copied.
# }
#
# @examples "../incl/attachLocally.Rex"
#
# @author
#
# \seealso{
#  \code{\link[R.oo:attachLocally.Object]{attachLocally}()} of class Object.
#  @see "base::attach".
# }
#
# @keyword "utilities"
# @keyword "programming"
#*/#########################################################################
setMethodS3("attachLocally", "list", function(object, fields=NULL, excludeFields=NULL, overwrite=TRUE, envir=parent.frame(), ...) {
  if (is.null(fields)) {
    fields <- names(object)
    # Don't try to attach non-named elements
    fields <- setdiff(fields, "")
  }

  # Note: we cannot do 'fields <- setdiff(fields, excludeFields)', because
  # that will also remove duplicates!
  attachedFields <- character(0L)
  for (field in fields) {
    if (field %in% excludeFields)
      next
    if (overwrite || !exists(field, envir=envir, inherits=FALSE)) {
      assign(field, object[[field]], envir=envir)
      # Remove field this way a 2nd field of the same name can
      # be attached (and overwrite the first one)
      object[[field]] <- NULL
      attachedFields <- c(attachedFields, field)
    }
  }

  invisible(attachedFields)
})


setMethodS3("attachLocally", "environment", function(object, fields=NULL, excludeFields=NULL, overwrite=TRUE, envir=parent.frame(), ...) {
  if (is.null(fields)) {
    fields <- ls(envir=object)
  }

  fields <- setdiff(fields, excludeFields)

  attachedFields <- character(0L)
  for (field in fields) {
    if (overwrite || !exists(field, envir=envir, inherits=FALSE)) {
      assign(field, object[[field]], envir=envir)
      attachedFields <- c(attachedFields, field)
    }
  }

  invisible(attachedFields)
})


setMethodS3("attachLocally", "data.frame", function(..., envir=parent.frame()) {
  attachLocally.list(..., envir=envir)
})


############################################################################
# HISTORY:
# 2015-01-12
# o BUG FIX: attachLocally() on an environment would remove the attached
#   fields/variables from that environment.
# 2014-01-26
# o BUG FIX: Now attachLocally() no longer tries to attach elements with
#   an empty name, e.g. list(a=1, 2).
# 2011-09-19
# o Now attachLocally() returns a character vector also of length zero.
#   Before NULL was returned.
# 2005-06-14
# o Added Rdoc comments.
# o Added argument 'excludeFields'. Method now also returns attached fields.
# o Created from attachLocally.Object().
############################################################################
