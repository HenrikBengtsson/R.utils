s <- "hello world"
print(toCamelCase(s))  # helloWorld
print(toCamelCase(s, capitalize=TRUE))  # HelloWorld
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))

s <- "GEO Accession"
print(toCamelCase(s))  # gEOAccession
print(toCamelCase(s, preserveSameCase=TRUE))  # geoAccession
print(toCamelCase(s, capitalize=TRUE))  # GEOAccession
print(toCamelCase(s, capitalize=TRUE, preserveSameCase=TRUE))  # GEOAccession
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))
