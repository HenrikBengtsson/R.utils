########################################################################/**
# @RdocDefault readTableIndex
#
# @title "Reads a single column from file in table format"
#
# @synopsis
#
# \description{
#  @get "title", which can then be used as a index-to-row (look-up) map
#  for fast access to a subset of rows using @see "readTable".
# }
#
# \arguments{
#   \item{indexColumn}{An single @integer of the index column.}
#   \item{colClass}{A single @character specifying the class of the
#     index column.}
#   \item{...}{Arguments passed to @see "readTable" used internally.}
#   \item{verbose}{A @logical or a @see "Verbose" object.}
# }
#
# \value{
#   Returns a @vector.
# }
#
# \examples{\dontrun{
#    # File containing data table to be access many times
#    filename <- "somefile.txt"
#
#    # Create a look-up index
#    index <- readTableIndex(filename)
#
#    # Keys of interest
#    keys <- c("foo", "bar", "wah")
#
#    # Read only those keys and do it fast
#    df <- readTable(filename, rows=match(keys, index))
# }}
#
# @author
#
# \seealso{
#  @see "readTable".
# }
#
# @keyword IO
#*/#########################################################################
setMethodS3("readTableIndex", "default", function(..., indexColumn=1, colClass="character", verbose=FALSE) {
  # Argument 'indexColumn':
  if (is.numeric(indexColumn)) {
    indexColumn <- Arguments$getIndex(indexColumn);
  } else {
    indexColumn <- Arguments$getCharacter(indexColumn);
  }

  # Argument 'verbose':
  verbose <- Arguments$getVerbose(verbose);

  # Create column classes. readTable() will extend this to "NULL" if missing.
  colClasses <- c(rep("NULL", times=indexColumn-1), colClass);
  index <- readTable(..., colClasses=colClasses, defColClass="NULL", verbose=verbose);

  unname(index[[1]]);
})


############################################################################
# HISTORY:
# 2005-11-10
# o BUG FIX: Method was declared static.
# 2005-11-01
# o Created.
############################################################################
