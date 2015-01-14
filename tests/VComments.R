library("R.utils")

opager <- options(pager=mpager)

filename <- system.file("data-ex/exampleVComments.R", package="R.utils")
lines <- readLines(filename)

cat("Code before preprocessing:\n")
displayCode(code=lines)

lines <- VComments$compile(lines)

cat("Code after preprocessing:\n")
displayCode(code=lines)

options(opager)
