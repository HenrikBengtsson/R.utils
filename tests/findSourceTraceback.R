library("R.utils")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Create two R script files where one source():s the other
# and both lists the traceback of filenames source():d.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
path <- tempdir();
pathnameA <- Arguments$getWritablePathname("foo.R", path=path);
pathnameB <- Arguments$getWritablePathname("bar.R", path=path);

code <- 'cat("BEGIN foo.R\n")';
code <- c(code, 'print(findSourceTraceback());');
code <- c(code, sprintf('source("%s");', pathnameB));
code <- c(code, 'cat("END foo.R\n")');
code <- paste(code, collapse="\n");
cat(file=pathnameA, code);

code <- 'cat("BEGIN bar.R\n")';
code <- c(code, 'x <- findSourceTraceback();');
code <- c(code, 'print(x);');
code <- c(code, 'cat("END bar.R\n")');
code <- paste(code, collapse="\n");
cat(file=pathnameB, code);


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Source the first file
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source(pathnameA, echo=TRUE);
