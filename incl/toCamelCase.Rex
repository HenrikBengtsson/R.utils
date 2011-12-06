s <- "hello world"
print(toCamelCase(s))  # helloWorld
print(toCamelCase(s, capitalize=TRUE))  # HelloWorld
stopifnot(toCamelCase(s) == toCamelCase(toCamelCase(s)))

