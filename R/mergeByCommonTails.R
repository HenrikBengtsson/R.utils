mergeByCommonTails <- function(strs, collapse="", ...) {
  if (is.null(strs))
    return(NULL);

  strs <- splitByCommonTails(strs);
  prefix <- strs[1,"prefix"]; 
  suffix <- strs[1,"suffix"]; 
  body <- strs[,"body"];

  # Collapse non-empty bodies
  body <- paste(body[nchar(body) > 0], collapse=collapse);

  str <- paste(prefix, body, suffix, sep="");
  str;
} # mergeByCommonTails()


##############################################################################
# HISTORY:
# 2006-12-15
# o Created (since stringTree() is broken and this is good enough).
##############################################################################
