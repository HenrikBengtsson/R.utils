library("R.utils")


s <- "hello world"
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))
y <- toCamelCase(s)
stopifnot(y == "helloWorld")
y <- toCamelCase(s, capitalize=TRUE)
stopifnot(y == "HelloWorld")


s <- "tcn start"
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))
y <- toCamelCase(s)
stopifnot(y == "tcnStart")
y <- toCamelCase(s, capitalize=TRUE)
stopifnot(y == "TcnStart")


s <- "GEO Accession"
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))
y <- toCamelCase(s)
stopifnot(y == "gEOAccession")
y <- toCamelCase(s, preserveSameCase=TRUE))
stopifnot(y == "geoAccession")
y <- toCamelCase(s, capitalize=TRUE))
stopifnot(y == "GEOAccession")
y <- toCamelCase(s, capitalize=TRUE, preserveSameCase=TRUE))
stopifnot(y == "GEOAccession")
