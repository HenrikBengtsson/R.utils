splitByCommonTails <- function(strs, ...) {
  names <- names(strs);

  prefix <- getCommonPrefix(strs);
  suffix <- getCommonPrefix(strs, suffix=TRUE);

  # Cut out the prefix
  body <- substring(strs, nchar(prefix)+1);

  # Cut out the suffix
  body <- substring(body, 1, nchar(body)-nchar(suffix));

  # Special case
  if (all(body == "")) {
    suffix <- "";
  }

  strs <- lapply(body, FUN=function(s) {
    c(prefix, s, suffix);
  })

  strs <- unlist(strs, use.names=FALSE);
  strs <- matrix(strs, ncol=3, byrow=TRUE);
  colnames(strs) <- c("prefix", "body", "suffix");
  rownames(strs) <- names;

  strs;
} # splitByCommonTails()


##############################################################################
# HISTORY:
# 2006-12-15
# o Created (since stringTree() is broken and this is good enough).
##############################################################################
