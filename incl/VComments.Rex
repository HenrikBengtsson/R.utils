filename <- system.file("data-ex/exampleVComments.R", package="R.utils")
lines <- readLines(filename)

cat("Code before preprocessing:\n")
displayCode(code=lines, pager="console")

lines <- VComments$compile(lines)

cat("Code after preprocessing:\n")
displayCode(code=lines, pager="console")
