setMethodS3("toFileListTree", "character", function(x, depth=-1, dirsFirst=TRUE, ...) {
  if (length(x) == 0 || depth == 0)
    return();

  pattern <- "^([^/\\]*[/\\])(.*)";
  heads <- gsub(pattern, "\\1", x);
  tails <- gsub(pattern, "\\2", x);

  isLeave <- (tails == x);
  if (sum(isLeave) > 0) {
    leaves <- heads[isLeave];
    class(leaves) <- "FileListTree";
    leaves <- list(leaves);
    names(leaves) <- ".";
    heads <- heads[!isLeave];
    tails <- tails[!isLeave];
  } else {
    leaves <- NULL;
  }

  # Then children
  uheads <- sort(unique(heads));
  tailOutput <- vector("list", length(uheads));
  names(tailOutput) <- uheads;
  for (head in uheads) {
    idxs <- which(heads == head);
    tree <- toFileListTree(tails[idxs], depth=depth-1, dirsFirst=dirsFirst, ...);
    tailOutput[[head]] <- tree;
  }

  if (dirsFirst) {
    output <- c(tailOutput, leaves);
  } else {
    output <- c(leaves, tailOutput);
  }

  class(output) <- "FileListTree";
  output;
}, private=TRUE)


setMethodS3("pasteTree", "FileListTree", function(x, indent="  ", nodeStr="  ", childStr="+-", collapse=NULL, .totalIndent="", ...) {
  if (length(x) == 0)
    return();

  s <- c();

  if (!is.list(x)) {
    x <- paste(.totalIndent, childStr, x, sep="");
    s <- c(s, x);
    if (!is.null(collapse))
      s <- paste(s, collapse=collapse);
    return(s);
  }

  .nextTotalIndent <- paste(indent, .totalIndent, sep="");

  names <- names(x);
  for (kk in seq_along(x)) {
    values <- x[[kk]];
    name <- names[kk];
    if (name != ".")
      s <- c(s, paste(.totalIndent, nodeStr, name, sep=""));
    s <- c(s, pasteTree(values, indent=indent, .totalIndent=.nextTotalIndent, ...));
  }

  if (!is.null(collapse))
    s <- paste(s, collapse=collapse);

  s;
}, private=TRUE)


setMethodS3("cat", "FileListTree", function(x, collapse="\n", ...) {
  s <- pasteTree(x, ..., collapse=collapse);
  cat(s, collapse=collapse);
  invisible(s);
}, private=TRUE)



############################################################################
# HISTORY:
# 2007-08-27
# o Created for the purpose of listing directories in a nice way.
############################################################################
