# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: Treat zero-length paths/pathnames specially?
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
.getPathIfEmpty <- function(pathname, where=NULL) {
  # Nothing to do?
  if (length(pathname) > 0L) return(pathname);

  onEmptyPath <- getOption("R.utils::onEmptyPath", ".");

  # Treat as the current working directory?  (Backward compatibility)
  if (onEmptyPath == ".")
    return(".");

  # Warning or error?
  if (is.element(onEmptyPath, c("warning", "error"))) {
    if (is.null(where)) {
      msg <- "Argument 'pathname' is NULL.";
    } else {
      msg <- sprintf("Argument 'pathname' of %s is NULL.", where);
    }
    if (onEmptyPath == "error") throw(msg);
    warning(msg);
  }

  pathname;
} # .getPathIfEmpty()


############################################################################
# HISTORY:
# 2015-02-01
# o Moved from zzz.R.
############################################################################
