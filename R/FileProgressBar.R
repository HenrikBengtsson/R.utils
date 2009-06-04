###########################################################################/**
# @RdocClass FileProgressBar
#
# @title "A progress bar that sets the size of a file accordingly"
#
# \description{
#  @classhierarchy
# }
# 
# @synopsis
#
# \arguments{
#   \item{pathname}{The pathname of the output file.}
#   \item{...}{Other arguments accepted by the @see "ProgressBar" 
#     constructor.}
# }
#
# \section{Fields and Methods}{
#  @allmethods
# }
# 
# \details{
#   @get "title". This class useful to check the progress of a batch job by
#   just querying the size of a file, for instance, via ftp.
# }
#
# \examples{
#  \dontrun{
#   @include "../incl/FileProgressBar.Rex"
#  }
# }
#
# @author
#*/###########################################################################
setConstructorS3("FileProgressBar", function(pathname=NULL, ...) {
  this <- extend(ProgressBar(..., newlineWhenDone=FALSE), "FileProgressBar", 
    pathname=as.character(pathname)
  )

  if (!is.null(pathname)) {
    # Resets the progress bar and creates the file
    reset(this);
  }

  this;
})


#########################################################################/**
# @RdocMethod update
#
# @title "Updates file progress bar"
# 
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#  \item{visual}{If @TRUE, the file is resized according to the value of
#    the progress bar, otherwise not.}
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
#*/######################################################################### 
setMethodS3("update", "FileProgressBar", function(object, visual=TRUE, ...) {
  # To please R CMD check...
  this <- object;

  if (visual) {
    # Create bar string
    s <- getBarString(this);
  
    # Cut initial character representing value zero off.
    s <- substring(s, 2);
  
    # Creates an empty file
    cat(file=this$pathname, s);
  }
})




#########################################################################/**
# @RdocMethod remove
#
# @title "Removes the progress file for a file progress bar"
# 
# @synopsis
#
# \description{
#   @get "title".
# }
#
# \arguments{
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns (invisibly) @TRUE, if there is no progress file afterwards. 
#   Otherwise, @FALSE is returned.
# }
#
# @author
#
# \seealso{
#   @seeclass
# }
#*/######################################################################### 
setMethodS3("remove", "FileProgressBar", function(object, ...) {
  # To please R CMD check...
  this <- object;

  if (isFile(this$pathname))
    file.remove(this$pathname);

  invisible(isFile(this$pathname));
})



############################################################################
# HISTORY:
# 2005-09-06
# o Added remove() method to remove progress files.
# 2005-03-01
# o Update constructor for new argument 'newlineWhenDone' in superclass.
# 2004-10-21
# o Added Rdoc comments.
# 2003-07-10
# o Created. After adding update() to superclass ProgressBar this class
#   does not have to do much.
############################################################################

