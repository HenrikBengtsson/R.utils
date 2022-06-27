pathname <- system.file("NEWS.md", package="R.utils");
n <- countLines(pathname);
n2 <- length(readLines(pathname));
stopifnot(n == n2);
