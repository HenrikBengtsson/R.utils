# Parses a regular expression and replaces sets to ASCII sets.
setMethodS3("toAsciiRegExprPattern", "character", function(pattern, ...) {
  bfr <- strsplit(pattern, split="")[[1]];
  bfr2 <- c();
  state <- "plain";
  while(length(bfr) > 0) {
    ch <- bfr[1];
    bfr <- bfr[-1];
    if (state == "plain") {
      if (ch == "[") {
        set <- c();
        state <- "set";
      } else {
        bfr2 <- c(bfr2, ch);
      }
    } else if (state == "set") {
      if (ch == "]") {
        # Expand set
        set2 <- c();
        ch <- NA;
        setState <- "plain";
        while (length(set) > 0) {
          prevCh <- ch;
          ch <- set[1];
          set <- set[-1];
#print(list(setState=setState, ch=ch, prevCh=prevCh));
          if (setState == "plain") {
            if (ch == "-") {
              if (is.na(prevCh)) {
                set2 <- c(set2, ch);
              } else {
                from <- prevCh;
                setState <- "range";
              }
            }
          } else if (setState == "range") {
            to <- ch;
            allLetters <- c(base::letters, base::LETTERS);
            if (all(c(from, to) %in% allLetters)) {
              from <- match(from, allLetters);
              to <- match(to, allLetters);
              set2 <- c(set2, allLetters[from:to]);
            } else {
              set2 <- c(set2, from, "-", to);
            }
            setState <- "plain";
          }
        } # while (length(set) > 0)
        bfr2 <- c(bfr2, "[", set2, "]");
        state <- "plain";
      } else {
        set <- c(set, ch);
      }
    }
  }
  pattern <- paste(bfr2, collapse="");
  pattern;
})


############################################################################
# HISTORY:
# 2008-06-12
# o Created.
############################################################################
