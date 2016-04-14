getCommonPrefix <- function(strs, suffix=FALSE, ...) {
  # Split strings into character vectors
  nchars <- sapply(strs, FUN=nchar);
  chars <- strsplit(strs, split="");

  # Asked for the suffix?
  if (suffix) {
    chars <- lapply(chars, FUN=rev);
  }

  # Put the characters into a matrix
  naValue <- as.character(NA);
  data <- matrix(naValue, nrow=length(chars), ncol=max(nchars));
  for (kk in seq_along(chars)) {
    cc <- seq_len(nchars[kk]);
    data[kk,cc] <- chars[[kk]];
  }

  # Find first column with different characters
  count <- 0;
  for (cc in seq_len(ncol(data))) {
    uchars <- unique(data[,cc]);
    if (length(uchars) > 1)
      break;
    count <- cc;
  }

  # The common prefix as a character vector
  prefix <- chars[[1]][seq_len(count)];

  # Asked for the suffix?
  if (suffix) {
    prefix <- rev(prefix);
  }

  # The common prefix as a character string
  prefix <- paste(prefix, collapse="");

  prefix;
} # getCommonPrefix()

##############################################################################
# HISTORY:
# 2010-07-05
# o Now getCommonPrefix() allocates a character matrix with NAs, and no
#   longer a logical NA matrix.
# 2006-12-15
# o Created (since stringTree() is broken and this is good enough).
##############################################################################
