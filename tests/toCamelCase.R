library("R.utils")

strings <- list(
  "",
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
y0 <- sapply(strings, FUN=function(s) s[1L])
stopifnot(all(y == y0))

# Empty vector
y <- toCamelCase(character(0L))
stopifnot(length(y) == 0L)
y <- toCamelCase(NULL)
stopifnot(length(y) == 0L)

# Missing values
for (preserveSameCase in c(FALSE, TRUE)) {
  y <- toCamelCase(NA_character_, preserveSameCase=preserveSameCase)
  stopifnot(is.na(y))

  y <- toCamelCase(c(NA_character_, NA_character_), preserveSameCase=preserveSameCase)
  stopifnot(all(is.na(y)))

  y <- toCamelCase(c(NA_character_, "hello world", NA_character_), preserveSameCase=preserveSameCase)
  stopifnot(identical(y, c(NA_character_, "helloWorld", NA_character_)))
}

