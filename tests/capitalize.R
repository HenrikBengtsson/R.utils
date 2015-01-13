library("R.utils")

words <- strsplit("Hello wOrld", " ")[[1]];
cat(paste(toupper(words), collapse=" "), "\n")      # "HELLO WORLD"
cat(paste(tolower(words), collapse=" "), "\n")      # "hello world"
cat(paste(capitalize(words), collapse=" "), "\n")   # "Hello WOrld"
cat(paste(decapitalize(words), collapse=" "), "\n") # "hello wOrld"

# Sanity checks
stopifnot(paste(toupper(words), collapse=" ") == "HELLO WORLD")
stopifnot(paste(tolower(words), collapse=" ") == "hello world")
stopifnot(paste(capitalize(words), collapse=" ") == "Hello WOrld")
stopifnot(paste(decapitalize(words), collapse=" ") == "hello wOrld")

# Empty character vector
s <- character(0L)
stopifnot(identical(capitalize(s), s))
stopifnot(identical(decapitalize(s), s))

# Empty string
s <- ""
stopifnot(identical(capitalize(s), s))
stopifnot(identical(decapitalize(s), s))

s <- NA_character_
stopifnot(identical(capitalize(s), s))
stopifnot(identical(decapitalize(s), s))

s <- c(NA_character_, "Hello wOrld")
y <- capitalize(s)
print(y)
y <- decapitalize(s)
print(y)

