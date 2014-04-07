library("R.utils")

strings <- list(
  "hello world"   = c("helloWorld", "HelloWorld", "helloWorld", "HelloWorld"),
  "tcn start"     = c("tcnStart", "TcnStart", "tcnStart", "TcnStart"),
  "GEO Accession" = c("gEOAccession", "GEOAccession", "geoAccession", "GEOAccession")
)

for (s in names(strings)) {
  printf("Original: %s\n", sQuote(s))

  y <- toCamelCase(s)
  printf("Camel case: %s\n", sQuote(y))
  stopifnot(y == strings[[s]][1L])

  y <- toCamelCase(s, capitalize=TRUE)
  printf("Capitalized camel case: %s\n", sQuote(y))
  stopifnot(y == strings[[s]][2L])

  y <- toCamelCase(s, preserveSameCase=TRUE)
  printf("Capitalized camel case without same case preserved: %s\n", sQuote(y))
  stopifnot(y == strings[[s]][3L])

  y <- toCamelCase(s, capitalize=TRUE, preserveSameCase=TRUE)
  printf("Capitalized camel case with same case preserved: %s\n", sQuote(y))
  stopifnot(y == strings[[s]][4L])

  cat("\n")
}

# Vectorized
s <- names(strings)
y <- toCamelCase(s)
stopifnot(length(y) == length(s))
stopifnot(all(y == sapply(strings, FUN=function(s) s[1L])))

# Empty vector
y <- toCamelCase(character(0L))
stopifnot(length(y) == 0L)
y <- toCamelCase(NULL)
stopifnot(length(y) == 0L)
